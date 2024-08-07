import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:i_assistant/utils/shared_prefs.dart';

class AppColors {
  static Color get black => SharedPrefs.isThemeDark ? Colors.white : Colors.black;
  static Color get white => SharedPrefs.isThemeDark ? Color(0xff212731) :Colors.white;

  static Color get blueButton => SharedPrefs.isThemeDark ? dividerGrey :Color(0xff5887E8);

  static Color get blue => Color(0xff5887E8);
  static Color get lightBlue => SharedPrefs.isThemeDark ? Color(0xff2B60CE).withOpacity(0.4) : Color(0xffEEF4FF);

  static Color get grey => SharedPrefs.isThemeDark ? Color(0xff3E4757) : Color(0xffDADADA);
  static const Color mediumGrey = Color(0xff9D9FA3);
  static Color get divider =>  SharedPrefs.isThemeDark ? Color(0xff31363E) : Color(0xffCDCDCD);
  static Color get circleBorder =>  SharedPrefs.isThemeDark ? Color(0xff38465E) : Color(0xffECECEC);

  static Color get dividerGrey =>  SharedPrefs.isThemeDark ? Color(0xff15181E) : Color(0xffECECEC);
  static Color get calendarBg =>  SharedPrefs.isThemeDark ? Color(0xff15181E) : Color(0xffFBFBFB);

  static Color get lightGrey => SharedPrefs.isThemeDark ? Color(0xff3A4151) : Color(0xffF1F1F1);
  static Color get containerGrey => SharedPrefs.isThemeDark ? Color(0xff3A4151) : Color(0xffF4F4F4);

  static const Color red = Color(0xffFF5353);

  //shift type colors
  static Color get  night => SharedPrefs.isThemeDark ? Color(0xff6D55FF) :  Color(0xffD2D3FF);
  static Color get  day =>SharedPrefs.isThemeDark ? Color(0xffFF9B26) : Color(0xffFFEAD2);
  static Color get nightText =>  SharedPrefs.isThemeDark ? Colors.white : Color(0xff4E50C9);
  static Color get dayText =>   SharedPrefs.isThemeDark ? Colors.white : Color(0xffFF6B00);

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

}