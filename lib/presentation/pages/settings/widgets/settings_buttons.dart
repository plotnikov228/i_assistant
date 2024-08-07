import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:i_assistant/presentation/resources/app_colors.dart';
import 'package:i_assistant/presentation/resources/app_styles.dart';

class SettingsButton extends StatelessWidget {
  final String text;
  final String svg;
  final Function()? onTap;
  const SettingsButton({super.key, required this.text, this.onTap, required this.svg});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 66,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(20),

        ),
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Row(
          children: [
              SvgPicture.asset('assets/images/svg/$svg.svg', height: 24,),
            SizedBox(width: 20,),
            Expanded(child: Text(text, style: AppStyles.mediumHeadBlack.copyWith(fontSize: 24, fontWeight: FontWeight.w500),)),
          ],
        ),
      ),
    );
  }
}
