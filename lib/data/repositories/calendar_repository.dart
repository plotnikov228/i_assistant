import 'package:i_assistant/data/data_sources/local_data_sources/calendar_local_data_source.dart';
import 'package:i_assistant/domain/entities/calendar_day/calendar_day.dart';
import 'package:i_assistant/domain/repositories/calendar_repository.dart';

class CalendarRepositoryImpl extends CalendarRepository {
  final _localDataSource = CalendarLocalDataSourceImpl();

  @override
  Future<List<CalendarDay>> getCalendarDays({DateTime? startPeriod, DateTime? endPeriod}) {
    return _localDataSource.getCalendarDays(startPeriod: startPeriod, endPeriod: endPeriod);
  }

  @override
  Future<List<CalendarDay>> setCalendarDays(List<CalendarDay> list) {
    return _localDataSource.setCalendarDays(list);
  }
  
}