import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:i_assistant/presentation/widgets/buttons/custom_button.dart';

class CustomDatePickerDialog extends StatelessWidget {
  final DateTime? initialDate;
  final bool selectFullDate;
  const CustomDatePickerDialog({super.key, this.initialDate, this.selectFullDate = true});

  @override
  Widget build(BuildContext context) {
    DateTime dateTime = initialDate ?? DateTime.now();
    return Material(
      elevation: 0,
      color: Colors.transparent,
      child: Container(
        height: 300,
        width: 300,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(40)
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 180,
                child: CupertinoDatePicker(
                  mode: selectFullDate ? CupertinoDatePickerMode.date : CupertinoDatePickerMode.monthYear,
                  initialDateTime: initialDate,
                  onDateTimeChanged: (DateTime value) {
                   dateTime = value;
                },),
              ),
              SizedBox(height: 10,),
              CustomButton(title: 'Принять', onTap: () {
                Navigator.pop(context, dateTime);
              },)
            ],
          ),
        ),
      ),
    );
  }
}
