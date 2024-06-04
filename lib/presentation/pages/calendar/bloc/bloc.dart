import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:i_assistant/data/repositories/calendar_repository.dart';
import 'package:i_assistant/utils/constants/shift_type.dart';
import 'package:i_assistant/utils/extensions/date_extension.dart';
import 'package:i_assistant/utils/shared_prefs.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../domain/entities/calendar_day/calendar_day.dart';

part 'event.dart';
part 'state.dart';
part 'bloc.freezed.dart';

class CalendarBloc extends Bloc<CalendarEvent, CalendarState> {
  CalendarBloc() : super(const _Calendar(month: 0, year: 2024, days: [], selectedDay: null, canCleanShiftTypes: false)) {
    _init();
    on<CalendarEvent>((events, emit) async {
       events.map(selectDay: _selectDay, changeDate: _changeDate, selectShiftTypes: _selectShiftTypes, addShiftType: _addShiftType, confirmShiftTypesChanges: _confirmShiftTypesChanges, getShiftTypes: _getShiftTypes, removeAllShiftTypes: _removeAllShiftTypes);
    }
    );
  }

  _selectDay (_SelectDay value) async {
    _selectedDay = value.day;
    if(state is _Calendar)
    emit(CalendarState.calendar(month: _monthIndex, year: _year, days: _days, selectedDay: _selectedDay, canCleanShiftTypes: _canCleanShiftTypes));
    else {
      emit(_ShiftType(month: _monthIndex, year: _year, days: _days, changedDays: _daysShiftTypes, selectedDay: _selectedDay));

    }
  }

  _changeDate (_ChangeDate value ) async {
    _monthIndex = value.dateTime.month;
    _year = value.dateTime.year;
    _days = [..._getCalendarDays().map((e) => CalendarDay(id: 0, date: e, tasks: [], birthDays: [], textNotes: [], voiceNotes: [], shiftType: ShiftType. empty)).toList()];
    final __days = [...await _calendarRepo.getCalendarDays(startPeriod: _days.first.date, endPeriod: _days.last.date)];
    debugPrint('${_days.first.date.toIso8601String()} ${_days.last.date.toIso8601String()}');
    for(var item in __days) {
      final index = _days.map((e) => e.date).toList().indexOf(item.date);
      if(index > 0) {
        _days[index] = item;
      }
    }
    await _checkIfCanCleanShiftTypes();

    emit(CalendarState.calendar(month: _monthIndex, year: _year, days: _days, selectedDay: _selectedDay, canCleanShiftTypes: _canCleanShiftTypes));

  }

  _addShiftType (_AddShiftType value ) async {
    final _index = _daysShiftTypes.map((e) => e.date).toList().indexOf(value.calendarDay.date);
    if(_index < 0) {
      _daysShiftTypes.add(value.calendarDay.copyWith(shiftType: value.value));
    } else {
      _daysShiftTypes.removeAt(_index);
      _daysShiftTypes.insert(_index, value.calendarDay.copyWith(shiftType: value.value));
    }
    _selectedDay = value.calendarDay.copyWith(shiftType: value.value);
    emit(_ShiftType(month: _monthIndex, year: _year, days: _days, changedDays: _daysShiftTypes, selectedDay: _selectedDay));
  }

  _selectShiftTypes (_SelectShiftTypes value) async {
    if(value.value) {
      _daysShiftTypes = [];
      emit(_ShiftType(month: _monthIndex, year: _year, days: _days, changedDays: _daysShiftTypes, selectedDay: _selectedDay));
    } else {
      emit(_Calendar(month: _monthIndex, year: _year, days: _days, selectedDay: _selectedDay, canCleanShiftTypes: _canCleanShiftTypes));
    }
  }


  final _calendarRepo = CalendarRepositoryImpl();

  int _monthIndex = 0;
  int _year = 0;
  List<CalendarDay> _days = [];
  List<CalendarDay> _daysShiftTypes = [];
  bool _canCleanShiftTypes = false;
  CalendarDay? _selectedDay;

  _init () async {
    final now = DateTime.now();
    _monthIndex = now.month;
    _year = now.year;
    _days = [..._getCalendarDays().map((e) => CalendarDay(id: 0, date: e, tasks: [], birthDays: [], textNotes: [], voiceNotes: [], shiftType: ShiftType. empty)).toList()];
    final __days = (await _calendarRepo.getCalendarDays(startPeriod: _days.first.date, endPeriod: _days.last.date));
    debugPrint('a' + __days.map((e) => e.shiftType).toList().toString());

    for(var item in __days) {

      final index = _days.map((e) => e.date).toList().indexOf(item.date);
      if(index > 0) {
        _days[index] = item;
        debugPrint(item.shiftType.toString());
      }
    }
    await _checkIfCanCleanShiftTypes();

    emit(CalendarState.calendar(month: _monthIndex, year: _year, days: _days, selectedDay: _selectedDay, canCleanShiftTypes: _canCleanShiftTypes));


  }




  List<DateTime> _getCalendarDays({DateTime? start, DateTime? end}) {
    final DateTime previousMonth = start??
    DateTime(_year, _monthIndex - 1);
    final DateTime nextMonth = end ??
    DateTime(_year, _monthIndex + 1);
    List<DateTime> dayList = [];

    if(start != null && end != null)  {
      dayList.add(start);
      int day = 1;
      while (dayList.last.isBefore(end)) {
        dayList.add(start.add(Duration(days: day)));
        day++;
      }
      return dayList;
    }

    for (int i = 0; i < _getMonthLength(DateTime(_year, _monthIndex)); i++) {


      dayList.add(DateTime(_year, _monthIndex, i + 1));
    }
    dayList = _getInactiveDays(previousMonth).toList() +
        dayList +
        _getInactiveDays(nextMonth);
    return dayList;
  }

  _confirmShiftTypesChanges (_ConfirmShiftTypesChanges value) async {
    List<CalendarDay> __days = _daysShiftTypes.isEmpty ? _days : _days.map((e) => _daysShiftTypes!.firstWhere((element) => element.date == e.date, orElse: () => e)).toList();
    _days = __days;
    _calendarRepo.setCalendarDays(_daysShiftTypes);
    add(CalendarEvent.selectShiftTypes(false));
  }

  _getShiftTypes (_GetShiftTypes value) async {
    final __days = [..._getCalendarDays(start: value.start, end: value.end).map((e) => CalendarDay(id: 0, date: e, tasks: [], birthDays: [], textNotes: [], voiceNotes: [], shiftType: ShiftType. empty)).toList()];
    final ___days = await _calendarRepo.getCalendarDays(startPeriod: _days.first.date, endPeriod: _days.last.date);
    for(var item in ___days) {
      final index = __days.map((e) => e.date).toList().indexOf(item.date);
      if(index > 0) {
        __days[index] = item;
      }
    }
    for(var item in __days) {
      final index = _days.map((e) => e.date).toList().indexOf(item.date);
      if(index > 0) {
        _days[index] = item;
      }
    }
    if(value.shiftTypes.length < 7) {
      int currentIndex = 0;

      int maxIndex = value.shiftTypes.length;
      for(var i = 0; i < __days.length; i++) {
        __days[i] = __days[i].copyWith(shiftType: value.shiftTypes[currentIndex]);
        currentIndex++;
        if(currentIndex == maxIndex) {
          currentIndex = 0;
        }
      }
    } else {

      for(var i = 0; i < __days.length; i++) {
        __days[i] = __days[i].copyWith(shiftType: value.shiftTypes[__days[i].date.weekday - 1]);

      }
    }
    await _calendarRepo.setCalendarDays(__days);
    add(CalendarEvent.changeDate(DateTime(_year, _monthIndex)));

  }

  _removeAllShiftTypes(_RemoveAllShiftTypes value) async {
    final __days = [...await _calendarRepo.getCalendarDays()];
    await _calendarRepo.setCalendarDays(__days.map((e) => e.copyWith(shiftType: ShiftType.empty)).toList());
    add(CalendarEvent.changeDate(DateTime(_year, _monthIndex)));



  }


  List<DateTime> _getInactiveDays(DateTime someMonth) {
    List<DateTime> list = [];
    if (someMonth.month < _monthIndex &&
        someMonth.year <= _year) {
      final DateTime firstDayInCurrentMonth =
      DateTime(_year, _monthIndex, 1);
      if (firstDayInCurrentMonth.weekday > 1)
       {
         final now = DateTime(_year, _monthIndex);
         final firstDayOfMonth = DateTime(now.year, now.month, 1);
         final lastDayOfMonth = DateTime(now.year, now.month + 1, 0);

         final firstDayOfWeek = firstDayOfMonth.subtract(Duration(days: firstDayOfMonth.weekday - 1));

         final daysOutsideCurrentMonth = <DateTime>[];

         for (var i = 0; i < 7; i++) {
           final day = firstDayOfWeek.add(Duration(days: i));
           if (day.month != now.month) {
             daysOutsideCurrentMonth.add(day);
           }
         }

         return daysOutsideCurrentMonth;
       }
    } else if (someMonth.month > _monthIndex &&
        someMonth.year < _year) {
      final DateTime firstDayInCurrentMonth =
      DateTime(_year, _monthIndex, 1);
      if (firstDayInCurrentMonth.weekday > 1)
        for (int i = 1; i < firstDayInCurrentMonth.weekday; i++) {
          list.add(someMonth.copyWith(day: _getMonthLength(someMonth) - 1 - i));
        }
    } else {
      final DateTime lastDayInCurrentMonth = DateTime(
          _year, _monthIndex, _getMonthLength(DateTime.now().copyWith(month: _monthIndex)));
      if (lastDayInCurrentMonth.weekday < 7)
        for (int i = 1; i <= 7 - lastDayInCurrentMonth.weekday; i++) {
          list.add( someMonth.copyWith(day: i));
        }
    }
    return list;
  }

  int _getMonthLength(DateTime currentMonth) =>
      new DateTime(_year, _monthIndex + 1, 0).day;

  Future<bool> _checkIfCanCleanShiftTypes () async {
    final __days = await _calendarRepo.getCalendarDays();
    for(var day in __days) {
      if(day.shiftType != ShiftType.empty) {
        _canCleanShiftTypes = true;
        return true;
      }
    }
    return false;
  }
}

