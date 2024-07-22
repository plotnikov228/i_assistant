import 'dart:convert';
import 'dart:math';

import 'package:i_assistant/domain/entities/note/note.dart';
import 'package:i_assistant/domain/entities/note/text_note/text_note.dart';
import 'package:i_assistant/utils/extensions/date_extension.dart';
import 'package:i_assistant/utils/extensions/notes_extension.dart';

import '../../../domain/entities/note/voice_note/voice_note.dart';
import '../../database/hive_database.dart';

abstract class NotesLocalDataSource {
  Future<List<Note>> getAllNotes();

  Future<List<Note>> getNotesByDate(DateTime dateTime);

  Future<List<Note>> setNotes(List<Note> notes);

  Future<List<Note>> removeNotes (List<int> noteIds);

  Future<List<Note>> removeAllNotes ();
}

class NotesLocalDataSourceImpl extends NotesLocalDataSource {
  @override
  Future<List<Note>> getAllNotes() async {
    await HiveDatabase.initDB();
    await HiveDatabase.openBox(HiveDBTags.notes);
    final list = (await HiveDatabase.getBox(HiveDBTags.notes));
    return (list
        .map((e) => Note.fromJson(jsonDecode(e)))
        .toList()).sortByDate();
  }

  @override
  Future<List<Note>> setNotes(List<Note> notes) async {
    final _sortedListForChanges = notes.sortByDate();
    final __fullList = [...await getAllNotes()];
    final _fullList = List.generate(__fullList.length, (index) => () {
     
      final val =  __fullList[index].copyWith(id: index);
      return val;
    }());
    for (var note in _sortedListForChanges) {

      int index = _fullList.indexWhere((obj1) => obj1.id == note.id);
      if (index != -1) {
        _fullList[index] = note;
      } else {
        _fullList.add(note.copyWith(id: _fullList.length));
      }
    }
    await HiveDatabase.deleteBox(HiveDBTags.notes);
    await HiveDatabase.openBox(HiveDBTags.notes);
    for(var item in _fullList) {
      await HiveDatabase.setBox(
          item.toJson(), HiveDBTags.notes);
    }
    return _fullList;

  }

  @override
  Future<List<Note>> removeAllNotes() async {
    await HiveDatabase.deleteBox(HiveDBTags.notes);
    return [];
  }

  @override
  Future<List<Note>> removeNotes(List<int> noteIds) async {
    final __fullList = [...await getAllNotes()]..removeWhere((element) => noteIds.contains(element.id));
    await HiveDatabase.deleteBox(HiveDBTags.notes);
    await HiveDatabase.openBox(HiveDBTags.notes);
    for(var item in __fullList) {
      await HiveDatabase.setBox(
          item.toJson(), HiveDBTags.notes);
    }
    return __fullList;
  }

  @override
  Future<List<Note>> getNotesByDate(DateTime dateTime) async {
    await HiveDatabase.openBox(HiveDBTags.notes);
    final list = (await HiveDatabase.getBox(HiveDBTags.notes)).map((e) => Note.fromJson(jsonDecode(e))).toList();
    return (list.where((element) => element.dateTime.equalDate(dateTime))
        .toList());
  }
}
