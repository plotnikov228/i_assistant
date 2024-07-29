import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:i_assistant/data/database/hive_database.dart';
import 'package:i_assistant/data/repositories/birthdays_repository.dart';
import 'package:i_assistant/data/repositories/calendar_repository.dart';
import 'package:i_assistant/domain/entities/note/note.dart';
import 'package:i_assistant/domain/entities/note/text_note/text_note.dart';
import 'package:i_assistant/domain/entities/note/voice_note/voice_note.dart';
import 'package:i_assistant/utils/constants/shift_type.dart';
import 'package:i_assistant/utils/extensions/date_extension.dart';
import 'package:i_assistant/utils/shared_prefs.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../data/repositories/notes_repository_impl.dart';
import '../../../../domain/entities/calendar_day/calendar_day.dart';
import '../../../../domain/entities/task/task.dart';

part 'event.dart';

part 'state.dart';

part 'bloc.freezed.dart';

class DayBloc extends Bloc<DayEvent, DayState> {
  final CalendarDay day;

  DayBloc(this.day)
      : super(_Loaded(
            dateTime: day.date,
            textNotes: [],
            audioNotes: [],
            tasks: [],
            birthDays: [],
            shiftType: ShiftType.empty,
            canGoToToday: false)) {
    _init();
    on<DayEvent>((events, emit) async {
      events.map(
          addTextNote: _addTextNote,
          addVoiceNote: _addVoiceNote,
          goToDay: _goToToday,
          selectShiftType: _selectShiftType,
          removeNote: _removeVoiceNote,
          addTask: _addTask,
          addBirthday: _addBirthday,
          selectTask: _selectTask, removeTask: _removeTask, removeBirthday: _removeBirthday, removeAllData: _removeAllData);
    });
  }

  final _notesRepo = NotesRepositoryImpl();
  final _calendarRepo = CalendarRepositoryImpl();
  final _taskRepo = TasksRepositoryImpl(hiveDBTag: HiveDBTags.tasks);
  final _birthdayRepo = TasksRepositoryImpl(hiveDBTag: HiveDBTags.birthdays);


  _removeAllData (_RemoveAllData value) async {
      await _taskRepo.removeTasks(_tasks.map((e) => e.id).toList());
      await _notesRepo.removeNotes(_textNotes .map((e) => e.id).toList() + _audioNotes .map((e) => e.id).toList());
      await _birthdayRepo.removeTasks(_birthdays.map((e) => e.id).toList());
      await _taskRepo.removeTasks(_tasks.map((e) => e.id).toList());
      _tasks = [];
      _textNotes = [];
      _audioNotes = [];
      _birthdays = [];
      add(DayEvent.selectShiftType(ShiftType.empty));
  }

  _removeBirthday (_RemoveBirthday value) async {
    await _birthdayRepo.removeTasks(
        [value.task.id]);
    await _getDayInfo();
  }

  _removeTask (_RemoveTask value) async {
    await _taskRepo.removeTasks(
        [value.task.id]);
    await _getDayInfo();
  }

  _selectTask(_SelectTask value) async {
    await _taskRepo.setTasks(
        [value.task.copyWith(selected: value.task.selected ? false : true)]);
    await _getDayInfo();
  }

  _addTask(_AddTask value) async {
    await _taskRepo.setTasks([value.task]);
    await _getDayInfo();
  }

  _addBirthday(_AddBirthday value) async {
    await _birthdayRepo.setTasks([value.task]);
    await _getDayInfo();
  }

  _init() async {
    _dateTime = day.date;
    await _getDayInfo();
  }

  List<TextNote> _textNotes = [];
  List<VoiceNote> _audioNotes = [];
  List<Task> _tasks = [];
  List<Task> _birthdays = [];
  ShiftType _shiftType = ShiftType.empty;
  late DateTime _dateTime;

  _selectShiftType(_SelectShiftType value) async {
    _shiftType = value.shiftType;
    final daysInDate = await _calendarRepo.getCalendarDays(
        startPeriod: _dateTime, endPeriod: _dateTime);
    if (daysInDate.isEmpty) {
      _calendarRepo
          .setCalendarDays([CalendarDay(id: 0, date: _dateTime, tasks: [], birthDays: [], textNotes: [], voiceNotes: [], shiftType: ShiftType.empty).copyWith(shiftType: _shiftType)]);
    } else {
      _calendarRepo
          .setCalendarDays([daysInDate.first.copyWith(shiftType: _shiftType)]);
    }
    emit(_Loaded(
        dateTime: _dateTime,
        textNotes: _textNotes,
        audioNotes: _audioNotes,
        tasks: _tasks,
        birthDays: _birthdays,
        shiftType: _shiftType,
        canGoToToday: !_dateTime.equalDate(DateTime.now())));
  }

  _removeVoiceNote(_RemoveVoiceNote value) async {
    await _notesRepo.removeNotes([value.note.id]);
    if(value.note.isText()) {
      _textNotes.removeWhere((e) => e.id == value.note.id);
    } else {
      _audioNotes.removeWhere((e) => e.id == value.note.id);
    }

    await _getDayInfo();
  }

  _getDayInfo() async {
    final _notes = await _notesRepo.getNotesByDate(_dateTime);

    _textNotes = _notes
        .where((element) => element.isText())
        .map((e) => e.text())
        .toList();
    _audioNotes = _notes
        .where((element) => !element.isText())
        .map((e) => e.voice())
        .toList();
    _tasks = await _taskRepo.getTasksByDate(_dateTime);
    _birthdays = await _birthdayRepo.getTasksByDate(_dateTime);

    final daysInDate = await _calendarRepo.getCalendarDays(
        startPeriod: _dateTime, endPeriod: _dateTime);
    if (daysInDate.isNotEmpty) {
      _shiftType = daysInDate.first.shiftType;
      debugPrint(_shiftType.toString());
    } else {
      _shiftType = ShiftType.empty;
    }

    emit(_Loaded(
        dateTime: _dateTime,
        textNotes: _textNotes,
        audioNotes: _audioNotes,
        tasks: _tasks,
        birthDays: _birthdays,
        shiftType: _shiftType,
        canGoToToday: !_dateTime.equalDate(DateTime.now())));
  }

  _addTextNote(_AddTextNote value) async {

    await _notesRepo.setNotes([
      Note.fromJson(value.text.toJson())
    ]);
    await _getDayInfo();
  }

  _addVoiceNote(_AddVoiceNote value) async {
    await _notesRepo.setNotes([Note.fromJson(value.voiceNote.toJson())]);
    await _getDayInfo();
  }

  _goToToday(_GoToToday value) async {
    if (value.nextOrPrev != null) {
      _dateTime = _dateTime.copyWith(
          day: value.nextOrPrev! ? _dateTime.day + 1 : _dateTime.day - 1);
    } else {
      _dateTime = DateTime.now().copyWith(hour: 0, minute: 0, second: 0);
    }
    await _getDayInfo();
  }
}
