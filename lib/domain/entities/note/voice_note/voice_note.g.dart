// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'voice_note.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VoiceNoteImpl _$$VoiceNoteImplFromJson(Map<String, dynamic> json) =>
    _$VoiceNoteImpl(
      id: (json['id'] as num).toInt(),
      dateTime: DateTime.parse(json['dateTime'] as String),
      name: json['name'] as String,
      filePath: json['filePath'] as String,
    );

Map<String, dynamic> _$$VoiceNoteImplToJson(_$VoiceNoteImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'dateTime': instance.dateTime.toIso8601String(),
      'name': instance.name,
      'filePath': instance.filePath,
    };
