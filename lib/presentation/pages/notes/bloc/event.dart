part of 'bloc.dart';

@freezed
class NotesEvent with _$NotesEvent {

  const factory NotesEvent.fetch() = _Fetch;

  const factory NotesEvent.createAudioNote({
    required VoiceNote note
}) = _CreateAudioNote;
  const factory NotesEvent.createTextNote({
    required TextNote note
  }) = _CreateTextNote;

  const factory NotesEvent.selectNotesMode({bool? mode}) = _SelectNotesMode;

  const factory NotesEvent.selectNote({required int id}) = _SelectNote;


  const factory NotesEvent.removeSelectedNotes([List<int>? ids]) = _RemoveSelectedNotes;

  const factory NotesEvent.removeAllNotes() = _RemoveAllNotes;

}