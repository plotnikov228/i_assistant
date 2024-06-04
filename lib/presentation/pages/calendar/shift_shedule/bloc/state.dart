part of 'bloc.dart';

@freezed
class ShiftScheduleState with _$ShiftScheduleState {
  const factory ShiftScheduleState.initial(
      {required int? selectedRowIndex,
      required DateTime startDate,
        required DateTime endDate,
      required bool canCalculate,
        required ScheduleRowController controller
      }) = _Initial;
}
