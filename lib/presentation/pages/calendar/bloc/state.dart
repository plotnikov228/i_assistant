part of 'bloc.dart';

@freezed
class CalendarState with _$CalendarState {
  const factory CalendarState.calendar(
      {required int month,
      required int year,
      required List<CalendarDay> days,
      required CalendarDay? selectedDay,
        required bool canCleanShiftTypes
      }) = _Calendar;
  const factory CalendarState.shiftType(
      {required int month,
        required int year,
        required List<CalendarDay> days,
        required List<CalendarDay> changedDays,
        required CalendarDay? selectedDay,
      }) = _ShiftType;
}
