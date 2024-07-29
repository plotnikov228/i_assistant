part of 'bloc.dart';

@freezed
class AppState with _$AppState {
  const factory AppState.welcome() = _Welcome;
  const factory AppState.authorized() = _Authorized;
  const factory AppState.notAuthorized() = _NotAuthorized;
  const factory AppState.loading() = _Loading;

}