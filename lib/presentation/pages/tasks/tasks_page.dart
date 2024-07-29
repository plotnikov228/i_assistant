import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:i_assistant/presentation/pages/calendar/bloc/bloc.dart';
import 'package:i_assistant/presentation/resources/app_colors.dart';
import 'package:i_assistant/presentation/resources/app_styles.dart';
import 'package:i_assistant/presentation/widgets/bottom_sheets/task_bottom_sheet.dart';
import 'package:i_assistant/presentation/widgets/bottom_sheets/task_view_bottom_sheet.dart';
import 'package:i_assistant/presentation/widgets/buttons/custom_button.dart';
import 'package:i_assistant/utils/size_utils.dart';

import '../../../utils/bottom_sheet_handler.dart';
import '../../../utils/shared_prefs.dart';
import '../../widgets/bottom_sheets/note_view_bottom_sheet.dart';
import '../../widgets/bottom_sheets/select_note_type_bottom_sheet.dart';
import '../../widgets/bottom_sheets/text_note_bottom_sheet.dart';
import '../../widgets/bottom_sheets/voice_note/voice_note_bottom_sheet.dart';
import 'bloc/bloc.dart';
import 'widgets/delete_all_tasks_bottom_sheet.dart';
import 'widgets/tasks_container.dart';

class TasksPage extends StatelessWidget {
  const TasksPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<TasksBloc>();
    return Scaffold(
      backgroundColor: AppColors.dividerGrey,
      body: SafeArea(
        child: BlocConsumer<TasksBloc, TasksState>(
          builder: (context, state) {
            return Stack(
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: SizedBox(
                          width: double.infinity,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    ElevatedButton(
                                        onPressed: () {
                                          context.pop();
                                        },
                                        style: ElevatedButton.styleFrom(
                                            shape: const CircleBorder(),
                                            padding: EdgeInsets.zero,
                                            elevation: 0,
                                            backgroundColor: AppColors.dividerGrey),
                                        child: SvgPicture.asset(
                                          color: SharedPrefs.isThemeDark ? AppColors.black : null,

                                          'assets/images/svg/pop.svg',
                                          height: 24,
                                        )),
                                    AnimatedOpacity(
                                      duration: Duration(milliseconds: 200),
                                      opacity: state.maybeWhen(orElse: () => false, loaded: (_) => true) ? 1 : 0,
                                      child: GestureDetector(
                                          onTap: () {
                                            bloc.add(const TasksEvent.selectTasksMode(
                                                mode: true));
                                          },
                                          child: Text(
                                            'Выбрать задачи',
                                            style: AppStyles.bodyBlackBold
                                                .copyWith(color: AppColors.blue),
                                          )),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Text(
                                  'Задачи',
                                  style: AppStyles.mediumTitle
                                      .copyWith(color: AppColors.black),
                                ),
                              ]),
                        ),

                      ),
                      state.tasks.isEmpty ? SizedBox(
                        height: size.height / 2 ,
                        child: Center(
                          child: Text('Здесь пока что пусто...', style: AppStyles.smallGrey.copyWith(fontSize: 20),),
                        ),
                      ) :
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                            children: List.generate(
                              state.tasks.length,
                                  (index) {
                                final element = state.tasks[index];
                                if(element.isEmpty) return Container();
                                return Padding(
                                  padding: index == state.tasks.length - 1 ? EdgeInsets.only(bottom: 100) : EdgeInsets.zero,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 10),
                                    child: TasksContainer(
                                      selectionMode: state.maybeWhen(orElse: () => false,
                                          selectTasks: (Tasks, selected) {
                                            return true;
                                          }
                                      ),
                                      onDelete: (note) {
                                        bloc.add(TasksEvent.removeSelectedTasks([note.id]));

                                      },

                                      selectedTasks: state.maybeWhen(orElse: () => [],
                                      selectTasks: (Tasks, selected) {
                                        return selected;
                                      }
                                      ),
                                        onTap: (note) {
                                        BottomSheetHandler.showBottomSheet(context,
                                            useRootNavigator: true,
                                            child: TaskViewBottomSheet(task: note, onRemove: () {

                                          bloc.add(TasksEvent.removeSelectedTasks([note.id]));
                                        },));
                                        },
                                        onSelect: (id) {
                                            bloc.add(TasksEvent.selectTask(id: id));
                                        },
                                        tasks: element,
                                        title: (element.first.dateTime.year ==
                                            DateTime.now().year &&
                                            element.first.dateTime.month ==
                                                DateTime.now().month &&
                                            element.first.dateTime.day ==
                                                DateTime.now().day)
                                            ? 'Сегодня'
                                            : index == 0
                                            ? 'Последнее'
                                            : 'Предыдущее', ),
                                  ),
                                );
                              },
                            )),
                      )
                    ],
                  ),
                ),

                 Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
                    child: state.maybeWhen(orElse: () {
                      return CustomButton(
                        onTap: () {
                          BottomSheetHandler.showBottomSheet(
                              context,
                              child: const TaskBottomSheet(),
                              useRootNavigator: true).then((value) {
                            if(value == null) return;
                            bloc.add(TasksEvent.create(task: value));

                          });

                        },
                        title: 'Создать задачу',
                        suffix: const Icon(
                          Icons.add,
                          size: 18,
                          color: Colors.white,
                        ),
                      );
            }, selectTasks: (Tasks, selected) {
                      return Row(
                        children: [
                          Expanded(
                            child: CustomButton(
                              onTap: () {
                                bloc.add(TasksEvent.selectTasksMode(mode:false));
                              },
                              title: 'Отменить',
                              bg: AppColors.dividerGrey,
                              textColor: AppColors.black,
                            ),
                          ),
                          const SizedBox(width: 10,),
                          Expanded(
                            child: CustomButton(
                              onTap: () {

                                if(selected.isEmpty) {
                                  BottomSheetHandler.showBottomSheet(context,
                                      useRootNavigator: true,
                                      child: DeleteAllTasksBottomSheet(onCancel: () {
                                  }, onOk: () {
                                    bloc.add(const TasksEvent.removeAllTasks());

                                  },));
                                } else {
                                  bloc.add(const TasksEvent.removeSelectedTasks());
                                }
                              },
                              bg: Colors.red,
                              title: 'Удалить${selected.isEmpty ? ' все' : ''}',

                            ),
                          ),
                        ],
                      );
            })
                  ),
                )
              ],
            );
          }, listener: (BuildContext context, TasksState state) {
            Future.delayed(Duration(seconds: 2), () {
              context.read<CalendarBloc>().add(const CalendarEvent.fetch());

            });

        },
        ),
      ),
    );
  }
}
