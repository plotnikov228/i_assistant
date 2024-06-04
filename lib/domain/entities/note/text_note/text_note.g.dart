// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text_note.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TextNoteImpl _$$TextNoteImplFromJson(Map<String, dynamic> json) =>
    _$TextNoteImpl(
      id: (json['id'] as num).toInt(),
      dateTime: DateTime.parse(json['dateTime'] as String),
      name: json['name'] as String,
      comment: json['comment'] as String,
    );

Map<String, dynamic> _$$TextNoteImplToJson(_$TextNoteImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'dateTime': instance.dateTime.toIso8601String(),
      'name': instance.name,
      'comment': instance.comment,
    };
