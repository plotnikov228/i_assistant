import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:i_assistant/utils/extensions/calendar_day_extension.dart';
import 'package:i_assistant/utils/extensions/date_extension.dart';

import '../../../domain/entities/calendar_day/calendar_day.dart';
import '../../database/hive_database.dart';

abstract class CalendarLocalDataSource {
  @override
  Future<List<CalendarDay>> getCalendarDays({DateTime? startPeriod, DateTime? endPeriod});
  @override
  Future<List<CalendarDay>> setCalendarDays(List<CalendarDay> list);
}

class CalendarLocalDataSourceImpl extends CalendarLocalDataSource {
  @override
  Future<List<CalendarDay>> getCalendarDays({DateTime? startPeriod, DateTime? endPeriod}) async {
    await HiveDatabase.initDB();
    await HiveDatabase.openBox(HiveDBTags.calendarDays);
    final dataList = (await HiveDatabase.getBox(HiveDBTags.calendarDays));
    if(startPeriod != null && startPeriod == endPeriod) {
      dataList.removeWhere((element) => !startPeriod.equalDate(DateTime.parse(jsonDecode(element)['date'])));
    }
    final list = [...(dataList.map((e) => CalendarDay.fromJson(jsonDecode(e))).toList()).sortByDate()];

    return list;
  }

  @override
  Future<List<CalendarDay>> setCalendarDays(List<CalendarDay> list)  async {
    final _sortedListForChanges = (list).sortByDate();
    final _fullList = [...await getCalendarDays()];
    for (var day in _sortedListForChanges) {
      int index = _fullList.indexWhere((obj1) => obj1.date == day.date);
      if (index != -1) {
        _fullList[index] = day;
      } else {
        _fullList.add(day);
      }
    }
    await HiveDatabase.deleteBox(HiveDBTags.calendarDays);
    await HiveDatabase.openBox(HiveDBTags.calendarDays);
    for(var item in _fullList) {
      await HiveDatabase.setBox(
          item.toJson(), HiveDBTags.calendarDays);
    }
    return _fullList;



  }
}