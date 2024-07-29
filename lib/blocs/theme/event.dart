part of 'bloc.dart';

@freezed
class ThemeEvent with _$ThemeEvent {
  const factory ThemeEvent.changeTheme(String theme) = _ChangeTheme;
}