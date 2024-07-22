part of 'bloc.dart';

@freezed
class NotesState with _$NotesState {
  const factory NotesState.loaded(List<List<Note>> notes) = _Loaded;
  const factory NotesState.selectNotes(List<List<Note>> notes, List<int> ids) = _SelectNotes;

}