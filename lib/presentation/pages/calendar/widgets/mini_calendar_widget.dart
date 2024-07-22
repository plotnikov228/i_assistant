
import 'package:flutter/material.dart';

import '../../../../domain/entities/calendar_day/calendar_day.dart';
import '../../../resources/app_styles.dart';
import 'calendar_day_widget.dart';

class MiniCalendarWidget extends StatelessWidget {
  final List<CalendarDay> calendarDays;
  final List<CalendarDay>? activeCalendarDays;
  final CalendarDay? selected;
  final int month;
  final Function(CalendarDay)? onTap;
  const MiniCalendarWidget({super.key, required this.calendarDays, this.selected, this.onTap, required this.month, this.activeCalendarDays});

  @override
  Widget build(BuildContext context) {
    List<CalendarDay> _days = activeCalendarDays == null ? calendarDays : calendarDays.map((e) => activeCalendarDays!.firstWhere((element) => element.date == e.date, orElse: () => e)).toList();
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: 0, horizontal: 2),
      child: Center(
        child: GridView.count(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,

          crossAxisCount: 7,
          children:
          _days
              .map<Widget>((e) => e.date.month != month ? SizedBox(
            height: 20,
            width: 20,
            child: Center(
              child: Text(
                '',
                style: AppStyles.bodyBlackBold.copyWith(fontSize: 10),
              ),
            ),
          ) : CalendarDayWidget(
            onTap: () {
              onTap?.call(e);
              //context.read<CalendarBloc>().add(
              //    CalendarEvent.selectDay(e));
            },
            fontSize: 9,
            size: 20,
            circleSize: 2,
            calendarDay: e,
            selected:
            selected?.date == e.date,
            currentMonth:
            e.date.month == month,
          ))
              .toList(),
        ),
      ),
    );
  }
}