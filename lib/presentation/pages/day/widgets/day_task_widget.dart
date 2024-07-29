import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

import '../../../../domain/entities/task/task.dart';
import '../../../../utils/size_utils.dart';
import '../../../resources/app_colors.dart';
import '../../../resources/app_styles.dart';
import '../../../widgets/custom_check_box.dart';

class DayTaskWidget extends StatelessWidget {
  final List<Task> tasks;
  final Function(Task)? onSelect;
  final Function(Task)? onDelete;
  final Function()? onAdd;

  const DayTaskWidget(
      {super.key,
      required this.tasks,
      this.onSelect,
      this.onDelete,
      this.onAdd});

  @override
  Widget build(BuildContext context) {
    final _tasks = [...tasks]..sort((a, b) {
      final aa = a.selected ? 1 : 0;
      final bb = b.selected ? 1 : 0;

      return aa.compareTo(bb);
    });

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: AppColors.white,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  'Задачи',
                  style: AppStyles.mediumHeadBlack,
                ),
              ),
              SizedBox(
                height: 56,
                width: 56,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.blue,
                        shape: const CircleBorder(),
                        elevation: 0,
                        padding: EdgeInsets.zero
                    ),
                    onPressed: onAdd, child: SvgPicture.asset('assets/images/svg/plus.svg', color: Colors.white)))
            ],
          ),
          if(tasks.isNotEmpty)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: tasks.length,
                itemBuilder: (context, index) {

                  return Slidable(
                      key: Key('${tasks[index].name} ${tasks[index].id}'),

                      endActionPane: ActionPane(
                        motion: const ScrollMotion(),
                        extentRatio: 0.2,
                        children: [
                          Column(
                            children: [
                              Expanded(
                                child: SizedBox(
                                  width: 50,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(40)
                                        ),
                                        backgroundColor: AppColors.red,

                                        padding: EdgeInsets.zero,
                                        elevation: 0
                                    ),
                                    onPressed:  () => onDelete?.call(_tasks[index]), child: SvgPicture.asset('assets/images/svg/trash.svg', color: Colors.white,),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      child: Container(
                        color: Colors.transparent,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(

                              padding: const EdgeInsets.only(right: 10),
                              child: CustomCheckBox(
                                key: Key(_tasks[index].id.toString()),
                                value: _tasks[index].selected,
                                onChange: (v) {
                                  onSelect?.call(_tasks[index]);
                                },
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  _tasks[index].name,
                                  style: AppStyles.bodyBlackBold.copyWith(
                                    decoration: _tasks[index].selected ? TextDecoration.lineThrough : null
                                  ),

                                ),
                                if(_tasks[index].comment.isNotEmpty)
                                const SizedBox(
                                  height: 10,
                                ),
                                if(_tasks[index].comment.isNotEmpty)

                                  Text(
                                  _tasks[index].comment,
                                  style: AppStyles.smallGrey,
                                ),
                                if(_tasks[index].remindDateTime != null)
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  if(_tasks[index].remindDateTime != null)
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(right: 10),
                                        child: SvgPicture.asset('assets/images/svg/clock.svg', color: AppColors.red, height: 16,),
                                      ),
                                      Text(
                                        DateFormat('HH:mm').format(_tasks[index].remindDateTime!),
                                        style: AppStyles.bodyBlackBold.copyWith(color: AppColors.red),
                                      ),
                                    ],
                                  )
                              ],
                            ),
                          ],
                        ),
                      ));
                }),
          ),
        ],
      ),
    );
  }
}
