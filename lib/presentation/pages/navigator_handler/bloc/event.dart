part of 'bloc.dart';

@freezed
class NavigatorEvent with _$NavigatorEvent {
  const factory NavigatorEvent.changeVisible([bool? value]) = _ChangeVisible;

}