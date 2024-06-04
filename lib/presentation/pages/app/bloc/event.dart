part of 'bloc.dart';

@freezed
class AppEvent with _$AppEvent {
  const factory AppEvent.welcomeComplete() = _WelcomeComplete;
  const factory AppEvent.checkAuth() = _CheckAuth;

}