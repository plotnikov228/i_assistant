import 'package:flutter/material.dart';
import 'package:i_assistant/presentation/resources/app_colors.dart';
import 'package:i_assistant/presentation/widgets/buttons/custom_button.dart';

import 'date_picker.dart';

class CustomDatePickerDialog extends StatelessWidget {
  final DateTime? initialDate;
  final bool selectFullDate;
  final bool canSelectFuture;
  const CustomDatePickerDialog({super.key, this.initialDate, this.selectFullDate = true, this.canSelectFuture = true});

  @override
  Widget build(BuildContext context) {
    DateTime dateTime = initialDate ?? DateTime.now();
    return Material(
      elevation: 0,
      color: Colors.transparent,
      child: Container(
        height: 300,
        width: 300,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(40)
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 35,
                    color: AppColors.blue.withOpacity(0.1),
                  ),
                  SizedBox(
                    height: 180,
                    child: CupertinoDatePicker(
                      use24hFormat: false,
                      mode: selectFullDate ? CupertinoDatePickerMode.date : CupertinoDatePickerMode.monthYear,
                      initialDateTime: initialDate,
                      maximumDate: canSelectFuture ? null : DateTime.now(),
                      onDateTimeChanged: (DateTime value) {
                       dateTime = value;
                    },),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: CustomButton(title: 'Принять', onTap: () {
                  Navigator.pop(context, dateTime);
                },
                textColor: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
