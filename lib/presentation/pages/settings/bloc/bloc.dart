import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:i_assistant/utils/shared_prefs.dart';

part 'event.dart';

part 'state.dart';

part 'bloc.freezed.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc()
      : super(ThemeState.loaded(lightTheme: !SharedPrefs.isThemeDark, authTheme: SharedPrefs.isAutoTheme)) {
    init();
    on<ThemeEvent>((events, emit) async {
      events.map(changeTheme: _changeTheme);
    });
  }

  _changeTheme(_ChangeTheme value) async {
    if(value.theme =='auto') {
      SharedPrefs.setAutoTheme = true;
    } else {
      SharedPrefs.setAutoTheme = false;
      SharedPrefs.setThemeDark = value.theme =='dark';
    }
    await Future.delayed(Duration(milliseconds: 500), (){});
    init();
  }

  init () {
    late bool themeLight;
    final autoTheme = SharedPrefs.isAutoTheme;
    if(autoTheme) {
      themeLight = DateTime.now().hour > 6 && DateTime.now().hour < 18;
      SharedPrefs.setThemeDark = !themeLight;
    } else {
      themeLight = !(SharedPrefs.isThemeDark ?? false);
    }
    emit(ThemeState.loaded(lightTheme: themeLight, authTheme: autoTheme));
  }
}
