part of 'bloc.dart';

@freezed
class CalendarEvent with _$CalendarEvent {
  const factory CalendarEvent.fetch({DateTime? date}) = _Fetch;
  const factory CalendarEvent.selectCalendar(CalendarEntity calendarEntity) = _SelectCalendar;
  const factory CalendarEvent.selectYear(YearEntity yearEntity) = _SelectYear;
  const factory CalendarEvent.goToSelectYear() = _GoToSelectYear;
  const factory CalendarEvent.selectDay(CalendarDay day) = _SelectDay;
  const factory CalendarEvent.changeDate(DateTime dateTime) = _ChangeDate;
  const factory CalendarEvent.selectShiftTypes(bool value) = _SelectShiftTypes;
  const factory CalendarEvent.addShiftType(ShiftType value, CalendarDay calendarDay) = _AddShiftType;
  const factory CalendarEvent.confirmShiftTypesChanges() = _ConfirmShiftTypesChanges;
  const factory CalendarEvent.getShiftTypes(List<ShiftType> shiftTypes, {required DateTime start, required DateTime end}) = _GetShiftTypes;
  const factory CalendarEvent.removeAllShiftTypes() = _RemoveAllShiftTypes;
  const factory CalendarEvent.addTask(Task task) = _AddTask;
  const factory CalendarEvent.addBirthday(Task task) = _AddBirthday;


}