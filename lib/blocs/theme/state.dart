part of 'bloc.dart';

@freezed
class ThemeState with _$ThemeState {
  const factory ThemeState.loaded({
    required bool lightTheme,
    required bool authTheme,

  }
      ) = _Loaded;

}