// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaskImpl _$$TaskImplFromJson(Map<String, dynamic> json) => _$TaskImpl(
      id: (json['id'] as num).toInt(),
      dateTime: DateTime.parse(json['dateTime'] as String),
      name: json['name'] as String,
      comment: json['comment'] as String,
      remind: json['remind'] as bool,
    );

Map<String, dynamic> _$$TaskImplToJson(_$TaskImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'dateTime': instance.dateTime.toIso8601String(),
      'name': instance.name,
      'comment': instance.comment,
      'remind': instance.remind,
    };
