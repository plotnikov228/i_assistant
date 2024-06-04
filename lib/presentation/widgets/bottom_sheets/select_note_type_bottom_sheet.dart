import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:i_assistant/presentation/resources/app_colors.dart';
import 'package:i_assistant/presentation/resources/app_styles.dart';
import 'package:i_assistant/presentation/widgets/buttons/custom_button.dart';
import 'package:i_assistant/presentation/widgets/custom_switcher.dart';
import 'package:i_assistant/presentation/widgets/text_fields/custom_text_field.dart';
import 'package:i_assistant/utils/size_utils.dart';

class SelectNoteTypeBottomSheet extends StatefulWidget {
  final Function()? onTextNote;
  final Function()? onVoiceNote;

  const SelectNoteTypeBottomSheet(
      {super.key, this.onTextNote, this.onVoiceNote});

  @override
  State<SelectNoteTypeBottomSheet> createState() =>
      _SelectNoteTypeBottomSheetState();
}

class _SelectNoteTypeBottomSheetState extends State<SelectNoteTypeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: SizedBox(
        width: size.width,
        child: Material(
          elevation: 0,
          color: Colors.transparent,
          child: Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40), topRight: Radius.circular(40))),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Container(
                      height: 5,
                      width: 84,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: AppColors.mediumGrey),
                    ),
                  ),
                  CustomButton(
                    onTap: widget.onTextNote,
                    bg: AppColors.lightBlue,
                    title: 'Текстовая заметка',
                    textColor: AppColors.blue,
                    suffix: SvgPicture.asset(
                      'assets/images/svg/Aa.svg',
                      height: 14,
                      width: 19,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: CustomButton(
                      bg: AppColors.lightBlue,
                      onTap: widget.onVoiceNote,
                      title: 'Аудио заметка',
                      textColor: AppColors.blue,
                      suffix: SvgPicture.asset(
                        'assets/images/svg/voice.svg',
                        height: 20,
                        width: 16,

                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
