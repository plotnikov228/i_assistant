import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

import '../../../../domain/entities/task/task.dart';
import '../../../../utils/size_utils.dart';
import '../../../resources/app_colors.dart';
import '../../../resources/app_styles.dart';
import '../../../widgets/custom_check_box.dart';

class DayBirthdayWidget extends StatelessWidget {
  final List<Task> tasks;
  final Function(Task)? onDelete;
  final Function()? onAdd;

  const DayBirthdayWidget(
      {super.key,
        required this.tasks,
        this.onDelete,
        this.onAdd});

  @override
  Widget build(BuildContext context) {


    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  'Дни рождения',
                  style: AppStyles.mediumHeadBlack,
                ),
              ),
              SizedBox(
                height: 56,
                width: 56,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.lightBlue,
                        shape: const CircleBorder(),
                        elevation: 0,
                        padding: EdgeInsets.zero),
                    onPressed: onAdd,
                    child: SvgPicture.asset('assets/images/svg/plus.svg', color: AppColors.blue)),
              )
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
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: Slidable(
                        key: Key('${tasks[index].name} ${tasks[index].id}'),
                          endActionPane: ActionPane(
                            motion: const ScrollMotion(),
                            extentRatio: 0.2,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Column(
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
                                          onPressed:  () => onDelete?.call(tasks[index]), child: SvgPicture.asset('assets/images/svg/trash.svg', color: Colors.white,),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              border: Border.all(color: AppColors.lightGrey),
                              color: Colors.transparent
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 16, vertical:  12),
                            child: Row(
                              children: [
                                SvgPicture.asset('assets/images/svg/birthday.svg', height: 24,),
                                SizedBox(width: 10,),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        tasks[index].name,
                                        style: AppStyles.bodyBlack.copyWith(
                                            decoration: tasks[index].selected ? TextDecoration.lineThrough : null
                                        ),

                                      ),
                                      if(tasks[index].comment.isNotEmpty)
                                        const SizedBox(
                                          height: 10,
                                        ),
                                      if(tasks[index].comment.isNotEmpty)

                                        Text(
                                          tasks[index].comment,
                                          style: AppStyles.smallGrey,
                                        ),
                                      if(tasks[index].remindDateTime != null)
                                        const SizedBox(
                                          height: 10,
                                        ),

                                    ],
                                  ),
                                ),
                                if(tasks[index].remindDateTime != null)
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(right: 10),
                                        child: SvgPicture.asset('assets/images/svg/clock.svg', color: AppColors.red, height: 16,),
                                      ),
                                      Text(
                                        DateFormat('HH:mm').format(tasks[index].remindDateTime!),
                                        style: AppStyles.bodyBlackBold.copyWith(color: AppColors.red),
                                      ),
                                    ],
                                  )
                              ],
                            ),
                          )),
                    );
                  }),
            ),
        ],
      ),
    );
  }
}
