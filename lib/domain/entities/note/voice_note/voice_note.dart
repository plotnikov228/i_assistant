import 'package:freezed_annotation/freezed_annotation.dart';


part 'voice_note.freezed.dart';
part 'voice_note.g.dart';

@freezed
class VoiceNote with _$VoiceNote {
  const factory VoiceNote({
    required final int id,
    required final DateTime dateTime,
    required final String name,
    required final String filePath,
  }) = _VoiceNote;

  const VoiceNote._();

  factory VoiceNote.fromJson(Map<String, Object?> json) => _$VoiceNoteFromJson(json);
}