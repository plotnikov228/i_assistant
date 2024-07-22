import 'package:i_assistant/data/data_sources/local_data_sources/notes_local_data_source.dart';
import 'package:i_assistant/domain/entities/note/note.dart';
import 'package:i_assistant/domain/repositories/notes_repository.dart';

class NotesRepositoryImpl extends NotesRepository {

  final _dataSource = NotesLocalDataSourceImpl();
  @override
  Future<List<Note>> getAllNotes() {
    return _dataSource.getAllNotes();
  }

  @override
  Future<List<Note>> setNotes(List<Note> notes) {
    return _dataSource.setNotes(notes);
  }

  @override
  Future<List<Note>> removeAllNotes() {
    return _dataSource.removeAllNotes();
  }

  @override
  Future<List<Note>> removeNotes(List<int> noteIds) {
    return _dataSource.removeNotes(noteIds);
  }

  @override
  Future<List<Note>> getNotesByDate(DateTime dateTime) {
    return _dataSource.getNotesByDate(dateTime);
  }

}