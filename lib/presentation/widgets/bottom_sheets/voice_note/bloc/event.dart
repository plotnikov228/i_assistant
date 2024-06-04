part of 'bloc.dart';

@freezed
class VoiceNoteEvent with _$VoiceNoteEvent {
  const factory VoiceNoteEvent.record() = _Record;

}