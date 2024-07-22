import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:i_assistant/presentation/pages/notes_and_tasks/widgets/notes_and_chapters_button.dart';
import 'package:i_assistant/utils/router/routes.dart';

import '../../resources/app_colors.dart';
import '../../resources/app_styles.dart';

class NotesAndTasksPage extends StatelessWidget {
  const NotesAndTasksPage({super.key});

  @override
  Widget build(BuildContext context) {
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
                  'Заметки и задачи',
                  style: AppStyles.mediumTitle
                      .copyWith(color: Colors.black),
                ),
              ),
              SizedBox(height: 20,),
              NotesAndChaptersButton(text: 'Все задачи'),
              SizedBox(height: 10,),
              NotesAndChaptersButton(text: 'Все заметки', onTap: () {
                context.pushNamed(AppRoutes.notes.toName);
              },),

            ],
          ),
        ),));
  }
}
