import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../utils/bottom_sheet_handler.dart';
import '../../../resources/app_colors.dart';
import '../../../resources/app_styles.dart';
import '../../../widgets/bottom_sheets/birthday_bottom_sheet.dart';
import '../../../widgets/bottom_sheets/select_note_type_bottom_sheet.dart';
import '../../../widgets/bottom_sheets/task_bottom_sheet.dart';
import '../../../widgets/bottom_sheets/text_note_bottom_sheet.dart';
import '../../../widgets/bottom_sheets/voice_note/voice_note_bottom_sheet.dart';
import '../../../widgets/dialogs/date_picker_dialog.dart';
import '../../notes/bloc/bloc.dart';
import '../../tasks/bloc/bloc.dart';
import '../bloc/bloc.dart';
import 'dropdown_menu_item_widget.dart';

class CalendarAppBar extends StatelessWidget {
  final String popText;
  final Function()? onPop;
  const CalendarAppBar({super.key, required this.popText, this.onPop});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 20, vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: onPop,
            child: Container(
              color: Colors.transparent,
              child: Row(
                children: [
                  SvgPicture.asset(
                    'assets/images/svg/arrow_left.svg',
                    color: AppColors.blue,
                    height: 15,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    popText,
                    style: AppStyles.body
                        .copyWith(color: AppColors.blue),
                  ),
                ],
              ),
            ),
          ),
          DropdownButtonHideUnderline(
              child: DropdownButton2(
                buttonStyleData: ButtonStyleData(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100))),
                onChanged: (value) {
                  switch (value) {
                    case 0:
                      BottomSheetHandler.showBottomSheet(context,
                          child: const TaskBottomSheet(),
                          useRootNavigator: true)
                          .then((value) {
                        if (value != null) {
                          context
                              .read<CalendarBloc>()
                              .add(CalendarEvent.addTask(value));
                          Future.delayed(Duration(seconds: 2), () {
                            context.read<TasksBloc>().add(TasksEvent.fetch());

                          });
                        }
                      });
                    case 1:
                      BottomSheetHandler.showBottomSheet(context,
                          child: SelectNoteTypeBottomSheet(
                            onTextNote: () {
                              Navigator.of(context,
                                  rootNavigator: true)
                                  .pop();
                              BottomSheetHandler.showBottomSheet(
                                  context,
                                  child:
                                  const TextNoteBottomSheet(),
                                  useRootNavigator: true)
                                  .then((value) {
                                if (value != null) {
                                  context.read<NotesBloc>().add(
                                      NotesEvent.createTextNote(
                                          note: value));
                                  Future.delayed(Duration(seconds: 1), () {
                                    context.read<CalendarBloc>().add(
                                        const CalendarEvent.fetch());
                                  });
                                }
                              });
                            },
                            onVoiceNote: () {
                              Navigator.of(context,
                                  rootNavigator: true)
                                  .pop();

                              BottomSheetHandler.showBottomSheet(
                                  context,
                                  child:
                                  const VoiceNoteBottomSheet(),
                                  useRootNavigator: true)
                                  .then((value) {
                                if (value != null) {
                                  context.read<NotesBloc>().add(
                                      NotesEvent.createAudioNote(
                                          note: value));
                                  Future.delayed(Duration(seconds: 1), () {
                                    context.read<CalendarBloc>().add(
                                        const CalendarEvent.fetch());
                                  });
                                }
                              });
                            },
                          ),
                          useRootNavigator: true);

                    case 2:
                      BottomSheetHandler.showBottomSheet(context,
                          child: const BirthdayBottomSheet(),
                          useRootNavigator: true)
                          .then((value) {
                        if (value != null) {
                          context.read<CalendarBloc>().add(
                              CalendarEvent.addBirthday(value));
                        }
                      });
                  }
                },
                dropdownStyleData: DropdownStyleData(
                    width: 300,
                    padding: const EdgeInsets.symmetric(
                        vertical: 24, horizontal: 16),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 6,
                              spreadRadius: 2,
                              color: Colors.black.withOpacity(0.1),
                              offset: const Offset(0, 10))
                        ],
                        borderRadius: BorderRadius.circular(40),
                        color: AppColors.white,
                        border: Border.all(
                            color: AppColors.lightGrey))),
                customButton: Container(
                  height: 56,
                  width: 56,
                  decoration:  BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.blueButton),
                  child:  Center(
                    child: Icon(
                      Icons.add,
                      size: 24,
                      color: Colors.white,
                    ),
                  ),
                ),
                items: const <DropdownMenuItem<int>>[
                  DropdownMenuItem(
                    value: 0,
                    child: DropdownMenuItemChild(
                      title: 'Задача',
                      svgName: 'task',
                    ),
                  ),
                  DropdownMenuItem(
                    value: 1,
                    child: DropdownMenuItemChild(
                      title: 'Заметка',
                      svgName: 'notes',
                    ),
                  ),
                  DropdownMenuItem(
                    value: 2,
                    child: DropdownMenuItemChild(
                      title: 'День рождения',
                      svgName: 'birthday',
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
