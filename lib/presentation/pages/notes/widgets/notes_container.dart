import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:i_assistant/presentation/resources/app_styles.dart';
import 'package:i_assistant/presentation/widgets/custom_check_box.dart';
import 'package:intl/intl.dart';

import '../../../../domain/entities/note/note.dart';
import '../../../../utils/size_utils.dart';
import '../../../resources/app_colors.dart';

class NotesContainer extends StatefulWidget {
  final String title;
  final List<Note> notes;
  final Function(Note note)? onTap;
  final Function(Note note)? onDelete;
  final bool selectionMode;
  final Function(int id)? onSelect;
  final List<int> selectedNotes;

  const NotesContainer(
      {super.key,
      required this.notes,
      required this.title,
      this.onTap,
      this.onDelete,
      this.selectionMode = false,
      this.onSelect,
      this.selectedNotes = const []});

  @override
  State<NotesContainer> createState() => _NotesContainerState();
}

class _NotesContainerState extends State<NotesContainer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: AppStyles.mediumHead.copyWith(color: AppColors.black, fontWeight: FontWeight.w700),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32), color: AppColors.white),
          padding: const EdgeInsets.only(left: 24, right: 24, top: 24, bottom: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  final e = widget.notes[index];
                  return Slidable(
                      endActionPane: ActionPane(
                        motion: const ScrollMotion(),
                        extentRatio: 0.2,
                        children: [
                          SizedBox(
                            height: 50,
                            width: 50,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                backgroundColor: AppColors.red,
                                padding: EdgeInsets.zero,
                                elevation: 0
                              ),
                              onPressed:  () => widget.onDelete?.call(e), child: SvgPicture.asset('assets/images/svg/trash.svg', color: Colors.white,),
                            ),
                          )/*
                          SlidableAction(

                            onPressed: (context) {
                              widget.onDelete?.call(e);
                            },
                            padding: EdgeInsets.zero,
                            icon: Icons.delete_outline_outlined,
                            foregroundColor: AppColors.white,
                            backgroundColor: AppColors.red,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(100)),
                          ),*/
                        ],
                      ),
                      child: Slidable(
                          key: Key('${widget.notes[index].name} ${widget.notes[index].id}'),

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
                                        onPressed:  () => widget.onDelete?.call(widget.notes[index]), child: SvgPicture.asset('assets/images/svg/trash.svg', color: Colors.white,),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        child: GestureDetector(
                          onTap: () {
                            widget.onTap?.call(e);
                          },
                          child: Container(
                            width: size.width - 24 * 2,
                            color: Colors.transparent,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    if (widget.selectionMode)
                                      Container(
                                        padding: const EdgeInsets.only(right: 10),
                                        child: CustomCheckBox(
                                          value: widget.selectedNotes.contains(e.id),
                                          onChange: (v) {
                                            widget.onSelect?.call(e.id);
                                          },
                                        ),
                                      ),if(!widget.notes[index].isText())
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
                                        height: !widget.notes[index].isText() ? 50 : null,
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              widget.notes[index].name,
                                              style: AppStyles.bodyBlackBold.copyWith(color: !widget.notes[index].isText() ? AppColors.blue : null, overflow: TextOverflow.ellipsis),

                                            ),
                                            if(widget.notes[index].isText())
                                              if((widget.notes[index].comment??'').isNotEmpty)
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                            if((widget.notes[index].comment??'').isNotEmpty)

                                              Text(
                                                (widget.notes[index].comment??''),
                                                style: AppStyles.smallGrey,
                                              ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ));
                },
                separatorBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Divider(
                      indent: 0,
                      endIndent: 0,
                      color: AppColors.dividerGrey,
                    ),
                  );
                },
                itemCount: widget.notes.length,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
