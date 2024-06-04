import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:i_assistant/presentation/resources/app_colors.dart';

class CustomSwitch extends StatefulWidget {
  final bool value;
  final Function(bool value)? onChange;

  const CustomSwitch({super.key, required this.value, this.onChange});

  @override
  State<CustomSwitch> createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  late bool _value;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _value = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 0.8,

      child: CupertinoSwitch(
        trackColor: AppColors.grey,
        thumbColor: Colors.white,
        activeColor: AppColors.blue,
        value: _value,
        onChanged: (bool value) {
          widget.onChange?.call(value);
          _value = value;
          setState(() {});
        },
      ),
    );
  }
}
