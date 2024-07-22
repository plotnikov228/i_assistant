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
mixin _$NoteViewEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() play,
    required TResult Function() stop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? play,
    TResult? Function()? stop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? play,
    TResult Function()? stop,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Play value) play,
    required TResult Function(_Stop value) stop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Play value)? play,
    TResult? Function(_Stop value)? stop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Play value)? play,
    TResult Function(_Stop value)? stop,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteViewEventCopyWith<$Res> {
  factory $NoteViewEventCopyWith(
          NoteViewEvent value, $Res Function(NoteViewEvent) then) =
      _$NoteViewEventCopyWithImpl<$Res, NoteViewEvent>;
}

/// @nodoc
class _$NoteViewEventCopyWithImpl<$Res, $Val extends NoteViewEvent>
    implements $NoteViewEventCopyWith<$Res> {
  _$NoteViewEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PlayImplCopyWith<$Res> {
  factory _$$PlayImplCopyWith(
          _$PlayImpl value, $Res Function(_$PlayImpl) then) =
      __$$PlayImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PlayImplCopyWithImpl<$Res>
    extends _$NoteViewEventCopyWithImpl<$Res, _$PlayImpl>
    implements _$$PlayImplCopyWith<$Res> {
  __$$PlayImplCopyWithImpl(_$PlayImpl _value, $Res Function(_$PlayImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PlayImpl implements _Play {
  const _$PlayImpl();

  @override
  String toString() {
    return 'NoteViewEvent.play()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PlayImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() play,
    required TResult Function() stop,
  }) {
    return play();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? play,
    TResult? Function()? stop,
  }) {
    return play?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? play,
    TResult Function()? stop,
    required TResult orElse(),
  }) {
    if (play != null) {
      return play();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Play value) play,
    required TResult Function(_Stop value) stop,
  }) {
    return play(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Play value)? play,
    TResult? Function(_Stop value)? stop,
  }) {
    return play?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Play value)? play,
    TResult Function(_Stop value)? stop,
    required TResult orElse(),
  }) {
    if (play != null) {
      return play(this);
    }
    return orElse();
  }
}

abstract class _Play implements NoteViewEvent {
  const factory _Play() = _$PlayImpl;
}

/// @nodoc
abstract class _$$StopImplCopyWith<$Res> {
  factory _$$StopImplCopyWith(
          _$StopImpl value, $Res Function(_$StopImpl) then) =
      __$$StopImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StopImplCopyWithImpl<$Res>
    extends _$NoteViewEventCopyWithImpl<$Res, _$StopImpl>
    implements _$$StopImplCopyWith<$Res> {
  __$$StopImplCopyWithImpl(_$StopImpl _value, $Res Function(_$StopImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StopImpl implements _Stop {
  const _$StopImpl();

  @override
  String toString() {
    return 'NoteViewEvent.stop()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StopImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() play,
    required TResult Function() stop,
  }) {
    return stop();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? play,
    TResult? Function()? stop,
  }) {
    return stop?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? play,
    TResult Function()? stop,
    required TResult orElse(),
  }) {
    if (stop != null) {
      return stop();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Play value) play,
    required TResult Function(_Stop value) stop,
  }) {
    return stop(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Play value)? play,
    TResult? Function(_Stop value)? stop,
  }) {
    return stop?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Play value)? play,
    TResult Function(_Stop value)? stop,
    required TResult orElse(),
  }) {
    if (stop != null) {
      return stop(this);
    }
    return orElse();
  }
}

abstract class _Stop implements NoteViewEvent {
  const factory _Stop() = _$StopImpl;
}

/// @nodoc
mixin _$NoteViewState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool playig, AudioPlayer amplitudeStream, Stream<double> pitch)
        audio,
    required TResult Function() text,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool playig, AudioPlayer amplitudeStream, Stream<double> pitch)?
        audio,
    TResult? Function()? text,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool playig, AudioPlayer amplitudeStream, Stream<double> pitch)?
        audio,
    TResult Function()? text,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Audio value) audio,
    required TResult Function(_Text value) text,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Audio value)? audio,
    TResult? Function(_Text value)? text,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Audio value)? audio,
    TResult Function(_Text value)? text,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteViewStateCopyWith<$Res> {
  factory $NoteViewStateCopyWith(
          NoteViewState value, $Res Function(NoteViewState) then) =
      _$NoteViewStateCopyWithImpl<$Res, NoteViewState>;
}

/// @nodoc
class _$NoteViewStateCopyWithImpl<$Res, $Val extends NoteViewState>
    implements $NoteViewStateCopyWith<$Res> {
  _$NoteViewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AudioImplCopyWith<$Res> {
  factory _$$AudioImplCopyWith(
          _$AudioImpl value, $Res Function(_$AudioImpl) then) =
      __$$AudioImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool playig, AudioPlayer amplitudeStream, Stream<double> pitch});
}

/// @nodoc
class __$$AudioImplCopyWithImpl<$Res>
    extends _$NoteViewStateCopyWithImpl<$Res, _$AudioImpl>
    implements _$$AudioImplCopyWith<$Res> {
  __$$AudioImplCopyWithImpl(
      _$AudioImpl _value, $Res Function(_$AudioImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playig = null,
    Object? amplitudeStream = null,
    Object? pitch = null,
  }) {
    return _then(_$AudioImpl(
      playig: null == playig
          ? _value.playig
          : playig // ignore: cast_nullable_to_non_nullable
              as bool,
      amplitudeStream: null == amplitudeStream
          ? _value.amplitudeStream
          : amplitudeStream // ignore: cast_nullable_to_non_nullable
              as AudioPlayer,
      pitch: null == pitch
          ? _value.pitch
          : pitch // ignore: cast_nullable_to_non_nullable
              as Stream<double>,
    ));
  }
}

/// @nodoc

class _$AudioImpl implements _Audio {
  const _$AudioImpl(
      {required this.playig,
      required this.amplitudeStream,
      required this.pitch});

  @override
  final bool playig;
  @override
  final AudioPlayer amplitudeStream;
  @override
  final Stream<double> pitch;

  @override
  String toString() {
    return 'NoteViewState.audio(playig: $playig, amplitudeStream: $amplitudeStream, pitch: $pitch)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AudioImpl &&
            (identical(other.playig, playig) || other.playig == playig) &&
            (identical(other.amplitudeStream, amplitudeStream) ||
                other.amplitudeStream == amplitudeStream) &&
            (identical(other.pitch, pitch) || other.pitch == pitch));
  }

  @override
  int get hashCode => Object.hash(runtimeType, playig, amplitudeStream, pitch);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AudioImplCopyWith<_$AudioImpl> get copyWith =>
      __$$AudioImplCopyWithImpl<_$AudioImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool playig, AudioPlayer amplitudeStream, Stream<double> pitch)
        audio,
    required TResult Function() text,
  }) {
    return audio(playig, amplitudeStream, pitch);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool playig, AudioPlayer amplitudeStream, Stream<double> pitch)?
        audio,
    TResult? Function()? text,
  }) {
    return audio?.call(playig, amplitudeStream, pitch);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool playig, AudioPlayer amplitudeStream, Stream<double> pitch)?
        audio,
    TResult Function()? text,
    required TResult orElse(),
  }) {
    if (audio != null) {
      return audio(playig, amplitudeStream, pitch);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Audio value) audio,
    required TResult Function(_Text value) text,
  }) {
    return audio(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Audio value)? audio,
    TResult? Function(_Text value)? text,
  }) {
    return audio?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Audio value)? audio,
    TResult Function(_Text value)? text,
    required TResult orElse(),
  }) {
    if (audio != null) {
      return audio(this);
    }
    return orElse();
  }
}

abstract class _Audio implements NoteViewState {
  const factory _Audio(
      {required final bool playig,
      required final AudioPlayer amplitudeStream,
      required final Stream<double> pitch}) = _$AudioImpl;

  bool get playig;
  AudioPlayer get amplitudeStream;
  Stream<double> get pitch;
  @JsonKey(ignore: true)
  _$$AudioImplCopyWith<_$AudioImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TextImplCopyWith<$Res> {
  factory _$$TextImplCopyWith(
          _$TextImpl value, $Res Function(_$TextImpl) then) =
      __$$TextImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TextImplCopyWithImpl<$Res>
    extends _$NoteViewStateCopyWithImpl<$Res, _$TextImpl>
    implements _$$TextImplCopyWith<$Res> {
  __$$TextImplCopyWithImpl(_$TextImpl _value, $Res Function(_$TextImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TextImpl implements _Text {
  const _$TextImpl();

  @override
  String toString() {
    return 'NoteViewState.text()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TextImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool playig, AudioPlayer amplitudeStream, Stream<double> pitch)
        audio,
    required TResult Function() text,
  }) {
    return text();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool playig, AudioPlayer amplitudeStream, Stream<double> pitch)?
        audio,
    TResult? Function()? text,
  }) {
    return text?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool playig, AudioPlayer amplitudeStream, Stream<double> pitch)?
        audio,
    TResult Function()? text,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Audio value) audio,
    required TResult Function(_Text value) text,
  }) {
    return text(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Audio value)? audio,
    TResult? Function(_Text value)? text,
  }) {
    return text?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Audio value)? audio,
    TResult Function(_Text value)? text,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(this);
    }
    return orElse();
  }
}

abstract class _Text implements NoteViewState {
  const factory _Text() = _$TextImpl;
}
