import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:i_assistant/presentation/pages/calendar/widgets/shift_widget.dart';
import 'package:i_assistant/presentation/resources/app_colors.dart';
import 'package:i_assistant/presentation/resources/app_styles.dart';

import '../../../../../utils/constants/shift_type.dart';

class SheduleRow extends StatelessWidget {
  final List<ShiftType> types;
  final bool selected;

  const SheduleRow({super.key, required this.types, this.selected = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      //width: double.infinity,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border:
            Border.all(color: selected ? AppColors.blue : AppColors.dividerGrey),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
              '${types.where((element) => element != ShiftType.empty).length}/${types.where((element) => element == ShiftType.empty).length}',
          style: AppStyles.bodyBlackBold,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: types
                .map((e) => Padding(
                      padding: EdgeInsets.only(left: 2),
                      child: ShiftWidget(
                        shiftType: e,
                        showSvg: true,
                      ),
                    ))
                .toList(),
          )
        ],
      ),
    );
  }
}
