part of 'bloc.dart';

@freezed
class DayEvent with _$DayEvent {
  const factory DayEvent.addTextNote(TextNote text) = _AddTextNote;
  const factory DayEvent.addVoiceNote(VoiceNote voiceNote) = _AddVoiceNote;
  const factory DayEvent.removeNote(Note note) = _RemoveVoiceNote;
  const factory DayEvent.goToDay([bool? nextOrPrev]) = _GoToToday;
  const factory DayEvent.selectShiftType(ShiftType shiftType) = _SelectShiftType;
  const factory DayEvent.addTask(Task task) = _AddTask;
  const factory DayEvent.selectTask(Task task) = _SelectTask;
  const factory DayEvent.removeTask(Task task) = _RemoveTask;

  const factory DayEvent.addBirthday(Task task) = _AddBirthday;
  const factory DayEvent.removeBirthday(Task task) = _RemoveBirthday;
  const factory DayEvent.removeAllData() = _RemoveAllData;



}