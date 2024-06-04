import 'dart:convert';

import 'package:flutter/cupertino.dart';

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
    final list = [..._sortByDate((await HiveDatabase.getBox(HiveDBTags.calendarDays)).map((e) => CalendarDay.fromJson(jsonDecode(e))).toList())];

    debugPrint(list.length.toString());
    return list;
  }

  @override
  Future<List<CalendarDay>> setCalendarDays(List<CalendarDay> list)  async {
    final _sortedListForChanges = _sortByDate(list);
    final _fullList = [...await getCalendarDays()];
    for (var day in _sortedListForChanges) {
      int index = _fullList.indexWhere((obj1) => obj1.date == day.date);
      if (index != -1) {
        _fullList[index] = day;
      } else {
        _fullList.add(day);
      }
    }
    debugPrint(_fullList.toString());
    await HiveDatabase.deleteBox(HiveDBTags.calendarDays);
    await HiveDatabase.openBox(HiveDBTags.calendarDays);
    for(var item in _fullList) {
      await HiveDatabase.setBox(
          item.toJson(), HiveDBTags.calendarDays);
    }
    return _fullList;



  }

  List<CalendarDay> _sortByDate (List<CalendarDay> list) {
    final _list = [...list];
    _list.sort((a, b) {
        return a.date.compareTo(b.date);
      });
    return _list;
  }
}