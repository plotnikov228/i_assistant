import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:i_assistant/domain/entities/note/note.dart';
import 'package:i_assistant/domain/entities/note/text_note/text_note.dart';
import 'package:i_assistant/domain/entities/note/voice_note/voice_note.dart';
import 'package:i_assistant/presentation/pages/calendar/widgets/shift_widget.dart';
import 'package:i_assistant/presentation/resources/app_colors.dart';
import 'package:i_assistant/presentation/resources/app_styles.dart';
import 'package:i_assistant/presentation/widgets/text_fields/custom_text_field.dart';
import 'package:i_assistant/utils/constants/shift_type.dart';

class DayNoteWidget extends StatelessWidget {
  final List<Note> notes;
  final Function(Note)? onDelete;
  final Function()? onAdd;

  const DayNoteWidget({super.key, required this.notes, this.onAdd, this.onDelete,  });

  @override
  Widget build(BuildContext context) {

    return Container(
      constraints: BoxConstraints(minHeight: 72),
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
                child: Text('Заметки', style: AppStyles.mediumHeadBlack,),
              ),
              SizedBox(
                height: 56,
                width: 56,
                child:  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.blue,
                        shape: const CircleBorder(),
                        elevation: 0,
                        padding: EdgeInsets.zero
                    ),
                    onPressed: onAdd, child: SvgPicture.asset('assets/images/svg/plus.svg', color: Colors.white)) )
            ],
          ),
          if(notes.isNotEmpty)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: notes.length,
                  itemBuilder: (context, index) {

                    return Slidable(
                        key: Key('${notes[index].name} ${notes[index].id}'),

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
                                      onPressed:  () => onDelete?.call(notes[index]), child: SvgPicture.asset('assets/images/svg/trash.svg', color: Colors.white,),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Container(
                            color: Colors.transparent,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                if(!notes[index].isText())
                                  SizedBox(
                                    height: 50,
                                    child: Center(
                                      child: Container(
                                          padding: const EdgeInsets.only(right: 5),
                                          height: 24,
                                          child: SvgPicture.asset(
                                              'assets/images/svg/play.svg')),
                                    ),
                                  ),
                                Expanded(
                                  child: SizedBox(
                                    height: !notes[index].isText() ? 50 : null,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          notes[index].name,
                                          style: AppStyles.bodyBlackBold.copyWith(color: !notes[index].isText() ? AppColors.blue : null, overflow: TextOverflow.ellipsis),

                                        ),
                                        if(notes[index].isText())
                                        if((notes[index].comment??'').isNotEmpty)
                                          const SizedBox(
                                            height: 10,
                                          ),
                                        if((notes[index].comment??'').isNotEmpty)

                                          Text(
                                            (notes[index].comment??''),
                                            style: AppStyles.smallGrey,
                                          ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ));
                  }, separatorBuilder: (BuildContext context, int index) {
                    return Padding(padding: EdgeInsets.symmetric(vertical: 10),
                    child: Divider(
                      indent: 0,
                      endIndent: 0,
                      color: AppColors.dividerGrey,

                    ),
                    );
              },),
            ),

        ],
      ),
    );
  }
}
