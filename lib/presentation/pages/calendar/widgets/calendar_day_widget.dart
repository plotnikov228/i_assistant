import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:i_assistant/presentation/pages/calendar/widgets/shift_widget.dart';
import 'package:i_assistant/presentation/resources/app_colors.dart';
import 'package:i_assistant/presentation/resources/app_styles.dart';
import 'package:i_assistant/utils/constants/shift_type.dart';

import '../../../../domain/entities/calendar_day/calendar_day.dart';

//343
class CalendarDayWidget extends StatelessWidget {
  final CalendarDay calendarDay;
  final bool selected;
  final bool currentMonth;
  final Function()? onTap;

  const CalendarDayWidget(
      {super.key,
      required this.calendarDay,
      this.selected = false,
      this.currentMonth = true,
      this.onTap});

  Widget _bigCircle(ShiftType shiftType, {required Widget child, bool selected = false}) {
    if (shiftType != ShiftType.both) {
      final _color =  shiftType == ShiftType.night
          ? AppColors.night
          : shiftType == ShiftType.day
              ? AppColors.day
              : selected ?  AppColors.lightGrey : Colors.white;
      return Container(
        height: 48,
        width: 48,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: _color,
        ),
        padding: EdgeInsets.all(2),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
                color: selected ? Colors.white : Colors.transparent,
                width: 2),
            shape: BoxShape.circle,
          ),
          width: double.infinity,
          height: double.infinity,
          child: Center(
            child: child,
          ),
        ),
      );
    }
    return Stack(
      children: [
        Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),

            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: List.generate(2, (index) {
                return HalfCircle(
                  left: index == 0,
                  width: 48,
                  child: Container(
                    width: (48 / 2).toDouble(),
                    height: 48,
                    decoration: BoxDecoration(color: [AppColors.day, AppColors.night][index]),
                  ),
                );
              }),
            ),
          ),
        ),
        Padding(padding: EdgeInsets.all(3),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
                color: selected ? Colors.white : Colors.transparent,
                width: 2),
            shape: BoxShape.circle,
          ),
          width: double.infinity,
          height: double.infinity,
          child: Center(
            child: child,
          ),
        ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: _bigCircle(

        calendarDay.shiftType,
        selected: selected,
        child: Text(
          calendarDay.date.day.toString(),
          style: AppStyles.bodyBlackBold.copyWith(
              color: (calendarDay.date.weekday > 5
                      ? AppColors.red
                      : Colors.black)
                  .withOpacity(currentMonth ? 1 : 0.25)),
        ),
      ),
    );
  }
}
