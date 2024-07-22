part of 'bloc.dart';

@freezed
class NoteViewEvent with _$NoteViewEvent {
  const factory NoteViewEvent.play() = _Play;
  const factory NoteViewEvent.stop() = _Stop;


}