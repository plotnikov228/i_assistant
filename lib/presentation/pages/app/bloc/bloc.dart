import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:i_assistant/utils/shared_prefs.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'event.dart';
part 'state.dart';
part 'bloc.freezed.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(const _Welcome()) {
    SharedPreferences.getInstance().then((value) async {
      SharedPrefs.sharedPreferences = value;
      if(SharedPrefs.showWelcome) emit(_Welcome());
      else {
        add(AppEvent.checkAuth());

      }
    });
    on<AppEvent>((events, emit) async {
       events.map(welcomeComplete: _welcomeComplete, checkAuth: _checkAuth);
    }
    );
  }

  _welcomeComplete (_WelcomeComplete value) {
    SharedPrefs.setShowWelcome = false;
    emit(_Authorized());

  }

  _checkAuth (_CheckAuth value) {
    emit(_Authorized());
  }

}