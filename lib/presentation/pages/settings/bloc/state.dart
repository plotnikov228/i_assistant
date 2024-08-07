part of 'bloc.dart';

@freezed
class ThemeState with _$ThemeState {
  const factory ThemeState.loaded(
      bool loading
      ) = _Loaded;

}