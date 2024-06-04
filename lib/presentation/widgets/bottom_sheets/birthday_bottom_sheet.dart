import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:i_assistant/presentation/resources/app_colors.dart';
import 'package:i_assistant/presentation/resources/app_styles.dart';
import 'package:i_assistant/presentation/widgets/buttons/custom_button.dart';
import 'package:i_assistant/presentation/widgets/custom_switcher.dart';
import 'package:i_assistant/presentation/widgets/text_fields/custom_text_field.dart';
import 'package:i_assistant/utils/size_utils.dart';
import 'package:intl/intl.dart';

import '../dialogs/date_picker_dialog.dart';

class BirthdayBottomSheet extends StatefulWidget {
  const BirthdayBottomSheet({super.key});

  @override
  State<BirthdayBottomSheet> createState() => _BirthdayBottomSheetState();
}

class _BirthdayBottomSheetState extends State<BirthdayBottomSheet> {
  final nameController = TextEditingController();
  DateTime? dateTime;

  final descriptionController = TextEditingController();
  bool remind = false;


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

            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40), topRight: Radius.circular(40))),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
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
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
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
                            SizedBox(
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
                                AppStyles.mediumHead.copyWith(color: Colors.black)),
                        CustomTextField(
                            controller: descriptionController,
                            hint: 'Введите комментарий',
                            maxLength: 300,
                            minLines: 5,
                            maxLines: 5,
                            textStyle: AppStyles.body.copyWith(color: Colors.black))
                      ],
                    ),
                  ),
                ),
                if(bottom <= 0)
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Divider(
                        indent: 0,
                        endIndent: 0,
                        height: 1,
                        thickness: 1,
                        color: AppColors.lightGrey,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SvgPicture.asset(
                                  'assets/images/svg/clock.svg',
                                  height: 20,
                                  width: 20,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Напоминание',
                                  style: AppStyles.mediumHead
                                      .copyWith(color: Colors.black),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 40,
                              height: 24,
                              child: CustomSwitch(value: remind, onChange: (val) {
                                remind = val;
                              },),
                            )
                          ],
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(20),
                      child: Row(

                        children: [
                          Expanded(
                            child: CustomButton(title: 'Отмена', onTap: (){
                              Navigator.of(context, rootNavigator: true).pop();
                            },
                            bg: Colors.white,
                              textColor: Colors.black,
                            ),
                          ),
                          SizedBox(width: 20,),
                          Expanded(
                            child: CustomButton(title: 'Сохранить', active: nameController.text.isNotEmpty, onTap: nameController.text.isNotEmpty ? () {
                              Navigator.of(context, rootNavigator: true).pop();

                            } : null,
                            textColor: nameController.text.isEmpty ? Colors.black : null,
                            ),
                          )
                        ],
                      ),
                      ),
                      SizedBox(height: 10,)
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
