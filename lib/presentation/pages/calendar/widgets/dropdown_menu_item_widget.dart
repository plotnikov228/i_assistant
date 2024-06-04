import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:i_assistant/presentation/resources/app_colors.dart';
import 'package:i_assistant/presentation/resources/app_styles.dart';

class DropdownMenuItemChild extends StatelessWidget {
  final String title;
  final String svgName;
  const DropdownMenuItemChild({super.key, required this.title, required this.svgName});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset('assets/images/svg/$svgName.svg', height: 24, width: 24, color: AppColors.blue,),
        const SizedBox(width: 5,),
        Text(title, style: AppStyles.bodyBlackBold,)
      ],
    );
  }
}

