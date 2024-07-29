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
  final double size;
  final double? fontSize;
  final double circleSize;

  const CalendarDayWidget(
      {super.key,
      required this.calendarDay,
      this.selected = false,
      this.currentMonth = true,
      this.onTap, this.size = 48, this.fontSize, this.circleSize = 4});

  Widget _bigCircle(ShiftType shiftType, {required Widget child, bool selected = false}) {
    if (shiftType != ShiftType.both) {
      final _color =  shiftType == ShiftType.night
          ? AppColors.night
          : shiftType == ShiftType.day
              ? AppColors.day
              : selected ?  AppColors.lightGrey : AppColors.dividerGrey;
      return Container(

        height: size,
        width: size,
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: _color,
          ),
          padding: EdgeInsets.all(0),
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
                  width: size,
                  child: Container(
                    width: (size / 2).toDouble(),
                    height: size,
                    decoration: BoxDecoration(color: [AppColors.day, AppColors.night][index]),
                  ),
                );
              }),
            ),
          ),
        ),
        Container(
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
        child: Stack(
          alignment: Alignment.center,
          clipBehavior: Clip.none,
          children: [
            fontSize == null ? Text(
              calendarDay.date.day.toString(),
              style: AppStyles.bodyBlackBold.copyWith(
                  fontSize: fontSize,
                  color: (calendarDay.date.weekday > 5
                      ? AppColors.red
                      : AppColors.black)
                      .withOpacity(currentMonth ? 1 : 0.25)),
            ) :
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                calendarDay.date.day.toString(),
                style: AppStyles.bodyBlackBold.copyWith(
                  fontSize: fontSize,
                    color: (calendarDay.date.weekday > 5
                            ? AppColors.red
                            : AppColors.black)
                        .withOpacity(currentMonth ? 1 : 0.25)),
              ),
            ),
            Positioned(
                bottom: -(circleSize / 2),
                right: 0,
                left: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if(calendarDay.textNotes.isNotEmpty || calendarDay.voiceNotes.isNotEmpty || calendarDay.tasks.isNotEmpty)
                      Container(
                      height: circleSize,
                      width: circleSize,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red,
                      ),
                    ),
                    if(calendarDay.birthDays.isNotEmpty && (calendarDay.textNotes.isNotEmpty || calendarDay.voiceNotes.isNotEmpty || calendarDay.tasks.isNotEmpty))
                      SizedBox(width: circleSize / 3,),
                    if(calendarDay.birthDays.isNotEmpty)
                      Container(
                        height: circleSize,
                        width: circleSize,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.blue,
                        ),
                      ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
