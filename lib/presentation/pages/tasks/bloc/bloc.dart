import 'dart:ffi';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:i_assistant/data/database/hive_database.dart';
import 'package:i_assistant/domain/entities/note/text_note/text_note.dart';
import 'package:i_assistant/domain/entities/note/voice_note/voice_note.dart';
import 'package:i_assistant/domain/entities/task/task.dart';
import 'package:i_assistant/utils/extensions/date_extension.dart';
import 'package:i_assistant/utils/extensions/Tasks_extension.dart';
import 'package:i_assistant/utils/shared_prefs.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../data/repositories/birthdays_repository.dart';
import '../../../../domain/entities/note/note.dart';

part 'event.dart';

part 'state.dart';

part 'bloc.freeze.dart';

class TasksBloc extends Bloc<TasksEvent, TasksState> {
  TasksBloc() : super(const _Loaded([])) {
    on<TasksEvent>((events, emit) async {
      events.map(
          create: _createAudioNote,
          removeAllTasks: _removeAllTasks,
          selectTasksMode: _selectTasksMode,
          selectTask: _selectNote,
          removeSelectedTasks: _removeSelectedTasks, fetch: _fetch);
    });
  }

  final _TasksRepo = TasksRepositoryImpl(hiveDBTag: HiveDBTags.tasks);

  _fetch (_Fetch value) async {
    _tasks = await _TasksRepo.getAllTasks();
    emit(_Loaded(_getMatrix()));
  }


  _createAudioNote(_Create value) async {
    final note = Task.fromJson(value.task.toJson());
    _tasks.add(note);
    _tasks = _tasks.sortByDate();

    emit(_Loaded(_getMatrix()));
    _TasksRepo.setTasks([note]);
  }

  _selectTasksMode(_SelectTasksMode value) async {
    final mode = value.mode ?? state is! _Loaded;
    if(mode) {
      _selected = [];
      emit(_SelectTasks(_getMatrix() ,_selected));
      return;
    }
    emit(_Loaded(_getMatrix()));
  }

  _removeAllTasks(_RemoveAllTasks value) async {
    _TasksRepo.removeAllTasks();
    _tasks = [];
    emit(const _Loaded([]));
  }

  _selectNote(_SelectTask value) async {
    if(_selected.contains(value.id)) {
      _selected.remove(value.id);
    } else {
      _selected.add(value.id);
    }
    emit(_SelectTasks(_getMatrix(), _selected));
  }

  _removeSelectedTasks(_RemoveSelectedTasks value) async {


    await  _TasksRepo.removeTasks(value.ids ?? _selected);
    _tasks.removeWhere((element) => (value.ids ?? _selected).contains(element.id));
    _tasks = _tasks.sortByDate();
     if(value.ids==null)
      _selected = [];
     add(const TasksEvent.selectTasksMode(mode: false));
  }

  List<Task> _tasks = [];
  List<int> _selected = [];

  List<List<Task>> _getMatrix() {
    List<List<Task>> matrix = [];
    for (var note in _tasks) {
      final item = matrix.firstWhere((element) => element.isNotEmpty &&
      element.first.dateTime.equalDate(note.dateTime), orElse: () => []);
      if (item.isNotEmpty) {
        final index = matrix.indexOf(item);
        matrix[index].add(note);
      } else if (matrix.isNotEmpty && DateTime.now().equalDate(note.dateTime) && !(matrix.first.first.dateTime.equalDate(DateTime.now()))) {
        matrix.insert(1, [note]);
        matrix.add([]);
      } else
  if (matrix.length > 2) {
        matrix[2].add(note);
      }
      else if (matrix.length > 1) {
        matrix[1].add(note);
      } else
   {
        matrix.add([note]);
      }
    }
    return matrix;
  }
}
