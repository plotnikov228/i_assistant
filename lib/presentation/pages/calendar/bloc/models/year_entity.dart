import 'package:i_assistant/presentation/pages/calendar/bloc/models/calendar_entity.dart';

class YearEntity {
  final int year;
  final List<CalendarEntity> calendars;

  YearEntity({required this.year, required this.calendars});
}