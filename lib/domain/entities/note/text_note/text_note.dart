import 'package:freezed_annotation/freezed_annotation.dart';


part 'text_note.freezed.dart';
part 'text_note.g.dart';

@freezed
class TextNote with _$TextNote {
  const factory TextNote({
    required final int id,
    required final DateTime dateTime,
    required final String name,
    required final String comment,
  }) = _TextNote;

  const TextNote._();

  factory TextNote.fromJson(Map<String, Object?> json) => _$TextNoteFromJson(json);
}