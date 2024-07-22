import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:i_assistant/presentation/resources/app_colors.dart';

class CustomCheckBox extends StatefulWidget {
  final bool value;
  final Function(bool)? onChange;
  const CustomCheckBox({super.key, required this.value, this.onChange});

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {

  late bool value = widget.value;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      width: 25,
      child: Transform.scale(
        scale: 1.2,
        child: Checkbox(value: value,
            checkColor: Colors.white,
            side: value ? BorderSide.none : BorderSide(color: AppColors.mediumGrey),
            fillColor: MaterialStatePropertyAll<Color>(value ?  AppColors.blue : Colors.white),
            shape: CircleBorder(side: value ? BorderSide.none : BorderSide(color: AppColors.lightGrey)),
            onChanged: (v) {
          widget.onChange?.call(v!);
          setState(() {
            value = v!;
          });
        }),
      ),
    );
  }
}
