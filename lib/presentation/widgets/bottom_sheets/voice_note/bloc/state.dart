part of 'bloc.dart';

@freezed
class VoiceNoteState with _$VoiceNoteState {
  const factory VoiceNoteState.initial({
    required File? audio,
    required bool recording,
    required Stream<Amplitude> amplitudeStream,
    required bool canSave,
    required bool started,

  }) = _Initial;
}
