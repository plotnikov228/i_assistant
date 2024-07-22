import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:i_assistant/domain/entities/note/voice_note/voice_note.dart';
import 'package:i_assistant/presentation/resources/app_colors.dart';
import 'package:i_assistant/presentation/resources/app_styles.dart';
import 'package:i_assistant/presentation/widgets/bottom_sheets/voice_note/bloc/bloc.dart';
import 'package:i_assistant/presentation/widgets/buttons/custom_button.dart';
import 'package:i_assistant/presentation/widgets/custom_switcher.dart';
import 'package:i_assistant/presentation/widgets/text_fields/custom_text_field.dart';
import 'package:i_assistant/utils/size_utils.dart';
import 'package:intl/intl.dart';

import '../../dialogs/date_picker_dialog.dart';

class VoiceNoteBottomSheet extends StatefulWidget {
  final DateTime? dateTime;
  const VoiceNoteBottomSheet({super.key, this.dateTime});

  @override
  State<VoiceNoteBottomSheet> createState() => _VoiceNoteBottomSheetState();
}

class _VoiceNoteBottomSheetState extends State<VoiceNoteBottomSheet> {
  final nameController = TextEditingController();

  DateTime? dateTime;
  @override
  Widget build(BuildContext context) {
    final bottom =  MediaQuery.of(context).viewInsets.bottom;
    return Padding(
      padding: EdgeInsets.only(bottom:bottom),

      child: BlocProvider(
        create: (BuildContext context) {
          return VoiceNoteBloc();
        },
        child:
            BlocBuilder<VoiceNoteBloc, VoiceNoteState>(builder: (context, state) {
          return SizedBox(
            width: size.width,
            child: Material(
              elevation: 0,
              color: Colors.transparent,
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
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
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          if(widget.dateTime == null)
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
                              GestureDetector(
                                onTap: () {
                                  showDialog(
                                      context: context,
                                      builder: (_) {
                                        return Center(
                                          child: CustomDatePickerDialog(
                                            initialDate: dateTime,
                                          ),
                                        );
                                      }).then((value) {
                                    setState(() {
                                      dateTime = value;
                                    });
                                  });
                                },
                                child: Text(
                                  dateTime == null ?  'Выбрать день' : DateFormat('dd.MM.yyyy').format(dateTime!),
                                  style: AppStyles.bodyBlackBold
                                      .copyWith(color: AppColors.blue),
                                ),
                              ),
                            ],
                          ),
                          Center(
                            child: SizedBox(
                              width:
                                  size.width - 40 < 342 ? size.width - 40 : 342,
                              child: CustomTextField(
                                  onChanged: (v) {
                                    setState(() {});
                                  },
                                  textAlign: TextAlign.center,
                                  showHintAlways: false,
                                  controller: nameController,
                                  hint: 'Название аудиозаметки',
                                  maxLength: 20,
                                  textStyle: AppStyles.mediumHead
                                      .copyWith(color: Colors.black)),
                            ),
                          ),
                          SizedBox(
                              width: 260,
                              child: Text(
                                state.recording ? 'Идет запись. Нажмите еще раз,\nкогда закончите говорить' : state.started ? 'Успешно! Чтобы продолжить запись, нажмите на микрофон' : 'Нажмите на микрофон, чтобы\nначать запись',
                                style:
                                    AppStyles.body.copyWith(color: Colors.black),
                                textAlign: TextAlign.center,
                              ))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 80 * 2,
                      child: Center(
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            StreamBuilder(
                              builder: (context, val) {
                                final _volume = 50 - (val.data?.current ?? 0).abs();
                                final double volume = _volume < 0 ? 0 : _volume;

                                debugPrint(('val ' + volume.toString()).toString());

                                return AnimatedContainer(
                                  height: state.recording ?  90 +  volume : 80 ,
                                  width: state.recording ?  90 +  volume : 80,

                                  duration: Duration(milliseconds: 50),
                                decoration: BoxDecoration(
                                  color: AppColors.lightBlue,
                                  shape: BoxShape.circle
                                ),
                                );
                              }, stream: state.amplitudeStream,
                            ),
                            SizedBox(
                              height: 80,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(),
                                    backgroundColor: AppColors.blue),
                                onPressed: () {
                                  context.read<VoiceNoteBloc>().add(const VoiceNoteEvent.record());
                                },
                                child: SvgPicture.asset(
                                  'assets/images/svg/${state.recording ? 'pause' : state.started ? 'play' : 'voice'}.svg',
                                  height: 44,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: CustomButton(
                                  title: 'Отмена',
                                  onTap: () {
                                    Navigator.of(context, rootNavigator: true)
                                        .pop();
                                  },
                                  bg: Colors.white,
                                  textColor: Colors.black,
                                ),
                              ),
                              if (state.audio != null)
                                SizedBox(
                                  width: 20,
                                ),
                              if (state.canSave && (widget.dateTime ?? dateTime) != null && nameController.text.isNotEmpty)
                                Expanded(
                                  child: CustomButton(
                                    title: 'Сохранить',
                                    onTap: () {
                                            context.read<VoiceNoteBloc>().add(VoiceNoteEvent.save(context, text: nameController.text, dateTime: (widget.dateTime ?? dateTime)!));
                                          },
                                  ),
                                )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
