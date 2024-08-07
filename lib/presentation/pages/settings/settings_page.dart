import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:i_assistant/presentation/pages/notes_and_tasks/widgets/notes_and_chapters_button.dart';
import 'package:i_assistant/presentation/pages/settings/widgets/settings_buttons.dart';
import 'package:i_assistant/utils/router/routes.dart';

import '../../../blocs/theme/bloc.dart';
import '../../resources/app_colors.dart';
import '../../resources/app_styles.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(builder: (context, state) {
        return Scaffold(
            backgroundColor: AppColors.dividerGrey,
            body: SafeArea(child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 80,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'Настройки',
                      style: AppStyles.mediumTitle
                          .copyWith(color: AppColors.black),
                    ),
                  ),
                  SizedBox(height: 20,),
                  SettingsButton(text: 'Внешний вид',  onTap: () {
                    context.pushNamed(AppRoutes.tasks.toName);
                  }, svg: 'pallete',),
                  SizedBox(height: 10,),
                  SettingsButton(text: 'Копирование в облако',  onTap: () {
                    context.pushNamed(AppRoutes.tasks.toName);
                  }, svg: 'cloud',),

                ],
              ),
            ),));
      }
    );
  }
}
