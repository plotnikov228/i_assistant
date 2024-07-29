import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:i_assistant/presentation/resources/app_colors.dart';

enum ShiftType {
  night(title: 'Ночь'),
  day(title: 'День'),
  both(title: 'Целый день'),
  empty(title: 'Пусто');

  final String title;

  @override
  String toString() => name;



  factory ShiftType.fromString(String value) {
    return ShiftType.values.firstWhere((element) => element.name == value,
        orElse: () {
      debugPrint('not contain $value in shift types');
      return ShiftType.empty;
    });
  }

  Color fromType () {
    switch (this) {
      case ShiftType.night:
        return AppColors.nightText;
      case ShiftType.day:
        return AppColors.dayText;
      case ShiftType.both:
        return AppColors.black;
      case ShiftType.empty:
        return AppColors.black;
    }
  }

  const ShiftType({required this.title});
}
