import 'package:i_assistant/domain/entities/calendar_day/calendar_day.dart';

class CalendarEntity {
  final int year;
  final int month;
  final List<CalendarDay> days;

  CalendarEntity({required this.year, required this.month, required this.days});
}