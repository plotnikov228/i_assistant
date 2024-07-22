import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:i_assistant/domain/entities/note/text_note/text_note.dart';
import 'package:i_assistant/domain/entities/note/voice_note/voice_note.dart';


part 'note.freezed.dart';
part 'note.g.dart';

@freezed
class Note with _$Note{
  const factory Note({
    required final int id,
    required final DateTime dateTime,
    required final String name,
    required final String? filePath,
    required final String? comment,

  }) = _Note;

  const Note._();

  factory Note.fromJson(Map<String, Object?> json) => _$NoteFromJson(json);

  bool isText () {
    return comment != null;
  }

   TextNote text () {
    return TextNote(id: this.id, dateTime: this.dateTime, name: this.name, comment: this.comment!);
  }

  VoiceNote voice () {
    return VoiceNote(id: this.id, dateTime: this.dateTime, name: this.name, filePath: this.filePath!);
  }
}
