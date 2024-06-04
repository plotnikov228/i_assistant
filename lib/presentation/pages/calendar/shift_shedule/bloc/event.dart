part of 'bloc.dart';

@freezed
class ShiftScheduleEvent with _$ShiftScheduleEvent {
  const factory ShiftScheduleEvent.select(int selectedRow) = _Select;
  const factory ShiftScheduleEvent.calculate() = _Calculate;

  const factory ShiftScheduleEvent.changeStartDate(DateTime dateTime) = _ChangeStartDate;
  const factory ShiftScheduleEvent.changeEndDate(DateTime dateTime) = _ChangeEndDate;

}