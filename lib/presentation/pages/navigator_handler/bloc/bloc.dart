import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:i_assistant/utils/shared_prefs.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'event.dart';
part 'state.dart';
part 'bloc.freezed.dart';

class NavigatorBloc extends Bloc<NavigatorEvent, NavigatorViewState> {
  NavigatorBloc() : super(const _View()) {

    on<NavigatorEvent>((events, emit) async {
       events.map(changeVisible: _changeVisible);
    }
    );
  }

  bool _value = true;

  _changeVisible (_ChangeVisible value) async {
    _value = value.value ?? _value;
    if(_value) {
      emit(_View());
    } else {
      emit(_Hide());
    }
  }


}