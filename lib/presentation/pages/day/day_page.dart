import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:i_assistant/domain/entities/calendar_day/calendar_day.dart';
import 'package:i_assistant/domain/entities/note/note.dart';
import 'package:i_assistant/presentation/pages/calendar/bloc/bloc.dart';
import 'package:i_assistant/presentation/pages/day/bloc/bloc.dart';
import 'package:i_assistant/presentation/pages/day/widgets/day_birthday_widget.dart';
import 'package:i_assistant/presentation/pages/day/widgets/day_note_widget.dart';
import 'package:i_assistant/presentation/pages/day/widgets/day_task_widget.dart';
import 'package:i_assistant/presentation/pages/day/widgets/delete_all_data_bottom_sheet.dart';
import 'package:i_assistant/presentation/pages/notes/bloc/bloc.dart';
import 'package:i_assistant/presentation/pages/tasks/bloc/bloc.dart';
import 'package:i_assistant/presentation/resources/app_colors.dart';
import 'package:i_assistant/presentation/resources/app_styles.dart';
import 'package:i_assistant/presentation/widgets/bottom_sheets/birthday_bottom_sheet.dart';
import 'package:i_assistant/presentation/widgets/bottom_sheets/voice_note/voice_note_bottom_sheet.dart';
import 'package:i_assistant/utils/bottom_sheet_handler.dart';
import 'package:i_assistant/utils/constants/shift_type.dart';
import 'package:i_assistant/utils/extensions/date_extension.dart';
import 'package:i_assistant/utils/shared_prefs.dart';

import '../../widgets/bottom_sheets/select_note_type_bottom_sheet.dart';
import '../../widgets/bottom_sheets/task_bottom_sheet.dart';
import '../../widgets/bottom_sheets/text_note_bottom_sheet.dart';
import 'widgets/day_shift_type_widget.dart';
import 'widgets/shift_type_bottom_sheet.dart';

class DayPage extends StatelessWidget {
  final CalendarDay calendarDay;

  const DayPage({super.key, required this.calendarDay});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.dividerGrey,
      body: BlocProvider(
        create: (BuildContext context) {
          return DayBloc(calendarDay);
        },
        child: BlocBuilder<DayBloc, DayState>(builder: (context, state) {
          final bloc = context.read<DayBloc>();
          return SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                        ElevatedButton(
                            onPressed: () {
                              context.pop();
                            },
                            style: ElevatedButton.styleFrom(
                                shape: const CircleBorder(),
                                padding: EdgeInsets.zero,
                                elevation: 0,
                                backgroundColor: AppColors.dividerGrey),
                            child: SvgPicture.asset(
                              'assets/images/svg/pop.svg',
                              color: SharedPrefs.isThemeDark ? AppColors.black : null,
                              height: 24,
                            )),
                        ElevatedButton(
                            onPressed: () {
                              BottomSheetHandler.showBottomSheet(context,
                                  useRootNavigator: true,
                                  child: DeleteAllDataBottomSheet(
                                onOk: () {
                                  context.read<DayBloc>().add(const DayEvent.removeAllData());
                                  Future.delayed(Duration(seconds: 2), () {
                                    context.read<CalendarBloc>().add(CalendarEvent.fetch());
                                    context.read<NotesBloc>().add(NotesEvent.fetch());
                                    context.read<TasksBloc>().add(TasksEvent.fetch());

                                  });
                                  },
                              ));
                            },
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                                shape: const CircleBorder(),
                                padding: EdgeInsets.zero,
                                backgroundColor: AppColors.dividerGrey),
                            child: SvgPicture.asset(
                                color: SharedPrefs.isThemeDark ? AppColors.black : null,

                                height: 24, 'assets/images/svg/trash.svg'))
                      ].map((e) => SizedBox(
                        height: 56,
                        width: 56,
                        child: e,
                      )).toList(),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(bottom: 20, left: 20, right: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  '${state.dateTime.getWeekDayName().toUpperCase()}${state.canGoToToday ? '  ' : ', Сегодня'}',
                                  style: AppStyles.bodyBlack,
                                ),
                                if (state.canGoToToday)
                                  GestureDetector(
                                    onTap: () {
                                      bloc.add(const DayEvent.goToDay());
                                    },
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          'Сегодня',
                                          style: AppStyles.bodyBlue,
                                        ),
                                        SvgPicture.asset(
                                            'assets/images/svg/arrow_top_right.svg')
                                      ],
                                    ),
                                  )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
                                state.dateTime.getMonthWithDayName(),
                                style: AppStyles.mediumTitle,
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(
                                height: 56,
                                width: 56,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      elevation: 0,
                                        backgroundColor: AppColors.white,
                                        shape: const CircleBorder(),
                                        padding: EdgeInsets.zero),
                                    onPressed: () {
                                      bloc.add(const DayEvent.goToDay(false));
                                    },
                                    child: SvgPicture.asset(
                                        color: SharedPrefs.isThemeDark ? AppColors.black : null,

                                        'assets/images/svg/arrow_left.svg'))),
                            SizedBox(
                                height: 56,
                                width: 56,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      elevation: 0,
                                        backgroundColor: AppColors.white,
                                        shape: const CircleBorder(),
                                        padding: EdgeInsets.zero),
                                    onPressed: () {
                                      bloc.add(const DayEvent.goToDay(true));
                                    },
                                    child: SvgPicture.asset(
                                        color: SharedPrefs.isThemeDark ? AppColors.black : null,

                                        'assets/images/svg/arrow_right.svg')))
                          ]
                              .map((e) => Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2),
                                    child: e,
                                  ))
                              .toList(),
                        )
                      ],
                    ),
                  ),
                  DayShiftTypeWidget(
                    shiftType: state.shiftType,
                    onAdd: () {
                      BottomSheetHandler.showBottomSheet(context,
                              useRootNavigator: true,
                              child: const ShiftTypeBottomSheet())
                          .then((value) {
                        bloc.add(DayEvent.selectShiftType(value));
                        context.read<CalendarBloc>().add(CalendarEvent.fetch(date: calendarDay.date));
                      });
                    },
                    onDelete: () {
                      bloc.add(const DayEvent.selectShiftType(ShiftType.empty));
                      context.read<CalendarBloc>().add(CalendarEvent.fetch(date: calendarDay.date));

                    },
                  ),
                  const SizedBox(height: 10,),
                  DayTaskWidget(tasks: state.tasks, onAdd: () {
                    BottomSheetHandler.showBottomSheet(context,
                        child: TaskBottomSheet(dateTime: state.dateTime,),
                        useRootNavigator: true).then((value) {
                      if (value != null) {
                       bloc
                            .add( DayEvent.addTask(value));
                       Future.delayed(Duration(seconds: 2), () {
                         context.read<TasksBloc>().add(TasksEvent.fetch());
                         context.read<CalendarBloc>().add(CalendarEvent.fetch(date: calendarDay.date));

                       });
                      }
                    });
                  },
                  onDelete: (task) {
                    bloc
                        .add( DayEvent.removeTask(task));
                    Future.delayed(Duration(seconds: 2), () {
                      context.read<NotesBloc>().add(NotesEvent.fetch());
                      context.read<CalendarBloc>().add(CalendarEvent.fetch(date: calendarDay.date));

                    });
                  },
                    onSelect: (task) {
                      bloc
                          .add( DayEvent.selectTask(task));
                    },
                  ),
                  const SizedBox(height: 10,),
                  DayNoteWidget(
                    notes: (state.audioNotes.map((e) => e.toJson()).toList() + state.textNotes.map((e) => e.toJson()).toList()).map((e) => Note.fromJson(e)).toList(),
                    onAdd: () {
                      BottomSheetHandler.showBottomSheet(context,
                          useRootNavigator: true,
                          child: SelectNoteTypeBottomSheet(onTextNote: () {
                            Navigator.of(context, rootNavigator: true).pop(context);
                            BottomSheetHandler.showBottomSheet(context,
                                useRootNavigator: true,
                                child: TextNoteBottomSheet(dateTime: state.dateTime,)).then((value) {
                              if(value != null) {
                                bloc.add(DayEvent.addTextNote(value));
                                Future.delayed(Duration(seconds: 2), () {
                                  context.read<NotesBloc>().add(NotesEvent.fetch());
                                  context.read<CalendarBloc>().add(CalendarEvent.fetch(date: calendarDay.date));

                                });

                              }
                            });
                          }, onVoiceNote:  () {
                            Navigator.of(context, rootNavigator: true).pop(context);

                            BottomSheetHandler.showBottomSheet(context,
                                useRootNavigator: true,
                                child: VoiceNoteBottomSheet(dateTime: state.dateTime,)).then((value) {
                              if(value != null) {
                                bloc.add(DayEvent.addVoiceNote(value));
                                Future.delayed(Duration(seconds: 2), () {
                                  context.read<NotesBloc>().add(NotesEvent.fetch());
                                  context.read<CalendarBloc>().add(CalendarEvent.fetch(date: calendarDay.date));

                                });

                              }
                            });
                          },));



                    },
                    onDelete: (note) {
                      context.read<DayBloc>().add(DayEvent.removeNote(note));

                      Future.delayed(Duration(seconds: 2), () {
                        context.read<NotesBloc>().add(NotesEvent.fetch());
                        context.read<CalendarBloc>().add(CalendarEvent.fetch(date: calendarDay.date));

                      });
                    },
                  ),
                  const SizedBox(height: 10,),
                  DayBirthdayWidget(tasks: state.birthDays, onAdd: () {
                    BottomSheetHandler.showBottomSheet(context,
                        child: BirthdayBottomSheet(dateTime: state.dateTime,),
                        useRootNavigator: true).then((value) {
                      if (value != null) {
                        bloc
                            .add( DayEvent.addBirthday(value));
                        Future.delayed(Duration(seconds: 2), () {
                          context.read<NotesBloc>().add(NotesEvent.fetch());
                          context.read<CalendarBloc>().add(CalendarEvent.fetch(date: calendarDay.date));

                        });
                      }
                    });
                  },
                    onDelete: (task) {
                      bloc
                          .add( DayEvent.removeBirthday(task));
                      Future.delayed(Duration(seconds: 2), () {
                        context.read<NotesBloc>().add(NotesEvent.fetch());
                        context.read<CalendarBloc>().add(CalendarEvent.fetch(date: calendarDay.date));

                      });
                    },
                  ),
                  const SizedBox(height: 50,),

                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
