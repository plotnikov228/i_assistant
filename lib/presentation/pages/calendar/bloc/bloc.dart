import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:i_assistant/data/database/hive_database.dart';
import 'package:i_assistant/data/repositories/birthdays_repository.dart';
import 'package:i_assistant/data/repositories/calendar_repository.dart';
import 'package:i_assistant/data/repositories/notes_repository_impl.dart';
import 'package:i_assistant/domain/entities/task/task.dart';
import 'package:i_assistant/utils/constants/shift_type.dart';
import 'package:i_assistant/utils/extensions/date_extension.dart';
import 'package:i_assistant/utils/shared_prefs.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../domain/entities/calendar_day/calendar_day.dart';
import 'models/calendar_entity.dart';
import 'models/year_entity.dart';

part 'event.dart';
part 'state.dart';
part 'bloc.freezed.dart';

class CalendarBloc extends Bloc<CalendarEvent, CalendarState> {
  CalendarBloc() : super( _Loading(currentCalendar: 1, calendars: [CalendarEntity(year: DateTime.now().year, month: DateTime.now().month, days: []), CalendarEntity(year: DateTime.now().year, month: DateTime.now().month + 1, days: [])], selectedDay: null)) {
    _initialize();
    on<CalendarEvent>((events, emit) async {
       events.map(selectDay: _selectDay, changeDate: _changeDate, selectShiftTypes: _selectShiftTypes, addShiftType: _addShiftType, confirmShiftTypesChanges: _confirmShiftTypesChanges, getShiftTypes: _getShiftTypes, removeAllShiftTypes: _removeAllShiftTypes, fetch: _fetch, addTask: _addTask, addBirthday: _addBirthday, selectCalendar: _selectCalendar, selectYear: _selectYear, goToSelectYear: _goToSelectYear);
    }
    );
  }

  int _selectedCalendar = 1;
  int _selectedYear = 1;

  _goToSelectYear (_GoToSelectYear value) async {

    if(state is _Year) {
      _initialize();
      return;
    }else {
      emit(_Year(selectedYear: 1, years: [], loading: true));
    }
    Future.delayed(Duration(milliseconds: 200), () async {


      final date = DateTime(_year, _monthIndex);
      _years = [];
      for(int i = -1; i < 2; i++) {
        final monthList = <CalendarEntity>[];

        for(var j = 1; j < 13; j++) {
          await Future.delayed(Duration(milliseconds: 20), () async {
            monthList.add(await _init(j, date.year + i));
          });
      }
      _years.add(YearEntity(year: date.year + i, calendars: monthList));
      }

      _selectedYear = 1;
      print('end -');

      if(state is! _Year) {
        return;
      }
      emit(_Year(selectedYear: _selectedYear, years: _years, loading: false));

    });
}

  _selectYear (_SelectYear value) async {

    _selectedYear = _years.indexOf(_years.firstWhere((element) => value.yearEntity.year == element.year));
    int index = _selectedYear;

    emit(_Year(selectedYear: _selectedYear, years: _years, loading: false));

    if(index == _years.length - 1) {
      final date = DateTime(_years[index].year);
      final monthList = <CalendarEntity>[];

      for(var j = 1; j < 13; j++) {
        print('month - $j');
        await Future.delayed(Duration(milliseconds: 20), () async {
          monthList.add(await _init(j, date.year + 1));
        });
      }
      _years.add(YearEntity(year: date.year + 1, calendars: monthList));


    } else if(index == 0) {
      final date = DateTime(_years[index].year);
      final monthList = <CalendarEntity>[];

      for(var j = 1; j < 13; j++) {
        await Future.delayed(Duration(milliseconds: 20), () async {
          monthList.add(await _init(j, date.year - 1));
        });
      }
      _years.insert(0, YearEntity(year: date.year - 1, calendars: monthList));

      _selectedYear = 1;
    }
    if(state is! _Year) {
      return;
    }
    emit(_Year(selectedYear: _selectedYear, years: _years, loading: true));
    emit(_Year(selectedYear: _selectedYear, years: _years, loading: false));
  }

  _selectCalendar (_SelectCalendar value) async {

    try {
      _selectedCalendar = _calendars.indexOf(
          _calendars.firstWhere((element) => value.calendarEntity.month ==
              element.month && value.calendarEntity.year == element.year));
    }  catch (_) {
      _selectedCalendar = -1;
    }

    int index = _selectedCalendar;
    if(index == _calendars.length - 2) {
      final date = DateTime(_calendars[index].year, _calendars[index].month);
      _calendars.add(await _init(DateTime(date.year, date.month + 2, 1).month, (DateTime(date.year, date.month + 2, 1).year)));

    } else if(index == 1) {
      final date = DateTime(_calendars[index].year, _calendars[index].month);
      _calendars.insert(0, await _init(DateTime(date.year, date.month - 2, 1).month, DateTime(date.year, date.month - 2, 1).year));

      _selectedCalendar = 2;
    } else if (index == -1) {
      _initialize(DateTime(value.calendarEntity.year, value.calendarEntity.month));
      return;
    }
    await _checkIfCanCleanShiftTypes();

    emit(_Calendar(currentCalendar: _selectedCalendar, calendars: _calendars, selectedDay: _selectedDay, canCleanShiftTypes: _canCleanShiftTypes));
  }

  _fetch (_Fetch value) async {
    final date = value.date ?? DateTime( _calendars[_selectedCalendar].year,  _calendars[_selectedCalendar].month) ?? DateTime(_year, _monthIndex);
    _calendars = [];

    await Future.delayed(Duration(milliseconds: 50), ()async {
      _calendars.add(await _init(DateTime(date.year, date.month - 2, 1).month, DateTime(date.year, date.month - 2, 1).year));

    });
    await Future.delayed(Duration(milliseconds: 50), ()async {
      _calendars.add(await _init(DateTime(date.year, date.month - 1, 1).month, DateTime(date.year, date.month - 1, 1).year));

    }); await Future.delayed(Duration(milliseconds: 50), ()async {
      _calendars.add(await _init(date.month, date.year));

    }); await Future.delayed(Duration(milliseconds: 50), ()async {
      _calendars.add(await _init(DateTime(date.year, date.month + 1, 1).month, DateTime(date.year, date.month + 1, 1).year));

    }); await Future.delayed(Duration(milliseconds: 50), ()async {
      _calendars.add(await _init(DateTime(date.year, date.month + 2, 1).month, DateTime(date.year, date.month + 2, 1).year));

    });

    emit(_Calendar(currentCalendar: _selectedCalendar = 2, calendars: _calendars, selectedDay: _selectedDay, canCleanShiftTypes: _canCleanShiftTypes));

  }

  void _initialize ([DateTime? dateTime]) async {
    final now = dateTime ?? DateTime.now();
    final date = DateTime(now.year, now.month);
    _calendars = [];
    _calendars.add(await _init(DateTime(date.year, date.month - 2, 1).month, DateTime(date.year, date.month - 2, 1).year));
    _calendars.add(await _init(DateTime(date.year, date.month - 1, 1).month, DateTime(date.year, date.month - 1, 1).year));
    _calendars.add(await _init(date.month, date.year));
    _calendars.add(await _init(DateTime(date.year, date.month + 1, 1).month, DateTime(date.year, date.month + 1, 1).year));
    _calendars.add(await _init(DateTime(date.year, date.month + 2, 1).month, DateTime(date.year, date.month + 2, 1).year));
    _selectedCalendar = 2;
    await _checkIfCanCleanShiftTypes();
    emit(_Calendar(currentCalendar: _selectedCalendar, calendars: _calendars, selectedDay: _selectedDay, canCleanShiftTypes: _canCleanShiftTypes));

  }

  _addTask(_AddTask value) async {
    await _taskRepo.setTasks([value.task]);
    add(const CalendarEvent.fetch());
  }

  _addBirthday (_AddBirthday value) async {
    await _birthdayRepo.setTasks([value.task]);
    add(const CalendarEvent.fetch());

  }

  _selectDay (_SelectDay value) async {
    _selectedDay = value.day;
    if(state is _Calendar)
      emit(_Calendar(currentCalendar: _selectedCalendar, calendars: _calendars, selectedDay: _selectedDay, canCleanShiftTypes: _canCleanShiftTypes));
    else {
      emit(_ShiftType(currentCalendar: _selectedCalendar, calendars: _calendars, changedDays: _daysShiftTypes, selectedDay: _selectedDay));

    }
  }

  _changeDate (_ChangeDate value ) async {
   /* _monthIndex = value.dateTime.month;
    _year = value.dateTime.year;
    _days = [..._getCalendarDays().map((e) => CalendarDay(id: 0, date: e, tasks: [], birthDays: [], textNotes: [], voiceNotes: [], shiftType: ShiftType. empty)).toList()];
    final __days = [...await _calendarRepo.getCalendarDays(startPeriod: _days.first.date, endPeriod: _days.last.date)];
    for(var item in __days) {
      final index = _days.map((e) => e.date).toList().indexOf(item.date);
      if(index > 0) {
        final notes = await _notesRepo.getNotesByDate(item.date);
        final tasks = await _taskRepo.getTasksByDate(item.date);
        final birthdays = await _birthdayRepo.getTasksByDate(item.date);

        _days[index] = item.copyWith(
            birthDays: birthdays,
            tasks: tasks,
            voiceNotes: notes.where((element) => !element.isText()).toList().map((e) => e.voice()).toList(), textNotes: notes.where((element) => element.isText()).toList().map((e) => e.text()).toList());      }
    }
    await _checkIfCanCleanShiftTypes();

    emit(CalendarState.calendar(month: _monthIndex, year: _year, days: _days, selectedDay: _selectedDay, canCleanShiftTypes: _canCleanShiftTypes));
*/
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
    emit(_ShiftType(currentCalendar: _selectedCalendar, calendars: _calendars, changedDays: _daysShiftTypes, selectedDay: _selectedDay));
  }

  _selectShiftTypes (_SelectShiftTypes value) async {
    if(value.value) {
      _daysShiftTypes = [];
      emit(_ShiftType(currentCalendar: _selectedCalendar, calendars: _calendars, changedDays: _daysShiftTypes, selectedDay: _selectedDay));
    } else {
      for(var item in _calendars) {
        for (var day in _daysShiftTypes) {
          final index = item.days.map((e) => e.date).toList().indexOf(day.date);
          if(index > 0) {
            item.days[index] = day;
          }
        }
      }
      emit(_Calendar(currentCalendar: _selectedCalendar, calendars: _calendars, selectedDay: _selectedDay, canCleanShiftTypes: _canCleanShiftTypes));
    }
  }


  final _calendarRepo = CalendarRepositoryImpl();
  final _notesRepo = NotesRepositoryImpl();
  final _birthdayRepo = TasksRepositoryImpl(hiveDBTag: HiveDBTags.birthdays);
  final _taskRepo = TasksRepositoryImpl(hiveDBTag: HiveDBTags.tasks);

  int _monthIndex = 0;
  int _year = 0;

  List<YearEntity> _years = [];


  List<CalendarEntity> _calendars = [];
  List<CalendarDay> _daysShiftTypes = [];
  bool _canCleanShiftTypes = false;
  CalendarDay? _selectedDay;

  Future<CalendarEntity> _init ([int? month, int? year]) async {
    final now = DateTime.now();
    _monthIndex = month ?? now.month;
    _year = year ?? now.year;
    final _days = [..._getCalendarDays().map((e) => CalendarDay(id: 0, date: e, tasks: [], birthDays: [], textNotes: [], voiceNotes: [], shiftType: ShiftType. empty)).toList()];
    if(month == null)
    await _calendarRepo.getCalendarDays(startPeriod: _days.first.date, endPeriod: _days.last.date);
    for(var i = 0; i < _days.length; i++) {
      final item = _days[i];


      final shiftType = await _calendarRepo.getCalendarDays(startPeriod: item.date, endPeriod: item.date);
      final notes = await _notesRepo.getNotesByDate(item.date);
      final tasks = await _taskRepo.getTasksByDate(item.date);
      final birthdays = await _birthdayRepo.getTasksByDate(item.date);

      _days[i] = item.copyWith(
          birthDays: birthdays,
          tasks: tasks,
          shiftType: shiftType.isEmpty ? ShiftType.empty : shiftType.first.shiftType,
          voiceNotes: notes.where((element) => !element.isText()).toList().map((e) => e.voice()).toList(), textNotes: notes.where((element) => element.isText()).toList().map((e) => e.text()).toList());

    }
    _selectedDay = _days.firstWhere((element) => element.date.day == DateTime.now().day);


    return CalendarEntity(year: _year, month: _monthIndex, days: _days);


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

    await _calendarRepo.setCalendarDays(_daysShiftTypes);

    add(const CalendarEvent.selectShiftTypes(false));

  }

  _getShiftTypes (_GetShiftTypes value) async {
    List<CalendarDay> _days = [];
    final __days = [..._getCalendarDays(start: value.start, end: value.end).map((e) => CalendarDay(id: 0, date: e, tasks: [], birthDays: [], textNotes: [], voiceNotes: [], shiftType: ShiftType. empty)).toList()];
    final ___days = await _calendarRepo.getCalendarDays(startPeriod: value.start, endPeriod: value.end);
    for(var item in ___days) {
      final index = __days.map((e) => e.date).toList().indexOf(item.date);
      if(index > 0) {
        final shiftType = await _calendarRepo.getCalendarDays(startPeriod: item.date, endPeriod: item.date);
        final notes = await _notesRepo.getNotesByDate(item.date);
        final tasks = await _taskRepo.getTasksByDate(item.date);
        final birthdays = await _birthdayRepo.getTasksByDate(item.date);

        _days[index] = item.copyWith(
            birthDays: birthdays,
            tasks: tasks,
            shiftType: shiftType.isEmpty ? ShiftType.empty : shiftType.first.shiftType,
            voiceNotes: notes.where((element) => !element.isText()).toList().map((e) => e.voice()).toList(), textNotes: notes.where((element) => element.isText()).toList().map((e) => e.text()).toList());
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


  }

  _removeAllShiftTypes(_RemoveAllShiftTypes value) async {
    final __days = [...await _calendarRepo.getCalendarDays()];
    await _calendarRepo.setCalendarDays(__days.map((e) => e.copyWith(shiftType: ShiftType.empty)).toList());
    emit(_Calendar(currentCalendar: _selectedCalendar, calendars: _calendars, selectedDay: _selectedDay, canCleanShiftTypes: _canCleanShiftTypes));



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

