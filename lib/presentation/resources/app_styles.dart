
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:i_assistant/presentation/resources/app_colors.dart';

class AppStyles {
    static TextStyle get body => GoogleFonts.manrope().copyWith(fontSize: 16, color: Colors.white);
    static TextStyle get bodyBlack => GoogleFonts.manrope().copyWith(fontSize: 16, color: Colors.black);
    static TextStyle get bodyBlue => GoogleFonts.manrope().copyWith(fontSize: 16, color: AppColors.blue);
    static TextStyle get bodyBlackBold => GoogleFonts.manrope().copyWith(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w600);

    static TextStyle get mediumHead => GoogleFonts.manrope().copyWith(fontSize: 26, color: Colors.white);
    static TextStyle get mediumHeadBlack => GoogleFonts.manrope().copyWith(fontSize: 26, color: Colors.black);


    static TextStyle get bigHead => GoogleFonts.manrope().copyWith(fontSize: 54, color: Colors.white);

    static TextStyle get mediumTitle => GoogleFonts.manrope().copyWith(fontSize: 34, color: Colors.black, fontWeight: FontWeight.w700);

    static TextStyle get smallGrey => GoogleFonts.manrope().copyWith(fontSize: 14, color: AppColors.mediumGrey, fontWeight: FontWeight.w400, overflow: TextOverflow.ellipsis);
}