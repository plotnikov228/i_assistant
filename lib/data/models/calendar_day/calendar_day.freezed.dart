// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calendar_day.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CalendarDayModel _$CalendarDayModelFromJson(Map<String, dynamic> json) {
  return _CalendarDayModel.fromJson(json);
}

/// @nodoc
mixin _$CalendarDayModel {
  int get id => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  List<Task> get tasks => throw _privateConstructorUsedError;
  List<Task> get birthDays => throw _privateConstructorUsedError;
  List<TextNote> get textNotes => throw _privateConstructorUsedError;
  List<VoiceNote> get voiceNotes => throw _privateConstructorUsedError;
  String get shiftType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CalendarDayModelCopyWith<CalendarDayModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarDayModelCopyWith<$Res> {
  factory $CalendarDayModelCopyWith(
          CalendarDayModel value, $Res Function(CalendarDayModel) then) =
      _$CalendarDayModelCopyWithImpl<$Res, CalendarDayModel>;
  @useResult
  $Res call(
      {int id,
      DateTime date,
      List<Task> tasks,
      List<Task> birthDays,
      List<TextNote> textNotes,
      List<VoiceNote> voiceNotes,
      String shiftType});
}

/// @nodoc
class _$CalendarDayModelCopyWithImpl<$Res, $Val extends CalendarDayModel>
    implements $CalendarDayModelCopyWith<$Res> {
  _$CalendarDayModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = null,
    Object? tasks = null,
    Object? birthDays = null,
    Object? textNotes = null,
    Object? voiceNotes = null,
    Object? shiftType = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      tasks: null == tasks
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Task>,
      birthDays: null == birthDays
          ? _value.birthDays
          : birthDays // ignore: cast_nullable_to_non_nullable
              as List<Task>,
      textNotes: null == textNotes
          ? _value.textNotes
          : textNotes // ignore: cast_nullable_to_non_nullable
              as List<TextNote>,
      voiceNotes: null == voiceNotes
          ? _value.voiceNotes
          : voiceNotes // ignore: cast_nullable_to_non_nullable
              as List<VoiceNote>,
      shiftType: null == shiftType
          ? _value.shiftType
          : shiftType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CalendarDayModelImplCopyWith<$Res>
    implements $CalendarDayModelCopyWith<$Res> {
  factory _$$CalendarDayModelImplCopyWith(_$CalendarDayModelImpl value,
          $Res Function(_$CalendarDayModelImpl) then) =
      __$$CalendarDayModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      DateTime date,
      List<Task> tasks,
      List<Task> birthDays,
      List<TextNote> textNotes,
      List<VoiceNote> voiceNotes,
      String shiftType});
}

/// @nodoc
class __$$CalendarDayModelImplCopyWithImpl<$Res>
    extends _$CalendarDayModelCopyWithImpl<$Res, _$CalendarDayModelImpl>
    implements _$$CalendarDayModelImplCopyWith<$Res> {
  __$$CalendarDayModelImplCopyWithImpl(_$CalendarDayModelImpl _value,
      $Res Function(_$CalendarDayModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = null,
    Object? tasks = null,
    Object? birthDays = null,
    Object? textNotes = null,
    Object? voiceNotes = null,
    Object? shiftType = null,
  }) {
    return _then(_$CalendarDayModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      tasks: null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Task>,
      birthDays: null == birthDays
          ? _value._birthDays
          : birthDays // ignore: cast_nullable_to_non_nullable
              as List<Task>,
      textNotes: null == textNotes
          ? _value._textNotes
          : textNotes // ignore: cast_nullable_to_non_nullable
              as List<TextNote>,
      voiceNotes: null == voiceNotes
          ? _value._voiceNotes
          : voiceNotes // ignore: cast_nullable_to_non_nullable
              as List<VoiceNote>,
      shiftType: null == shiftType
          ? _value.shiftType
          : shiftType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CalendarDayModelImpl extends _CalendarDayModel {
  const _$CalendarDayModelImpl(
      {required this.id,
      required this.date,
      required final List<Task> tasks,
      required final List<Task> birthDays,
      required final List<TextNote> textNotes,
      required final List<VoiceNote> voiceNotes,
      required this.shiftType})
      : _tasks = tasks,
        _birthDays = birthDays,
        _textNotes = textNotes,
        _voiceNotes = voiceNotes,
        super._();

  factory _$CalendarDayModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CalendarDayModelImplFromJson(json);

  @override
  final int id;
  @override
  final DateTime date;
  final List<Task> _tasks;
  @override
  List<Task> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  final List<Task> _birthDays;
  @override
  List<Task> get birthDays {
    if (_birthDays is EqualUnmodifiableListView) return _birthDays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_birthDays);
  }

  final List<TextNote> _textNotes;
  @override
  List<TextNote> get textNotes {
    if (_textNotes is EqualUnmodifiableListView) return _textNotes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_textNotes);
  }

  final List<VoiceNote> _voiceNotes;
  @override
  List<VoiceNote> get voiceNotes {
    if (_voiceNotes is EqualUnmodifiableListView) return _voiceNotes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_voiceNotes);
  }

  @override
  final String shiftType;

  @override
  String toString() {
    return 'CalendarDayModel(id: $id, date: $date, tasks: $tasks, birthDays: $birthDays, textNotes: $textNotes, voiceNotes: $voiceNotes, shiftType: $shiftType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalendarDayModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality().equals(other._tasks, _tasks) &&
            const DeepCollectionEquality()
                .equals(other._birthDays, _birthDays) &&
            const DeepCollectionEquality()
                .equals(other._textNotes, _textNotes) &&
            const DeepCollectionEquality()
                .equals(other._voiceNotes, _voiceNotes) &&
            (identical(other.shiftType, shiftType) ||
                other.shiftType == shiftType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      date,
      const DeepCollectionEquality().hash(_tasks),
      const DeepCollectionEquality().hash(_birthDays),
      const DeepCollectionEquality().hash(_textNotes),
      const DeepCollectionEquality().hash(_voiceNotes),
      shiftType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CalendarDayModelImplCopyWith<_$CalendarDayModelImpl> get copyWith =>
      __$$CalendarDayModelImplCopyWithImpl<_$CalendarDayModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CalendarDayModelImplToJson(
      this,
    );
  }
}

abstract class _CalendarDayModel extends CalendarDayModel {
  const factory _CalendarDayModel(
      {required final int id,
      required final DateTime date,
      required final List<Task> tasks,
      required final List<Task> birthDays,
      required final List<TextNote> textNotes,
      required final List<VoiceNote> voiceNotes,
      required final String shiftType}) = _$CalendarDayModelImpl;
  const _CalendarDayModel._() : super._();

  factory _CalendarDayModel.fromJson(Map<String, dynamic> json) =
      _$CalendarDayModelImpl.fromJson;

  @override
  int get id;
  @override
  DateTime get date;
  @override
  List<Task> get tasks;
  @override
  List<Task> get birthDays;
  @override
  List<TextNote> get textNotes;
  @override
  List<VoiceNote> get voiceNotes;
  @override
  String get shiftType;
  @override
  @JsonKey(ignore: true)
  _$$CalendarDayModelImplCopyWith<_$CalendarDayModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
