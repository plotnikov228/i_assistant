import 'package:flutter/material.dart';
import 'package:i_assistant/presentation/resources/app_styles.dart';

import '../../resources/app_colors.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Function()? onTap;
  final Widget? suffix;
  final Color? bg;
  final Color? textColor;
  final bool active;

  const CustomButton(
      {super.key,
      required this.title,
      this.onTap,
      this.suffix,
      this.bg,
      this.textColor,
      this.active = true});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 56,
        width: double.infinity,
        child: ElevatedButton(
            onPressed: onTap,
            style: ElevatedButton.styleFrom(
              elevation: 0,
                disabledBackgroundColor: AppColors.grey,
                backgroundColor: active ? bg ?? AppColors.blue : AppColors.grey,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                suffix ?? Container(),
                if (suffix != null)
                  SizedBox(
                    width: 10,
                  ),
                Text(
                  title,
                  style: AppStyles.body.copyWith(
                      color: active
                          ? textColor ?? Colors.white
                          : (textColor ?? Colors.white ?? AppStyles.body.color)!
                              .withOpacity(0.5)),
                ),
              ],
            )));
  }
}
