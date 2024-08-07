part of 'bloc.dart';

@freezed
class ThemeEvent with _$ThemeEvent {
  const factory ThemeEvent.createCopy({
    Function(String)? onSuccess,
    Function(String)? onError,

  }) = _CreateCopy;

  const factory ThemeEvent.uploadCopy({
    Function(String)? onSuccess,
    Function(String)? onError,

  }) = _CreateCopy;
}