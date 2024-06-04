import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:i_assistant/presentation/pages/calendar/shift_shedule/widgets/empty_shedule_row.dart';


part 'event.dart';

part 'state.dart';

part 'bloc.freezed.dart';

class ShiftScheduleBloc extends Bloc<ShiftScheduleEvent, ShiftScheduleState> {
  final DateTime startDate;
  final ShiftScheduleState? startState;

  ShiftScheduleBloc(this.startDate, this.startState)
      : super(_Initial(
            selectedRowIndex: null,
            startDate: startDate,
            endDate: startDate.add(const Duration(days: 30)),
            canCalculate: false,
            controller: ScheduleRowController())) {

    if(startState != null) {
      _startDate = startState!.startDate;
      _endDate = startState!.endDate;
      _controller  = startState!.controller;
      _selectedRow = startState!.selectedRowIndex;
      emit(_Initial(
          selectedRowIndex: _selectedRow,
          startDate: _startDate,
          endDate: _endDate,
          canCalculate: _selectedRow != null &&
              (_selectedRow! < 4 ||
                  _controller.types.where((element) => element == null).length <
                      1),
          controller: _controller));
    }

    on<ShiftScheduleEvent>((events, emit) async {
      events.map(select: _select, calculate: _calculate, changeStartDate: _changeStartDate, changeEndDate: _changeEndDate);
    });
  }
  late DateTime _startDate = startDate;
  late DateTime _endDate = startDate.add(const Duration(days: 30));

  int? _selectedRow = null;
  ScheduleRowController _controller = ScheduleRowController();
  StreamSubscription? _canCalc;
  _select(_Select value) async {
    _selectedRow = value.selectedRow;

    _controller.changeActive(_selectedRow == 4);
    if(_selectedRow == 4) {
      _canCalc = _controller.canComplete.listen((event) {

        emit(_Initial(
            selectedRowIndex: _selectedRow,
            startDate: _startDate,
            endDate: _endDate,
            canCalculate: _selectedRow != null &&
                (_selectedRow! < 4 ||
                    _controller.types.where((element) => element == null).length <
                        1),
            controller: _controller));
      });
    } else {
      _canCalc?.cancel();
    }

    emit(_Initial(
        selectedRowIndex: _selectedRow,
        startDate: _startDate,
        endDate: _endDate,
        canCalculate: _selectedRow != null &&
            (_selectedRow! < 4 ||
                _controller.types.where((element) => element == null).length <
                    1),
        controller: _controller));
  }

  _calculate (_Calculate value) async {

  }

  _changeStartDate (_ChangeStartDate value) {
    _startDate = value.dateTime;
    emit(_Initial(
        selectedRowIndex: _selectedRow,
        startDate: _startDate,
        endDate: _endDate,
        canCalculate: _selectedRow != null &&
            (_selectedRow! < 4 ||
                _controller.types
                    .where((element) => element == null)
                    .length <
                    1),
        controller: _controller));
  }

    _changeEndDate (_ChangeEndDate value) {
      _endDate = value.dateTime;
      emit(_Initial(
          selectedRowIndex: _selectedRow,
          startDate: _startDate,
          endDate: _endDate,
          canCalculate: _selectedRow != null &&
              (_selectedRow! < 4 ||
                  _controller.types.where((element) => element == null).length <
                      1),
          controller: _controller));
  }
}
