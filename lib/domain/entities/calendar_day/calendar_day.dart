import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:i_assistant/domain/entities/note/text_note/text_note.dart';
import 'package:i_assistant/domain/entities/note/voice_note/voice_note.dart';
import 'package:i_assistant/utils/constants/shift_type.dart';

import '../task/task.dart';


part 'calendar_day.freezed.dart';
part 'calendar_day.g.dart';

@freezed
class CalendarDay with _$CalendarDay {
  const factory CalendarDay({
    required final int id,
    required final DateTime date,
    required final List<Task> tasks,
    required final List<Task> birthDays,
    required final List<TextNote> textNotes,
    required final List<VoiceNote> voiceNotes,
    required final ShiftType shiftType

  }) = _CalendarDay;

  const CalendarDay._();

  factory CalendarDay.fromJson(Map<String, Object?> json) => _$CalendarDayFromJson(json);
}