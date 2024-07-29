import 'package:flutter/material.dart';
import 'package:i_assistant/presentation/resources/app_styles.dart';

import '../../../resources/app_colors.dart';
import '../../../widgets/buttons/custom_button.dart';

class DeleteAllNotesBottomSheet extends StatelessWidget {
  final Function? onOk;
  final Function? onCancel;

  const DeleteAllNotesBottomSheet({super.key, this.onOk, this.onCancel});

  @override
  Widget build(BuildContext context) {
    return Material(
        elevation: 0,
        color: Colors.transparent,
        child: Container(
            decoration:  BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40))),
            padding: const EdgeInsets.symmetric(horizontal: 10),
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
                padding: const EdgeInsets.all(20),
                child: Text(
                  'Вы уверены, что хотите удалить все заметки?',
                  style: AppStyles.mediumHead.copyWith(color: AppColors.black),
                  textAlign: TextAlign.center,
                ),
              ),
              Row(
                children: [
                  Expanded(
                      child: CustomButton(
                    title: 'Отмена',
                    bg: AppColors.white,
                    textColor: AppColors.black,
                    onTap: () {
                      Navigator.pop(context);
                      onCancel?.call();
                    },
                  )),
                  const SizedBox(
                    width: 4,
                  ),
                  Expanded(
                    child: CustomButton(
                      title: 'Удалить',
                      onTap: () {
                        Navigator.pop(context);

                        onOk?.call();
                      },
                      bg: AppColors.red,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40,)
            ])));
  }
}
