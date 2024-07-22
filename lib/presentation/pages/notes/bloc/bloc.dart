import 'dart:ffi';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:i_assistant/domain/entities/note/text_note/text_note.dart';
import 'package:i_assistant/domain/entities/note/voice_note/voice_note.dart';
import 'package:i_assistant/utils/extensions/date_extension.dart';
import 'package:i_assistant/utils/extensions/notes_extension.dart';
import 'package:i_assistant/utils/shared_prefs.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../data/repositories/notes_repository_impl.dart';
import '../../../../domain/entities/note/note.dart';

part 'event.dart';

part 'state.dart';

part 'bloc.freeze.dart';

class NotesBloc extends Bloc<NotesEvent, NotesState> {
  NotesBloc() : super(const _Loaded([])) {
    on<NotesEvent>((events, emit) async {
      events.map(
          createAudioNote: _createAudioNote,
          createTextNote: _createTextNote,
          removeAllNotes: _removeAllNotes,
          selectNotesMode: _selectNotesMode,
          selectNote: _selectNote,
          removeSelectedNotes: _removeSelectedNotes, fetch: _fetch);
    });
  }

  final _notesRepo = NotesRepositoryImpl();

  _fetch (_Fetch value) async {
    _notes = await _notesRepo.getAllNotes();
    emit(_Loaded(_getMatrix()));
  }


  _createAudioNote(_CreateAudioNote value) async {
    final note = Note.fromJson(value.note.toJson());
    _notes.add(note);
    _notes = _notes.sortByDate();

    emit(_Loaded(_getMatrix()));
    _notesRepo.setNotes([note]);
  }

  _createTextNote(_CreateTextNote value) async {
    final note = Note.fromJson(value.note.toJson());
    _notes.add(note);
    _notes = _notes.sortByDate();
    emit(_Loaded(_getMatrix()));
    _notesRepo.setNotes([note]);
  }

  _selectNotesMode(_SelectNotesMode value) async {
    final mode = value.mode ?? state is! _Loaded;
    if(mode) {
      _selected = [];
      emit(_SelectNotes(_getMatrix() ,_selected));
      return;
    }
    emit(_Loaded(_getMatrix()));
  }

  _removeAllNotes(_RemoveAllNotes value) async {
    _notesRepo.removeAllNotes();
    _notes = [];
    emit(const _Loaded([]));
  }

  _selectNote(_SelectNote value) async {
    if(_selected.contains(value.id)) {
      _selected.remove(value.id);
    } else {
      _selected.add(value.id);
    }
    emit(_SelectNotes(_getMatrix(), _selected));
  }

  _removeSelectedNotes(_RemoveSelectedNotes value) async {


    await  _notesRepo.removeNotes(value.ids ?? _selected);
    _notes.removeWhere((element) => (value.ids ?? _selected).contains(element.id));
    _notes = _notes.sortByDate();
     if(value.ids==null)
      _selected = [];
     add(const NotesEvent.selectNotesMode(mode: false));
  }

  List<Note> _notes = [];
  List<int> _selected = [];

  List<List<Note>> _getMatrix() {
    List<List<Note>> matrix = [];
    for (var note in _notes) {
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
