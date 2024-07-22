import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:i_assistant/presentation/pages/calendar/widgets/shift_widget.dart';
import 'package:i_assistant/presentation/resources/app_colors.dart';
import 'package:i_assistant/presentation/resources/app_styles.dart';
import 'package:i_assistant/utils/constants/shift_type.dart';

class DayShiftTypeWidget extends StatelessWidget {
  final ShiftType shiftType;
  final Function()? onDelete;
  final Function()? onAdd;

  const DayShiftTypeWidget({super.key, required this.shiftType, this.onDelete, this.onAdd});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text('Смена', style: AppStyles.mediumHeadBlack,),
          ),
          shiftType == ShiftType.empty ? SizedBox(
            height: 56,
            width: 56,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.lightBlue,
                  shape: const CircleBorder(),
                  elevation: 0,
                  padding: EdgeInsets.zero
                ),
                onPressed: onAdd, child: SvgPicture.asset('assets/images/svg/plus.svg', color: AppColors.blue)),
          ) : Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              ShiftWidget(shiftType: shiftType,
                onTap: onAdd,
                showSvg: true, showText: true, size: 56,),
              const SizedBox(width: 5,),
              SizedBox(
                height: 56,
                width: 56,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        elevation: 0,
                        shape: const CircleBorder(),
                        padding: EdgeInsets.zero
                    ),
                    onPressed: onDelete, child: SvgPicture.asset('assets/images/svg/trash.svg')),
              )

            ],
          )
        ],
      ),
    );
  }
}
