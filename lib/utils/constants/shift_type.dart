import 'package:flutter/cupertino.dart';

enum ShiftType {
  night,
  day,
  both,
  empty;

  @override
  String toString() => name;



  factory ShiftType.fromString(String value) {
    return ShiftType.values.firstWhere((element) => element.name == value,
        orElse: () {
      debugPrint('not contain $value in shift types');
      return ShiftType.empty;
    });
  }
}
