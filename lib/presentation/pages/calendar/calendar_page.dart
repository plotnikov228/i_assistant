import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:i_assistant/blocs/theme/bloc.dart';
import 'package:i_assistant/presentation/pages/calendar/bloc/models/calendar_entity.dart';
import 'package:i_assistant/presentation/pages/calendar/shift_shedule/bloc/bloc.dart';
import 'package:i_assistant/presentation/pages/calendar/shift_shedule/shift_shedule_bottom_sheet.dart';
import 'package:i_assistant/presentation/pages/calendar/widgets/calendar_app_bar.dart';
import 'package:i_assistant/presentation/pages/calendar/widgets/calendar_carousel.dart';
import 'package:i_assistant/presentation/pages/calendar/widgets/calendar_widget.dart';
import 'package:i_assistant/presentation/pages/calendar/widgets/calendar_year_content.dart';
import 'package:i_assistant/presentation/pages/calendar/widgets/delete_all_shift_bottom_sheet.dart';
import 'package:i_assistant/presentation/pages/calendar/widgets/shift_widget.dart';
import 'package:i_assistant/presentation/pages/navigator_handler/bloc/bloc.dart';
import 'package:i_assistant/presentation/pages/notes/bloc/bloc.dart';
import 'package:i_assistant/presentation/pages/notes/notes_page.dart';
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
import 'package:i_assistant/utils/router/routes.dart';
import 'package:i_assistant/utils/shared_prefs.dart';

import '../../../utils/size_utils.dart';
import '../../resources/app_colors.dart';
import '../../widgets/dialogs/date_picker_dialog.dart';
import '../navigator_handler/navigator_handler_page.dart';
import 'bloc/bloc.dart';

class CalendarPage extends StatelessWidget {
  const CalendarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColors.white,
          body: BlocConsumer<CalendarBloc, CalendarState>(
            builder: (context, state) {



              return state.maybeWhen(
                loading: (_, __, ___) => Container(),

                  year: (loading, selectedYear, years) {
                    return CalendarYearContent(years: years, selectedYear: selectedYear, loading: loading);
                  },
                  orElse: () {

                final List<CalendarEntity> calendars = state.maybeWhen(orElse: () => [], calendar: (currentCalendar, calendars, selectedDay, can) {
                  return calendars;
                }, shiftType: (currentCalendar, calendars, changed, selectedDay) {
                  return calendars;
                });

                final currentCalendar = state.maybeWhen(orElse: () => 1, calendar: (currentCalendar, calendars, selectedDay, can) {
                  return currentCalendar;
                }, shiftType: (currentCalendar, calendars, changed, selectedDay) {
                  return currentCalendar;
                });

                final selectedDay = state.maybeWhen(orElse: () => null, calendar: (currentCalendar, calendars, selectedDay, can) {
                  return selectedDay;
                }, shiftType: (currentCalendar, calendars, changed, selectedDay) {
                  return selectedDay;
                });








                void openShiftScheduleBottom([ShiftScheduleState? startState]) {
                  BottomSheetHandler.showBottomSheet(context,
                      child: ShiftScheduleBottomSheet(
                        startDate: DateTime(
                            calendars[currentCalendar].year,
                            calendars[currentCalendar].month),
                        startState: startState,
                        useCalendar: () {
                          context
                              .read<CalendarBloc>()
                              .add(const CalendarEvent.selectShiftTypes(true));
                        },
                        onCalculate: (list,
                            {required DateTime start, required DateTime end}) {
                          context.read<CalendarBloc>().add(
                              CalendarEvent.getShiftTypes(list,
                                  start: start, end: end));
                        },
                        onDelete: state.maybeWhen(orElse: () {
                          return null;
                        }, calendar:
                            (currentCalendar, calendars, selected, canDelete) {
                          if (canDelete) {
                            return (state) {
                              BottomSheetHandler.showBottomSheet(context,
                                  useRootNavigator: true,
                                  child: DeleteAllShiftBottomSheet(
                                    onOk: () {
                                      context.read<CalendarBloc>().add(
                                          const CalendarEvent.removeAllShiftTypes());
                                    },
                                    onCancel: () {
                                      openShiftScheduleBottom(state);
                                    },
                                  ));
                            };
                          }
                          return null;
                        }),
                      ),
                      useRootNavigator: true);
                }

                bool _isCalendar() => state.maybeWhen(orElse: () {
                  return true;
                }, shiftType: (_, __, ___, ____) {
                  return false;
                });
                return SafeArea(
                  bottom: false,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Column(
                        children: [
                          CalendarAppBar( popText: calendars[currentCalendar].year.toString(), onPop: () {
                            context.read<CalendarBloc>().add(CalendarEvent.goToSelectYear());
                          },),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: ['ПН', 'ВТ', 'СР', 'ЧТ', 'ПТ', 'СБ', 'ВС']
                                  .map<Widget>(
                                    (e) => Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 0),
                                      child: SizedBox(
                                                                    height: 47,
                                                                    width: 47,
                                                                    child: Center(
                                      child: Text(
                                        e,
                                        style: AppStyles.bodyBlackBold,
                                      ),
                                                                    ),
                                                                  ),
                                    ),
                              )
                                  .toList()),
                          Expanded(
                              child: Container(
                                width: size.width,
                                decoration: BoxDecoration(color: AppColors.calendarBg),
                                child: CalendarCarousel(
                                  changed: state.maybeWhen(orElse:  () {}, shiftType: (_, __, ___, ____) {
                                    return ___;
                                  }, calendar: (_,__,___, ____) {
                                    return null;
                                  }),
                                  calendars: calendars,
                                  onTap: (day) {
                                    context.read<CalendarBloc>().add(CalendarEvent.selectDay(day  ));

                                    state.maybeWhen(orElse:  () {}, shiftType: (_, __, ___, ____) {
                                    }, calendar: (_,__,___, ____) {
                                      context.pushNamed(AppRoutes.day.toName, extra: day);
                                    });
                                  },
                                  page: currentCalendar,
                                ),
                              )),

                        ],
                      ),
                      if (!_isCalendar())
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
                              color: AppColors.white),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              const SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                child: Text(
                                  'Отметить смену',
                                  style: AppStyles.mediumHead.copyWith(
                                    color: AppColors.black
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: ([
                                    ShiftType.day,
                                    ShiftType.night,
                                    ShiftType.both,
                                  ]
                                      .map<Widget>((e) => ShiftWidget(
                                    selected:
                                    selectedDay?.shiftType == e,
                                    onTap: () {
                                      if (selectedDay != null) {
                                        context.read<CalendarBloc>().add(
                                            CalendarEvent.addShiftType(
                                                e, selectedDay!));
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
                                            context.read<CalendarBloc>().add(
                                                CalendarEvent.addShiftType(
                                                    ShiftType.empty,
                                                    selectedDay!));
                                          },
                                          child: Container(
                                            height: 56,
                                            width: 56,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: AppColors.white,
                                            ),
                                            child: SizedBox(
                                              height: 42,
                                              width: 38,
                                              child: Center(
                                                child: SvgPicture.asset(
                                                  'assets/images/svg/trash.svg',
                                                  fit: BoxFit.fill,
                                                  color: SharedPrefs.isThemeDark ? AppColors.black : null,
                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                      ]),
                                ),
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: CustomButton(
                                        title: 'Отменить',
                                        bg: AppColors.white,
                                        textColor: AppColors.black,
                                        onTap: () {
                                          context.read<CalendarBloc>().add(
                                              const CalendarEvent.selectShiftTypes(
                                                  false));
                                        },
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: CustomButton(
                                        title: 'Сохранить',
                                        onTap: () {
                                          context.read<CalendarBloc>().add(
                                              const CalendarEvent
                                                  .confirmShiftTypesChanges());
                                        },
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                            ],
                          ),
                        )
                      else
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 80),
                          child: CustomButton(
                            onTap: () {
                              openShiftScheduleBottom();
                            },
                            textColor: Colors.white,
                            title: 'Создать график смен',
                            suffix: SvgPicture.asset('assets/images/svg/plus.svg'),
                          ),
                        )
                    ],
                  ),
                );
              });

            },
            listener: (BuildContext context, CalendarState state) {
              final GlobalKey<ScaffoldWithBottomNavBarState> _navState =
                  GlobalKey();

              state.maybeWhen(orElse: () {
                context
                    .read<NavigatorBloc>()
                    .add(const NavigatorEvent.changeVisible(true));
              }, shiftType: (_, __, ___, ____) {
                context
                    .read<NavigatorBloc>()
                    .add(const NavigatorEvent.changeVisible(false));
              });
            },
          ),
        );
      }
    );
  }
}
