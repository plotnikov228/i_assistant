import '../entities/note/note.dart';

abstract class NotesRepository {
  Future<List<Note>> getAllNotes ();
  Future<List<Note>> setNotes (List<Note> notes);
  Future<List<Note>> removeNotes (List<int> noteIds);
  Future<List<Note>> removeAllNotes ();
  Future<List<Note>> getNotesByDate (DateTime dateTime);


}