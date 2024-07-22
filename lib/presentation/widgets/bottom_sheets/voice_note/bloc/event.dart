part of 'bloc.dart';

@freezed
class VoiceNoteEvent with _$VoiceNoteEvent {
  const factory VoiceNoteEvent.record() = _Record;
  const factory VoiceNoteEvent.save(BuildContext context, {required String text, required DateTime dateTime}) = _Save;

}