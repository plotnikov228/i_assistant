// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'text_note.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TextNote _$TextNoteFromJson(Map<String, dynamic> json) {
  return _TextNote.fromJson(json);
}

/// @nodoc
mixin _$TextNote {
  int get id => throw _privateConstructorUsedError;
  DateTime get dateTime => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TextNoteCopyWith<TextNote> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextNoteCopyWith<$Res> {
  factory $TextNoteCopyWith(TextNote value, $Res Function(TextNote) then) =
      _$TextNoteCopyWithImpl<$Res, TextNote>;
  @useResult
  $Res call({int id, DateTime dateTime, String name, String comment});
}

/// @nodoc
class _$TextNoteCopyWithImpl<$Res, $Val extends TextNote>
    implements $TextNoteCopyWith<$Res> {
  _$TextNoteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? dateTime = null,
    Object? name = null,
    Object? comment = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TextNoteImplCopyWith<$Res>
    implements $TextNoteCopyWith<$Res> {
  factory _$$TextNoteImplCopyWith(
          _$TextNoteImpl value, $Res Function(_$TextNoteImpl) then) =
      __$$TextNoteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, DateTime dateTime, String name, String comment});
}

/// @nodoc
class __$$TextNoteImplCopyWithImpl<$Res>
    extends _$TextNoteCopyWithImpl<$Res, _$TextNoteImpl>
    implements _$$TextNoteImplCopyWith<$Res> {
  __$$TextNoteImplCopyWithImpl(
      _$TextNoteImpl _value, $Res Function(_$TextNoteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? dateTime = null,
    Object? name = null,
    Object? comment = null,
  }) {
    return _then(_$TextNoteImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TextNoteImpl extends _TextNote {
  const _$TextNoteImpl(
      {required this.id,
      required this.dateTime,
      required this.name,
      required this.comment})
      : super._();

  factory _$TextNoteImpl.fromJson(Map<String, dynamic> json) =>
      _$$TextNoteImplFromJson(json);

  @override
  final int id;
  @override
  final DateTime dateTime;
  @override
  final String name;
  @override
  final String comment;

  @override
  String toString() {
    return 'TextNote(id: $id, dateTime: $dateTime, name: $name, comment: $comment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TextNoteImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, dateTime, name, comment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TextNoteImplCopyWith<_$TextNoteImpl> get copyWith =>
      __$$TextNoteImplCopyWithImpl<_$TextNoteImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TextNoteImplToJson(
      this,
    );
  }
}

abstract class _TextNote extends TextNote {
  const factory _TextNote(
      {required final int id,
      required final DateTime dateTime,
      required final String name,
      required final String comment}) = _$TextNoteImpl;
  const _TextNote._() : super._();

  factory _TextNote.fromJson(Map<String, dynamic> json) =
      _$TextNoteImpl.fromJson;

  @override
  int get id;
  @override
  DateTime get dateTime;
  @override
  String get name;
  @override
  String get comment;
  @override
  @JsonKey(ignore: true)
  _$$TextNoteImplCopyWith<_$TextNoteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
