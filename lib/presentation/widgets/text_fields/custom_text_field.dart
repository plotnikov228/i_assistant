import 'package:flutter/material.dart';
import 'package:i_assistant/presentation/resources/app_colors.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController controller;
  final TextStyle textStyle;
  final String? hint;
  final int maxLines;
  final int minLines;
  final bool showHintAlways;
  final int? maxLength;
  final Function(String)? onChanged;
  final TextAlign textAlign;
  const CustomTextField({super.key,
    required this.controller,
    required this.textStyle,
    this.hint,
    this.maxLines = 1,
    this.minLines = 1,
    this.maxLength,
    this.onChanged,
    this.textAlign = TextAlign.start, this.showHintAlways = true});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {

  final node = FocusNode();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    node.addListener(() {
      if(!widget.showHintAlways) {
        if (node.hasFocus) {
          showHint = false;
        } else {
          showHint = true;
        }
        setState(() {});
      }
    });
  }

  bool showHint = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: node,
      maxLines: widget.minLines,
      minLines: widget.minLines,
      maxLength: widget.maxLength,
      controller: widget.controller,
      onChanged: widget.onChanged,
      style: widget.textStyle,
      onTapOutside: (_) {
        FocusScope.of(context).unfocus();
      },
      textAlign: widget.textAlign,

      decoration: InputDecoration(
          hintText: showHint ? widget.hint : '',
          hintStyle: widget.textStyle.copyWith(color: AppColors.mediumGrey),
          counterText: '',
          counterStyle: TextStyle(fontSize: 0),
          border: InputBorder.none),
    );
  }
}
