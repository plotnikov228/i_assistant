// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VoiceNoteEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() record,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? record,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? record,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Record value) record,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Record value)? record,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Record value)? record,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VoiceNoteEventCopyWith<$Res> {
  factory $VoiceNoteEventCopyWith(
          VoiceNoteEvent value, $Res Function(VoiceNoteEvent) then) =
      _$VoiceNoteEventCopyWithImpl<$Res, VoiceNoteEvent>;
}

/// @nodoc
class _$VoiceNoteEventCopyWithImpl<$Res, $Val extends VoiceNoteEvent>
    implements $VoiceNoteEventCopyWith<$Res> {
  _$VoiceNoteEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RecordImplCopyWith<$Res> {
  factory _$$RecordImplCopyWith(
          _$RecordImpl value, $Res Function(_$RecordImpl) then) =
      __$$RecordImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RecordImplCopyWithImpl<$Res>
    extends _$VoiceNoteEventCopyWithImpl<$Res, _$RecordImpl>
    implements _$$RecordImplCopyWith<$Res> {
  __$$RecordImplCopyWithImpl(
      _$RecordImpl _value, $Res Function(_$RecordImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RecordImpl implements _Record {
  const _$RecordImpl();

  @override
  String toString() {
    return 'VoiceNoteEvent.record()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RecordImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() record,
  }) {
    return record();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? record,
  }) {
    return record?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? record,
    required TResult orElse(),
  }) {
    if (record != null) {
      return record();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Record value) record,
  }) {
    return record(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Record value)? record,
  }) {
    return record?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Record value)? record,
    required TResult orElse(),
  }) {
    if (record != null) {
      return record(this);
    }
    return orElse();
  }
}

abstract class _Record implements VoiceNoteEvent {
  const factory _Record() = _$RecordImpl;
}

/// @nodoc
mixin _$VoiceNoteState {
  File? get audio => throw _privateConstructorUsedError;
  bool get recording => throw _privateConstructorUsedError;
  Stream<Amplitude> get amplitudeStream => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            File? audio, bool recording, Stream<Amplitude> amplitudeStream)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            File? audio, bool recording, Stream<Amplitude> amplitudeStream)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            File? audio, bool recording, Stream<Amplitude> amplitudeStream)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VoiceNoteStateCopyWith<VoiceNoteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VoiceNoteStateCopyWith<$Res> {
  factory $VoiceNoteStateCopyWith(
          VoiceNoteState value, $Res Function(VoiceNoteState) then) =
      _$VoiceNoteStateCopyWithImpl<$Res, VoiceNoteState>;
  @useResult
  $Res call({File? audio, bool recording, Stream<Amplitude> amplitudeStream});
}

/// @nodoc
class _$VoiceNoteStateCopyWithImpl<$Res, $Val extends VoiceNoteState>
    implements $VoiceNoteStateCopyWith<$Res> {
  _$VoiceNoteStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? audio = freezed,
    Object? recording = null,
    Object? amplitudeStream = null,
  }) {
    return _then(_value.copyWith(
      audio: freezed == audio
          ? _value.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as File?,
      recording: null == recording
          ? _value.recording
          : recording // ignore: cast_nullable_to_non_nullable
              as bool,
      amplitudeStream: null == amplitudeStream
          ? _value.amplitudeStream
          : amplitudeStream // ignore: cast_nullable_to_non_nullable
              as Stream<Amplitude>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $VoiceNoteStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({File? audio, bool recording, Stream<Amplitude> amplitudeStream});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$VoiceNoteStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? audio = freezed,
    Object? recording = null,
    Object? amplitudeStream = null,
  }) {
    return _then(_$InitialImpl(
      audio: freezed == audio
          ? _value.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as File?,
      recording: null == recording
          ? _value.recording
          : recording // ignore: cast_nullable_to_non_nullable
              as bool,
      amplitudeStream: null == amplitudeStream
          ? _value.amplitudeStream
          : amplitudeStream // ignore: cast_nullable_to_non_nullable
              as Stream<Amplitude>,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.audio,
      required this.recording,
      required this.amplitudeStream});

  @override
  final File? audio;
  @override
  final bool recording;
  @override
  final Stream<Amplitude> amplitudeStream;

  @override
  String toString() {
    return 'VoiceNoteState.initial(audio: $audio, recording: $recording, amplitudeStream: $amplitudeStream)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.audio, audio) || other.audio == audio) &&
            (identical(other.recording, recording) ||
                other.recording == recording) &&
            (identical(other.amplitudeStream, amplitudeStream) ||
                other.amplitudeStream == amplitudeStream));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, audio, recording, amplitudeStream);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            File? audio, bool recording, Stream<Amplitude> amplitudeStream)
        initial,
  }) {
    return initial(audio, recording, amplitudeStream);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            File? audio, bool recording, Stream<Amplitude> amplitudeStream)?
        initial,
  }) {
    return initial?.call(audio, recording, amplitudeStream);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            File? audio, bool recording, Stream<Amplitude> amplitudeStream)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(audio, recording, amplitudeStream);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements VoiceNoteState {
  const factory _Initial(
      {required final File? audio,
      required final bool recording,
      required final Stream<Amplitude> amplitudeStream}) = _$InitialImpl;

  @override
  File? get audio;
  @override
  bool get recording;
  @override
  Stream<Amplitude> get amplitudeStream;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
