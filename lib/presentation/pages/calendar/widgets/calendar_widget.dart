import 'package:flutter/material.dart';

import '../../../../domain/entities/calendar_day/calendar_day.dart';
import '../../../resources/app_styles.dart';
import 'calendar_day_widget.dart';

class CalendarWidget extends StatelessWidget {
  final List<CalendarDay> calendarDays;
  final List<CalendarDay>? activeCalendarDays;
  final CalendarDay? selected;
  final int month;
  final Function(CalendarDay)? onTap;
  const CalendarWidget({super.key, required this.calendarDays, this.selected, this.onTap, required this.month, this.activeCalendarDays});

  @override
  Widget build(BuildContext context) {
    List<CalendarDay> _days = activeCalendarDays == null ? calendarDays : calendarDays.map((e) => activeCalendarDays!.firstWhere((element) => element.date == e.date, orElse: () => e)).toList();
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: 20, horizontal: 20),
      child: Center(
        child: GridView.count(
          shrinkWrap: true,
          crossAxisCount: 7,
          children: ['ПН', 'ВТ', 'СР', 'ЧТ', 'ПТ', 'СБ', 'ВС']
              .map<Widget>((e) => SizedBox(
            height: 47,
            width: 47,
            child: Center(
              child: Text(
                e,
                style: AppStyles.bodyBlackBold,
              ),
            ),
          ))
              .toList() +
              _days
                  .map<Widget>((e) => CalendarDayWidget(
                onTap: () {
                  onTap?.call(e);
                  //context.read<CalendarBloc>().add(
                  //    CalendarEvent.selectDay(e));
                },
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
