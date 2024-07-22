part of 'bloc.dart';

@freezed
class NoteViewState with _$NoteViewState {
  const factory NoteViewState.audio({
    required bool playig,
    required AudioPlayer amplitudeStream,
    required Stream<double> pitch,
  }) = _Audio;
  const factory NoteViewState.text() = _Text;
}
