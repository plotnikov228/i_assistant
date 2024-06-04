// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calendar_day.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CalendarDayImpl _$$CalendarDayImplFromJson(Map<String, dynamic> json) =>
    _$CalendarDayImpl(
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
      shiftType: $enumDecode(_$ShiftTypeEnumMap, json['shiftType']),
    );

Map<String, dynamic> _$$CalendarDayImplToJson(_$CalendarDayImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': instance.date.toIso8601String(),
      'tasks': instance.tasks,
      'birthDays': instance.birthDays,
      'textNotes': instance.textNotes,
      'voiceNotes': instance.voiceNotes,
      'shiftType': _$ShiftTypeEnumMap[instance.shiftType]!,
    };

const _$ShiftTypeEnumMap = {
  ShiftType.night: 'night',
  ShiftType.day: 'day',
  ShiftType.both: 'both',
  ShiftType.empty: 'empty',
};
