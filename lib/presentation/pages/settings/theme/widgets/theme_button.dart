import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:i_assistant/presentation/resources/app_colors.dart';
import 'package:i_assistant/presentation/resources/app_styles.dart';

class ThemeButton extends StatelessWidget {
  final Color bgColor;
  final List<Color>? gradient;
  final Color mainColor;
  final String? svg;
  final String text;

  final Function()? onTap;

  final bool active;

  const ThemeButton(
      {super.key,
      required this.bgColor,
      required this.mainColor,
      this.onTap,
      required this.active, this.svg, required this.text, this.gradient});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        decoration: BoxDecoration(
            color: active ? bgColor : AppColors.white,
            gradient: !active || gradient == null ? null : LinearGradient(colors: gradient!,
            begin: Alignment.centerLeft,
              end: Alignment.centerRight
            ),
            borderRadius: BorderRadius.circular(28),
            border: active
                ? Border.all(color: Colors.transparent)
                : Border.all(color: AppColors.dividerGrey)),
        padding: EdgeInsets.all(20),
        child: Column(

          children: [
            if(svg != null)
            SvgPicture.asset('assets/images/svg/$svg.svg', height: 24, color: mainColor,),
            if(svg != null)
              SizedBox(height: 20,),
            Text(text, style: AppStyles.body.copyWith(color: mainColor),)

          ],
        ),
      ),
    );
  }
}
