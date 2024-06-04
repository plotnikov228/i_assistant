import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:i_assistant/presentation/pages/calendar/shift_shedule/bloc/bloc.dart';
import 'package:i_assistant/presentation/pages/calendar/shift_shedule/shift_shedule_bottom_sheet.dart';
import 'package:i_assistant/presentation/pages/calendar/widgets/calendar_widget.dart';
import 'package:i_assistant/presentation/pages/calendar/widgets/delete_all_shift_bottom_sheet.dart';
import 'package:i_assistant/presentation/pages/calendar/widgets/shift_widget.dart';
import 'package:i_assistant/presentation/pages/navigator_handler/bloc/bloc.dart';
import 'package:i_assistant/presentation/widgets/bottom_sheets/birthday_bottom_sheet.dart';
import 'package:i_assistant/presentation/pages/calendar/widgets/calendar_day_widget.dart';
import 'package:i_assistant/presentation/pages/calendar/widgets/dropdown_menu_item_widget.dart';
import 'package:i_assistant/presentation/widgets/bottom_sheets/select_note_type_bottom_sheet.dart';
import 'package:i_assistant/presentation/widgets/bottom_sheets/task_bottom_sheet.dart';
import 'package:i_assistant/presentation/resources/app_styles.dart';
import 'package:i_assistant/presentation/widgets/bottom_sheets/text_note_bottom_sheet.dart';
import 'package:i_assistant/presentation/widgets/bottom_sheets/voice_note/voice_note_bottom_sheet.dart';
import 'package:i_assistant/presentation/widgets/buttons/custom_button.dart';
import 'package:i_assistant/utils/bottom_sheet_handler.dart';
import 'package:i_assistant/utils/constants/shift_type.dart';
import 'package:i_assistant/utils/extensions/date_extension.dart';

import '../../resources/app_colors.dart';
import '../../widgets/dialogs/date_picker_dialog.dart';
import '../navigator_handler/navigator_handler_page.dart';
import 'bloc/bloc.dart';

class CalendarPage extends StatelessWidget {
  const CalendarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) {
        return CalendarBloc();
      },
      child: Scaffold(
        backgroundColor: AppColors.blue,
        body:
            BlocConsumer<CalendarBloc, CalendarState>(builder: (context, state) {





              void openShiftScheduleBottom ([ShiftScheduleState? startState]){
                BottomSheetHandler.showBottomSheet(context, child: ShiftScheduleBottomSheet(startDate: DateTime(state.year, state.month),
                  startState: startState,
                  useCalendar: () {

                    context.read<CalendarBloc>().add(CalendarEvent.selectShiftTypes(true));
                  },
                  onCalculate: (list, {required DateTime start, required DateTime end}) {
                    context.read<CalendarBloc>().add(CalendarEvent.getShiftTypes(list, start: start, end: end));

                  },
                  onDelete: state.maybeWhen(orElse: () {
                    return null;
                  }, calendar: (m, y, days, activeDays, canDelete) {
                    if(canDelete) {
                      return (state) {
                        BottomSheetHandler.showBottomSheet(context,
                            useRootNavigator: true,
                            child: DeleteAllShiftBottomSheet(
                          onOk: () {
                            context.read<CalendarBloc>().add(CalendarEvent.removeAllShiftTypes());

                          }, onCancel: () {
                          openShiftScheduleBottom(state);
                        },
                        ));

                      };
                    }
                    return null;

                  }),
                ), useRootNavigator: true);
              }



              bool _isCalendar () => state.maybeWhen(orElse: () {
                return true;
              }, shiftType: (_,__,___,____,_____) {
                return false;
              });
          return SafeArea(
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          showDialog(context: context, builder: (_) {
                            return Center(
                              child: CustomDatePickerDialog(
                                initialDate: DateTime(state.year, state.month),
                                selectFullDate: false,
                              ),
                            );
                          }).then((value) {
                            context.read<CalendarBloc>().add(CalendarEvent.changeDate(value));
                          });
          },
                        child: Container(
                          color: Colors.transparent,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                state.year.toString(),
                                style: AppStyles.body,
                              ),
                              Text(
                                DateTime(state.year, state.month).getMonthName(),
                                style: AppStyles.bigHead,
                              ),
                            ],
                          ),
                        ),
                      ),
                      DropdownButtonHideUnderline(
                          child: DropdownButton2(
                        onChanged: (value) {
                          switch (value) {
                            case 0:
                              BottomSheetHandler.showBottomSheet(context,
                                  child: const TaskBottomSheet(),
                                  useRootNavigator: true);
                            case 1:
                              BottomSheetHandler.showBottomSheet(context,
                                  child: SelectNoteTypeBottomSheet(
                                    onTextNote: () {
                                      Navigator.of(context, rootNavigator: true)
                                          .pop();
                                      BottomSheetHandler.showBottomSheet(
                                          context,
                                          child: const TextNoteBottomSheet(),
                                          useRootNavigator: true);
                                    },
                                    onVoiceNote: () {
                                      Navigator.of(context, rootNavigator: true)
                                          .pop();

                                      BottomSheetHandler.showBottomSheet(
                                          context,
                                          child: const VoiceNoteBottomSheet(),
                                          useRootNavigator: true);
                                    },
                                  ),
                                  useRootNavigator: true);

                            case 2:
                              BottomSheetHandler.showBottomSheet(context,
                                  child: const BirthdayBottomSheet(),
                                  useRootNavigator: true);
                          }
                        },
                        dropdownStyleData: DropdownStyleData(
                            width: 240,
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
                                borderRadius: _isCalendar() ? BorderRadius.circular(40) : BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40)),
                                color: Colors.white,
                                border:
                                    Border.all(color: AppColors.lightGrey))),
                        customButton: Container(
                          height: 56,
                          width: 56,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          child: const Center(
                            child: Icon(
                              Icons.add,
                              size: 24,
                              color: Colors.black,
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
                ),
                Expanded(
                    child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.white),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CalendarWidget(calendarDays: state.days,

                        activeCalendarDays: state.maybeWhen(orElse: () {
                          return null;
                        }, shiftType: (i1, i2, days, activeDays, selected) {
                          return activeDays;
                        }),
                        month: state.month, onTap: (_) {
                        context.read<CalendarBloc>().add(CalendarEvent.selectDay(_));
                      },
                      selected: state.selectedDay,
                      ),
                      if(_isCalendar())
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: CustomButton(
                          onTap: () {
                            openShiftScheduleBottom();
                          },
                          title: 'Создать график смен',
                          suffix: const Icon(
                            Icons.add,
                            size: 18,
                            color: Colors.white,
                          ),
                        ),
                      ) else Column(
                        children: [
                          Divider(indent: 10, endIndent: 10,

                              color: AppColors.dividerGrey,),
                          SizedBox(height: 20,),
                          Text('Отметить смену', style: AppStyles.mediumHead,),
                          SizedBox(height: 20,),
                          Padding(padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: ([
                              ShiftType.day,
                              ShiftType.night,
                              ShiftType.both,
                            ]
                                .map<Widget>((e) => ShiftWidget(
                                    selected:
                                    state.selectedDay?.shiftType ==
                                        e,
                                    onTap: () {
                                      if(state.selectedDay != null) {
                                        context.read<CalendarBloc>().add(CalendarEvent.addShiftType(e, state.selectedDay!));
                                      }
                                    },
                                    shiftType: e,
                                    showSvg: true,
                                    size: 56,
                                  ))
                                .toList() +
                                [
                                  InkWell(
                                    onTap: () {

                                      context.read<CalendarBloc>().add(CalendarEvent.addShiftType(ShiftType.empty, state.selectedDay!));
                                    },
                                    child: Container(
                                      height: 56,
                                      width: 56,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                      ),
                                      child: SizedBox(
                                        height: 42,
                                        width: 38,
                                        child: Center(
                                          child: SvgPicture.asset(
                                            'assets/images/svg/trash.svg',
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ]),
                          ),
                          ),
                          SizedBox(height: 40,),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                Expanded(
                                  child: CustomButton(title: 'Отменить',
                                  bg: Colors.white,
                                    textColor: Colors.black,
                                    onTap: () {
                                      context.read<CalendarBloc>().add(CalendarEvent.selectShiftTypes(false));
                                    },
                                  ),
                                ),SizedBox(width: 10,),
                                Expanded(
                                  child: CustomButton(title: 'Сохранить',
                                    onTap: () {
                                      context.read<CalendarBloc>().add(CalendarEvent.confirmShiftTypesChanges());
                                    },
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 40,),


                        ],
                      )
                    ],
                  ),
                )),
                if(_isCalendar())
                const SizedBox(
                  height: 10,
                )
              ],
            ),
          );
        }, listener: (BuildContext context, CalendarState state) {
              final GlobalKey<ScaffoldWithBottomNavBarState> _navState = GlobalKey();

              state.maybeWhen(orElse: () {
                context.read<NavigatorBloc>().add(NavigatorEvent.changeVisible(true));

              },shiftType: (_, __, ___, ____, _____) {
                context.read<NavigatorBloc>().add(NavigatorEvent.changeVisible(false));

              });
            },),
      ),
    );



  }


}
