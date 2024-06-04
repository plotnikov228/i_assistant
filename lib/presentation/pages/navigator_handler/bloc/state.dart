part of 'bloc.dart';

@freezed
class NavigatorViewState with _$NavigatorViewState {
  const factory NavigatorViewState.view() = _View;
  const factory NavigatorViewState.hide() = _Hide;

}