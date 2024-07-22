import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:i_assistant/presentation/resources/app_colors.dart';

enum ShiftType {
  night(title: 'Ночь', color: AppColors.nightText),
  day(title: 'День', color: AppColors.dayText),
  both(title: 'Целый день', color: Colors.black),
  empty(title: 'Пусто', color: Colors.black);

  final String title;
  final Color color;

  @override
  String toString() => name;



  factory ShiftType.fromString(String value) {
    return ShiftType.values.firstWhere((element) => element.name == value,
        orElse: () {
      debugPrint('not contain $value in shift types');
      return ShiftType.empty;
    });
  }

  const ShiftType({required this.title, required this.color});
}
