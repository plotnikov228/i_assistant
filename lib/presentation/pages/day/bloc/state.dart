part of 'bloc.dart';

@freezed
class DayState with _$DayState {
  const factory DayState.Loaded({
    required DateTime dateTime,
    required List<TextNote> textNotes,
    required List<VoiceNote> audioNotes,
    required  List<Task> tasks,
    required List<Task> birthDays,
    required ShiftType shiftType,
    required bool canGoToToday,
}
      ) = _Loaded;

}