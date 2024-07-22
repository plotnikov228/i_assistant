import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:i_assistant/domain/entities/note/note.dart';
import 'package:i_assistant/domain/entities/note/text_note/text_note.dart';
import 'package:i_assistant/presentation/resources/app_colors.dart';
import 'package:i_assistant/presentation/resources/app_styles.dart';
import 'package:i_assistant/presentation/widgets/bottom_sheets/note_view/bloc/bloc.dart';
import 'package:i_assistant/presentation/widgets/buttons/custom_button.dart';
import 'package:i_assistant/presentation/widgets/custom_switcher.dart';
import 'package:i_assistant/presentation/widgets/text_fields/custom_text_field.dart';
import 'package:i_assistant/utils/size_utils.dart';
import 'package:intl/intl.dart';

import '../dialogs/date_picker_dialog.dart';

class NoteViewBottomSheet extends StatefulWidget {
  final Note note;
  final Function()? onDelete;
  const NoteViewBottomSheet({super.key, required this.note, this.onDelete});

  @override
  State<NoteViewBottomSheet> createState() => _NoteViewBottomSheetState();
}

class _NoteViewBottomSheetState extends State<NoteViewBottomSheet> {

  Widget _expanded (bool ex, {required Widget child}) {
    if(ex) {
      return Expanded(child: child);
    }
    return child;
  }

  DateTime? dateTime;
  @override
  Widget build(BuildContext context) {
    final bottom = MediaQuery.of(context).viewInsets.bottom;
    return BlocProvider(
      create: (BuildContext context) {
        return NoteViewBloc(widget.note);
      },
      child: BlocBuilder<NoteViewBloc, NoteViewState>(
        builder: (context, state) {

          return Padding(
            padding: EdgeInsets.only(bottom: bottom),
            child: SizedBox(
              height: state.maybeWhen(orElse: () => null, text: () => size.height * 0.75),
              width: size.width,
              child: Material(
                elevation: 0,
                color: Colors.transparent,
                child: Container(

                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40), topRight: Radius.circular(40))),
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
                      _expanded(
                        widget.note.isText(),
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    'assets/images/svg/calendar.svg',
                                    height: 24,
                                    width: 24,
                                    color: AppColors.blue,

                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    DateFormat('dd.MM.yyyy').format(widget.note.dateTime),
                                    style: AppStyles.bodyBlackBold
                                        .copyWith(color: AppColors.blue),
                                  ),
                                ],
                              ),
                              IgnorePointer(
                                child: CustomTextField(
                                    onChanged: (v) {
                                      setState(() {

                                      });
                                    },
                                    controller: TextEditingController(text: widget.note.name),
                                    hint: 'Новая заметка',
                                    maxLength: 20,
                                    textStyle:
                                    AppStyles.mediumHead.copyWith(color: Colors.black)),
                              ),
                          state.maybeWhen(orElse: () {
                            return IgnorePointer(
                              child: CustomTextField(
                                  controller: TextEditingController(text: widget.note.text().comment),
                                  hint: '',
                                  maxLength: 300,
                                  minLines: 5,
                                  maxLines: 5,
                                  textStyle: AppStyles.body.copyWith(color: Colors.black)),
                            );
                          }, audio: (playing, player,stream) {
                            return SizedBox(
                              height: 80 * 2,
                              child: Center(
                                child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                             /*StreamBuilder(
                              builder: (context, val) {
                                final _volume = 50 * (val.data ?? 0).abs();
                                final double volume = _volume < 0 ? 0 : _volume;

                                debugPrint(('val ' + _volume.toString()).toString());

                                return AnimatedContainer(
                                  height: playing ?  90 +  volume : 80 ,
                                  width: playing ?  90 +  volume : 80,

                                  duration: Duration(milliseconds: 50),
                                  decoration: BoxDecoration(
                                      color: AppColors.lightBlue,
                                      shape: BoxShape.circle
                                  ),
                                );
                              }, stream: stream,
                            ),*/
                            SizedBox(
                                height: 80,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      shape: CircleBorder(),
                                      backgroundColor: AppColors.blue),
                                  onPressed: () {
                                    context.read<NoteViewBloc>().add(NoteViewEvent.play());
                                  },
                                  child: SvgPicture.asset(
                                    'assets/images/svg/${playing ? 'pause' : 'play'}.svg',
                                    height: 44,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ])));
                          })

                            ],
                          ),
                        ),
                      ),
                      if(bottom <= 0 && widget.onDelete != null)
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(padding: EdgeInsets.all(20),
                              child: CustomButton(
                                suffix: SvgPicture.asset(
                                  'assets/images/svg/trash.svg',
                                  height: 20,
                                  width: 20,

                                ),
                                title: 'Удалить заметку',
                                bg: Colors.white,
                                textColor: Colors.black,
                                onTap:() {
                                  Navigator.pop(context);
                                  widget.onDelete?.call();
                                },
                              )
                            ),
                            SizedBox(height: 10,)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        }
      ),
    );
  }
}
