import 'package:i_assistant/domain/entities/calendar_day/calendar_day.dart';

abstract class CalendarRepository {
  Future<List<CalendarDay>> getCalendarDays ({DateTime? startPeriod, DateTime? endPeriod});
  Future<List<CalendarDay>> setCalendarDays (List<CalendarDay> list);
}