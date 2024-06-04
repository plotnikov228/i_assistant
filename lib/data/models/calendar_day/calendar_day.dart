import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:i_assistant/domain/entities/note/text_note/text_note.dart';
import 'package:i_assistant/domain/entities/note/voice_note/voice_note.dart';
import 'package:i_assistant/utils/constants/shift_type.dart';

import '../../../domain/entities/task/task.dart';


part 'calendar_day.freezed.dart';
part 'calendar_day.g.dart';

@freezed
class CalendarDayModel with _$CalendarDayModel {
  const factory CalendarDayModel({
    required final int id,
    required final DateTime date,
    required final List<Task> tasks,
    required final List<Task> birthDays,
    required final List<TextNote> textNotes,
    required final List<VoiceNote> voiceNotes,
    required final String shiftType

  }) = _CalendarDayModel;

  const CalendarDayModel._();

  factory CalendarDayModel.fromJson(Map<String, Object?> json) => _$CalendarDayModelFromJson(json);
}