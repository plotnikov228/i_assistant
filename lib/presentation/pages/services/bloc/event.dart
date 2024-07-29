part of 'bloc.dart';

@freezed
class ServicesEvent with _$ServicesEvent {
  const factory ServicesEvent.goToService(ServiceEntity service) = _GoToService;
}