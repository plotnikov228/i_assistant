// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calendar_day.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CalendarDayModelImpl _$$CalendarDayModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CalendarDayModelImpl(
      id: (json['id'] as num).toInt(),
      date: DateTime.parse(json['date'] as String),
      tasks: (json['tasks'] as List<dynamic>)
          .map((e) => Task.fromJson(e as Map<String, dynamic>))
          .toList(),
      birthDays: (json['birthDays'] as List<dynamic>)
          .map((e) => Task.fromJson(e as Map<String, dynamic>))
          .toList(),
      textNotes: (json['textNotes'] as List<dynamic>)
          .map((e) => TextNote.fromJson(e as Map<String, dynamic>))
          .toList(),
      voiceNotes: (json['voiceNotes'] as List<dynamic>)
          .map((e) => VoiceNote.fromJson(e as Map<String, dynamic>))
          .toList(),
      shiftType: json['shiftType'] as String,
    );

Map<String, dynamic> _$$CalendarDayModelImplToJson(
        _$CalendarDayModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': instance.date.toIso8601String(),
      'tasks': instance.tasks,
      'birthDays': instance.birthDays,
      'textNotes': instance.textNotes,
      'voiceNotes': instance.voiceNotes,
      'shiftType': instance.shiftType,
    };
