import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:i_assistant/presentation/resources/app_colors.dart';
import 'package:i_assistant/presentation/resources/app_styles.dart';
import 'package:i_assistant/presentation/widgets/buttons/custom_button.dart';
import 'package:i_assistant/presentation/widgets/custom_switcher.dart';
import 'package:i_assistant/presentation/widgets/text_fields/custom_text_field.dart';
import 'package:i_assistant/utils/size_utils.dart';
import 'package:intl/intl.dart';

import '../../../domain/entities/task/task.dart';
import '../../../utils/shared_prefs.dart';
import '../dialogs/date_picker_dialog.dart';
import '../remind_container.dart';

class TaskViewBottomSheet extends StatefulWidget {
  final Task task;
  final Function()? onRemove;
  const TaskViewBottomSheet({super.key, required this.task, this.onRemove});

  @override
  State<TaskViewBottomSheet> createState() => _TaskViewBottomSheetState();
}

class _TaskViewBottomSheetState extends State<TaskViewBottomSheet> {
  final nameController = TextEditingController();
  final descriptionController = TextEditingController();
  DateTime? dateTime;
  DateTime? dateTimeRemind ;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dateTime = widget.task.dateTime;
    nameController.text = widget.task.name;
    descriptionController.text = widget.task.comment;
    dateTimeRemind = widget.task.remindDateTime;
  }

  bool validate() {
    return nameController.text.isNotEmpty  && dateTime !=null;
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
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40))),
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
                              setState(() {});
                            },
                            controller: nameController,
                            hint: 'Новая задача',
                            maxLength: 20,
                            textStyle: AppStyles.mediumHead
                                .copyWith(color: AppColors.black)),
                        CustomTextField(
                            controller: descriptionController,
                            hint: 'Введите комментарий',
                            onChanged: (_) {
                              setState(() {

                              });
                            },
                            maxLength: 300,
                            minLines: 5,
                            maxLines: 5,
                            textStyle:
                            AppStyles.body.copyWith(color: AppColors.black))
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
                        IgnorePointer(
                          child: RemindContainer(
                            closed: widget.task.remindDateTime == null,
                            initialDateTime: dateTimeRemind,
                            onModeSwitch: (_) {
                              if(!_) {
                                dateTimeRemind = null;
                              }
                            },
                            onSwitch: (_) {
                              dateTimeRemind = _;
                            },
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(20),
                          child:widget.onRemove != null ?
        Center(
          child: CustomButton(
            suffix: SvgPicture.asset(
              color: SharedPrefs.isThemeDark ? AppColors.black : null,

              'assets/images/svg/trash.svg',
              height: 20,
              width: 20,

            ),
            title: 'Удалить заметку',
            bg: AppColors.white,
            textColor: AppColors.black,
            onTap:() {
              Navigator.pop(context);
              widget.onRemove?.call();
            },
          ),
        ) : Container()
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
