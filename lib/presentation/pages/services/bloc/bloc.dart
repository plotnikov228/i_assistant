import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:i_assistant/presentation/pages/services/bloc/models/service_entity.dart';

part 'event.dart';

part 'state.dart';

part 'bloc.freezed.dart';

class ServicesBloc extends Bloc<ServicesEvent, ServicesState> {
  ServicesBloc()
      : super(const _Loaded(services: [
          ServiceEntity(
              title: 'Красота',
              description: 'Запись в салон красоты',
              url: '',
              color: 'FF367E'),
          ServiceEntity(
              title: 'Путешествия',
              description: 'Выбор билетов с Tutu.ru',
              url: '',
              color: '3275FF')
        ])) {
    on<ServicesEvent>((events, emit) async {
      events.map(goToService: _goToService);
    });
  }

  _goToService(_GoToService value) async {}
}
