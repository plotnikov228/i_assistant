import 'package:flutter/cupertino.dart';

extension DateExtension on DateTime {
  equalDate(DateTime different) {
    return day == different.day &&
        month == different.month &&
        year == different.year;
  }

  String getWeekDayName () {
    switch (this.weekday) {
      case 1:
        return 'Пн';
      case 2:
        return 'Вт';
      case 3:
        return 'Ср';
      case 4:
        return 'Чт';
      case 5:
        return 'Пт';
      case 6:
        return 'Сб';
      default:
        return 'Вс';
    }
  }

  String getMonthWithDayName () {
    switch (this.month) {
      case 1:
        return '${day} Января';
      case 2:
        return '${day} Февраля';
      case 3:
        return '${day} Марта';
      case 4:
        return '${day} Апреля';
      case 5:
        return '${day} Мая';
      case 6:
        return '${day} Июня';
      case 7:
        return '${day} Июля';
      case 8:
        return '${day} Августа';
      case 9:
        return '${day} Сентября';
      case 10:
        return '${day} Октября';
      case 11:
        return '${day} Ноября';
      default:
        return '${day} Декабря';
    }
  }

  String getMonthName () {
    switch (this.month) {
      case 1:
        return 'Январь';
      case 2:
        return 'Февраль';
      case 3:
        return 'Март';
      case 4:
        return 'Апрель';
      case 5:
        return 'Май';
      case 6:
        return 'Июнь';
      case 7:
        return 'Июль';
      case 8:
        return 'Август';
      case 9:
        return 'Сентябрь';
      case 10:
        return 'Октябрь';
      case 11:
        return 'Ноябрь';
      default:
        return 'Декабрь';
    }
  }
}