// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaskModelImpl _$$TaskModelImplFromJson(Map<String, dynamic> json) =>
    _$TaskModelImpl(
      id: (json['id'] as num).toInt(),
      dateTime: json['dateTime'] == null
          ? null
          : DateTime.parse(json['dateTime'] as String),
      name: json['name'] as String?,
      comment: json['comment'] as String?,
      remindDateTime: json['remindDateTime'] == null
          ? null
          : DateTime.parse(json['remindDateTime'] as String),
      selected: json['selected'] as bool?,
    );

Map<String, dynamic> _$$TaskModelImplToJson(_$TaskModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'dateTime': instance.dateTime?.toIso8601String(),
      'name': instance.name,
      'comment': instance.comment,
      'remindDateTime': instance.remindDateTime?.toIso8601String(),
      'selected': instance.selected,
    };
