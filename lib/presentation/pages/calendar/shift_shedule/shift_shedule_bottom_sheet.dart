import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:i_assistant/presentation/pages/calendar/shift_shedule/bloc/bloc.dart';
import 'package:i_assistant/presentation/pages/calendar/shift_shedule/widgets/empty_shedule_row.dart';
import 'package:i_assistant/presentation/pages/calendar/shift_shedule/widgets/shedule_row.dart';
import 'package:i_assistant/presentation/resources/app_styles.dart';
import 'package:i_assistant/presentation/widgets/buttons/custom_button.dart';
import 'package:i_assistant/utils/constants/shift_type.dart';
import 'package:i_assistant/utils/shared_prefs.dart';
import 'package:intl/intl.dart';

import '../../../resources/app_colors.dart';
import '../../../widgets/dialogs/date_picker_dialog.dart';

class ShiftScheduleBottomSheet extends StatelessWidget {
  final DateTime startDate;
  final ShiftScheduleState? startState;
  final Function(ShiftScheduleState state)? onDelete;
  final Function()? useCalendar;
  final Function(List<ShiftType> types,
      {required DateTime start, required DateTime end})? onCalculate;

  const ShiftScheduleBottomSheet(
      {super.key,
      this.onDelete,
      required this.startDate,
      this.useCalendar,
      this.onCalculate, this.startState});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) {
        return ShiftScheduleBloc(startDate, startState);
      },
      child: BlocBuilder<ShiftScheduleBloc, ShiftScheduleState>(
          builder: (context, state) {
        return Material(
            elevation: 0,
            color: Colors.transparent,
            child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(mainAxisSize: MainAxisSize.min, children: [
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
                  CustomButton(
                    title: 'Отметить смены вручную',
                    bg: AppColors.lightBlue,
                    onTap: () {
                      Navigator.pop(context);
                      useCalendar?.call();
                    },
                    textColor: AppColors.blue,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Составить график',
                        style:
                            AppStyles.mediumHead.copyWith(color: Colors.black),
                      ),
                      if (onDelete != null)
                        SizedBox(
                          width: 48,
                          height: 48,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.zero,
                                  backgroundColor: Colors.white,elevation: 0),
                              onPressed: () {
                                Navigator.pop(context);
                                onDelete?.call(state);
                              },
                              child: SizedBox(height: 20,
                                child: SvgPicture.asset(
                                    'assets/images/svg/trash.svg', color: Colors.black, height: 20, fit: BoxFit.contain,),
                              )),
                        ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      context
                          .read<ShiftScheduleBloc>()
                          .add(const ShiftScheduleEvent.select(0));
                    },
                    child: SheduleRow(
                        selected: state.selectedRowIndex == 0,
                        types: [
                          ShiftType.night,
                          ShiftType.night,
                          ShiftType.empty,
                          ShiftType.empty
                        ]),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      context
                          .read<ShiftScheduleBloc>()
                          .add(const ShiftScheduleEvent.select(1));
                    },
                    child: SheduleRow(
                        selected: state.selectedRowIndex == 1,
                        types: [
                          ShiftType.night,
                          ShiftType.night,
                          ShiftType.night,
                          ShiftType.empty,
                          ShiftType.empty,
                          ShiftType.empty
                        ]),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      context
                          .read<ShiftScheduleBloc>()
                          .add(const ShiftScheduleEvent.select(2));
                    },
                    child: SheduleRow(
                        selected: state.selectedRowIndex == 2,
                        types: [
                          ShiftType.day,
                          ShiftType.night,
                          ShiftType.empty,
                          ShiftType.empty
                        ]),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      context
                          .read<ShiftScheduleBloc>()
                          .add(const ShiftScheduleEvent.select(3));
                    },
                    child: SheduleRow(
                        selected: state.selectedRowIndex == 3,
                        types: [
                          ShiftType.day,
                          ShiftType.night,
                          ShiftType.day,
                          ShiftType.empty,
                          ShiftType.empty,
                          ShiftType.empty
                        ]),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      context
                          .read<ShiftScheduleBloc>()
                          .add(const ShiftScheduleEvent.select(4));
                    },
                    child: EmptyScheduleRow(
                        selected: state.selectedRowIndex == 4,
                        controller: state.controller),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Выберите период расчёта',
                        style: AppStyles.bodyBlackBold,
                      )),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (_) {
                                  return Center(
                                    child: CustomDatePickerDialog(
                                      initialDate: state.startDate,
                                    ),
                                  );
                                }).then((value) {
                              context.read<ShiftScheduleBloc>().add(
                                  ShiftScheduleEvent.changeStartDate(value));
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: AppColors.containerGrey),
                            padding: const EdgeInsets.all(20),
                            child: Text(DateFormat('dd.MM.yyyy')
                                .format(state.startDate)),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (_) {
                                  return Center(
                                    child: CustomDatePickerDialog(
                                      initialDate: state.endDate,
                                    ),
                                  );
                                }).then((value) {
                              context
                                  .read<ShiftScheduleBloc>()
                                  .add(ShiftScheduleEvent.changeEndDate(value));
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: AppColors.containerGrey),
                            padding: const EdgeInsets.all(20),
                            child: Text(
                                DateFormat('dd.MM.yyyy').format(state.endDate)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: CustomButton(
                        title: 'Отмена',
                        bg: Colors.white,
                        textColor: Colors.black,
                        onTap: () {
                          Navigator.pop(context);
                        },
                      )),
                      const SizedBox(
                        width: 4,
                      ),
                      Expanded(
                        child: CustomButton(
                          title: 'Рассчитать',
                          onTap: !state.canCalculate
                              ? null
                              : () {
                                  final list = () {
                                    switch (state.selectedRowIndex) {
                                      case 0:
                                        return [
                                          ShiftType.night,
                                          ShiftType.night,
                                          ShiftType.empty,
                                          ShiftType.empty
                                        ];
                                      case 1:
                                        return [
                                          ShiftType.night,
                                          ShiftType.night,
                                          ShiftType.night,
                                          ShiftType.empty,
                                          ShiftType.empty,
                                          ShiftType.empty
                                        ];
                                      case 2:
                                        return [
                                          ShiftType.day,
                                          ShiftType.night,
                                          ShiftType.empty,
                                          ShiftType.empty
                                        ];
                                      case 3:
                                        return [
                                          ShiftType.day,
                                          ShiftType.night,
                                          ShiftType.day,
                                          ShiftType.empty,
                                          ShiftType.empty,
                                          ShiftType.empty
                                        ];
                                      default:
                                        return state.controller.types
                                            .map((e) =>
                                                e == null ? ShiftType.empty : e)
                                            .toList();
                                    }
                                  }();
                                  Navigator.pop(context);

                                  onCalculate?.call(list,
                                      start: state.startDate,
                                      end: state.endDate);
                                },
                          active: state.canCalculate,
                          textColor:
                              !state.canCalculate ? AppColors.mediumGrey : null,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ])));
      }),
    );
  }
}
