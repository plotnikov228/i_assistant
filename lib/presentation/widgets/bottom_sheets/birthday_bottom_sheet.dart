import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:i_assistant/domain/entities/task/task.dart';

import 'package:i_assistant/presentation/resources/app_colors.dart';
import 'package:i_assistant/presentation/resources/app_styles.dart';
import 'package:i_assistant/presentation/widgets/buttons/custom_button.dart';
import 'package:i_assistant/presentation/widgets/custom_switcher.dart';
import 'package:i_assistant/presentation/widgets/remind_container.dart';
import 'package:i_assistant/presentation/widgets/text_fields/custom_text_field.dart';
import 'package:i_assistant/utils/size_utils.dart';
import 'package:intl/intl.dart';

import '../dialogs/date_picker_dialog.dart';

class BirthdayBottomSheet extends StatefulWidget {
  final DateTime? dateTime;
  const BirthdayBottomSheet({super.key,  this.dateTime});

  @override
  State<BirthdayBottomSheet> createState() => _BirthdayBottomSheetState();
}

class _BirthdayBottomSheetState extends State<BirthdayBottomSheet> {
  final nameController = TextEditingController();
  DateTime? dateTime;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dateTime = widget.dateTime;
  }

  final descriptionController = TextEditingController();
  DateTime? dateTimeRemind;

  bool validate() {
    return nameController.text.isNotEmpty &&  dateTime !=null;
  }

  @override
  Widget build(BuildContext context) {
    final bottom = MediaQuery.of(context).viewInsets.bottom;
    return Padding(
      padding: EdgeInsets.only(bottom: bottom),

      child: SizedBox(
        height: size.height * 0.75,
        width: size.width,
        child: Material(
          elevation: 0,
          color: Colors.transparent,
          child: Container(

            decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(40), topRight: Radius.circular(40))),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    height: 5,
                    width: 84,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: AppColors.mediumGrey),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                              'assets/images/svg/calendar.svg',
                              height: 24,
                              width: 24,
                              color: AppColors.blue,

                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            GestureDetector(
                              onTap: () {
                                showDialog(
                                    context: context,
                                    builder: (_) {
                                      return Center(
                                        child: CustomDatePickerDialog(
                                          initialDate: dateTime,
                                        ),
                                      );
                                    }).then((value) {
                                  setState(() {
                                    dateTime = value;
                                  });
                                });
                              },
                              child: Text(
                                dateTime == null ?  'Выбрать день' : DateFormat('dd.MM.yyyy').format(dateTime!),
                                style: AppStyles.bodyBlackBold
                                    .copyWith(color: AppColors.blue),
                              ),
                            ),
                          ],
                        ),
                        CustomTextField(

                          onChanged: (v) {
                            setState(() {

                            });
                          },
                            controller: nameController,
                            hint: 'День рождения',
                            maxLength: 20,
                            textStyle:
                                AppStyles.mediumHead.copyWith(color: AppColors.black)),
                        CustomTextField(
                            controller: descriptionController,
                            onChanged: (_) {
                              setState(() {

                              });
                            },
                            hint: 'Введите комментарий',
                            maxLength: 300,
                            minLines: 4,
                            maxLines: 4,
                            textStyle: AppStyles.body.copyWith(color: AppColors.black))
                      ],
                    ),
                  ),
                ),
                if(bottom <= 0)
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      RemindContainer(
                        initialDateTime: dateTimeRemind,
                        onModeSwitch: (_) {
                          if(!_) {
                            dateTimeRemind=null;
                          }
                        },
                        onSwitch: (_) {
                          dateTimeRemind = _;
                        },
                      ),
                      Padding(padding: const EdgeInsets.all(20),
                      child: Row(

                        children: [
                          Expanded(
                            child: CustomButton(title: 'Отмена', onTap: (){
                              Navigator.of(context, rootNavigator: true).pop();
                            },
                            bg: AppColors.white,
                              textColor: AppColors.black,
                            ),
                          ),
                          const SizedBox(width: 20,),
                          Expanded(
                            child: CustomButton(title: 'Сохранить', active: validate(), onTap: validate() ? () {
                              
                              final birthday = Task(id: -1, dateTime: dateTime!, name: nameController.text, comment: descriptionController.text, remindDateTime: dateTimeRemind, selected: false);
                              Navigator.of(context, rootNavigator: true).pop(birthday);

                            } : null,
                            textColor: !validate() ? Colors.black : null,
                            ),
                          )
                        ],
                      ),
                      ),
                      const SizedBox(height: 10,)
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
