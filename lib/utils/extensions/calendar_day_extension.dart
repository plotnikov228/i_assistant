import 'package:i_assistant/domain/entities/calendar_day/calendar_day.dart';

extension CalendarDayListExtension on List<CalendarDay> {
  List<CalendarDay> sortByDate () {
    final _list = [...this];
    _list.sort((a, b) {
      return a.date.compareTo(b.date);
    });
    return _list;
  }
}