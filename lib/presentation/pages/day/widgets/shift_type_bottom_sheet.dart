import 'dart:io';

import 'package:flutter/material.dart';
import 'package:i_assistant/presentation/pages/calendar/widgets/shift_widget.dart';
import 'package:i_assistant/utils/constants/shift_type.dart';

import '../../../../utils/size_utils.dart';
import '../../../resources/app_colors.dart';

class ShiftTypeBottomSheet extends StatelessWidget {
  const ShiftTypeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: size.width,
        child: Material(
            elevation: 0,
            color: Colors.transparent,
            child: Container(
                decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      height: 5,
                      width: 84,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: AppColors.mediumGrey),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [ShiftType.day, ShiftType.night, ShiftType.both]
                          .map((e) => ShiftWidget(
                        size: 50,
                        onTap: () {
                          Navigator.pop(context, e);
                        },
                          shiftType: e, showSvg: true, showText: true,))
                          .toList(),
                    ),
                  ),
                  if(Platform.isIOS)
                    const SizedBox(height: 40,)
                ]))));
  }
}
