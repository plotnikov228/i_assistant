import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:i_assistant/domain/entities/note/text_note/text_note.dart';
import 'package:i_assistant/presentation/resources/app_colors.dart';
import 'package:i_assistant/presentation/resources/app_styles.dart';
import 'package:i_assistant/presentation/widgets/buttons/custom_button.dart';
import 'package:i_assistant/presentation/widgets/custom_switcher.dart';
import 'package:i_assistant/presentation/widgets/text_fields/custom_text_field.dart';
import 'package:i_assistant/utils/size_utils.dart';
import 'package:intl/intl.dart';

import '../dialogs/date_picker_dialog.dart';

class TextNoteBottomSheet extends StatefulWidget {
  final DateTime? dateTime;
  const TextNoteBottomSheet({super.key, this.dateTime});

  @override
  State<TextNoteBottomSheet> createState() => _TextNoteBottomSheetState();
}

class _TextNoteBottomSheetState extends State<TextNoteBottomSheet> {
  final nameController = TextEditingController();
  final descriptionController = TextEditingController();
  DateTime? dateTime;

  bool validate() {
    return nameController.text.isNotEmpty && descriptionController.text.isNotEmpty &&dateTime !=null;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dateTime = widget.dateTime;
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
                            hint: 'Новая заметка',
                            maxLength: 20,
                            textStyle:
                            AppStyles.mediumHead.copyWith(color: AppColors.black)),
                        CustomTextField(
                            controller: descriptionController,
                            onChanged: (_) {
                              setState(() {

                              });
                            },
                            hint: 'Введите текст заметки',
                            maxLength: 300,
                            minLines: 5,
                            maxLines: 5,
                            textStyle: AppStyles.body.copyWith(color: AppColors.black))
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
                      Padding(padding: EdgeInsets.all(20),
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
                            SizedBox(width: 20,),
                            Expanded(
                              child: CustomButton(title: 'Сохранить', active: validate(), onTap: validate() ? () {
                                Navigator.of(context, rootNavigator: true).pop(
                                  TextNote(id: -1, dateTime: dateTime!, name: nameController.text, comment: descriptionController.text)
                                );

                              } : null,
                                textColor: !validate() ? Colors.black : null,
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
