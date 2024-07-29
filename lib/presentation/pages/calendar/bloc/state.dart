part of 'bloc.dart';

@freezed
class CalendarState with _$CalendarState {
  const factory CalendarState.calendar(
      {required int currentCalendar,
      required List<CalendarEntity> calendars,
      required CalendarDay? selectedDay,
        required bool canCleanShiftTypes
      }) = _Calendar;
  const factory CalendarState.year(
      {
        required bool loading,
        required int selectedYear,
        required List<YearEntity> years,
      }) = _Year;
  const factory CalendarState.shiftType(
      {
        required int currentCalendar,
        required List<CalendarEntity> calendars,
        required List<CalendarDay> changedDays,
        required CalendarDay? selectedDay,
      }) = _ShiftType;

  const factory CalendarState.loading(
      {
        required int currentCalendar,
        required List<CalendarEntity> calendars,
        required CalendarDay? selectedDay,
      }) = _Loading;
}
