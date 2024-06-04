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
mixin _$NavigatorEvent {
  bool? get value => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? value) changeVisible,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool? value)? changeVisible,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? value)? changeVisible,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeVisible value) changeVisible,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeVisible value)? changeVisible,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeVisible value)? changeVisible,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NavigatorEventCopyWith<NavigatorEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigatorEventCopyWith<$Res> {
  factory $NavigatorEventCopyWith(
          NavigatorEvent value, $Res Function(NavigatorEvent) then) =
      _$NavigatorEventCopyWithImpl<$Res, NavigatorEvent>;
  @useResult
  $Res call({bool? value});
}

/// @nodoc
class _$NavigatorEventCopyWithImpl<$Res, $Val extends NavigatorEvent>
    implements $NavigatorEventCopyWith<$Res> {
  _$NavigatorEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChangeVisibleImplCopyWith<$Res>
    implements $NavigatorEventCopyWith<$Res> {
  factory _$$ChangeVisibleImplCopyWith(
          _$ChangeVisibleImpl value, $Res Function(_$ChangeVisibleImpl) then) =
      __$$ChangeVisibleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? value});
}

/// @nodoc
class __$$ChangeVisibleImplCopyWithImpl<$Res>
    extends _$NavigatorEventCopyWithImpl<$Res, _$ChangeVisibleImpl>
    implements _$$ChangeVisibleImplCopyWith<$Res> {
  __$$ChangeVisibleImplCopyWithImpl(
      _$ChangeVisibleImpl _value, $Res Function(_$ChangeVisibleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$ChangeVisibleImpl(
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$ChangeVisibleImpl implements _ChangeVisible {
  const _$ChangeVisibleImpl([this.value]);

  @override
  final bool? value;

  @override
  String toString() {
    return 'NavigatorEvent.changeVisible(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeVisibleImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeVisibleImplCopyWith<_$ChangeVisibleImpl> get copyWith =>
      __$$ChangeVisibleImplCopyWithImpl<_$ChangeVisibleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? value) changeVisible,
  }) {
    return changeVisible(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool? value)? changeVisible,
  }) {
    return changeVisible?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? value)? changeVisible,
    required TResult orElse(),
  }) {
    if (changeVisible != null) {
      return changeVisible(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeVisible value) changeVisible,
  }) {
    return changeVisible(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeVisible value)? changeVisible,
  }) {
    return changeVisible?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeVisible value)? changeVisible,
    required TResult orElse(),
  }) {
    if (changeVisible != null) {
      return changeVisible(this);
    }
    return orElse();
  }
}

abstract class _ChangeVisible implements NavigatorEvent {
  const factory _ChangeVisible([final bool? value]) = _$ChangeVisibleImpl;

  @override
  bool? get value;
  @override
  @JsonKey(ignore: true)
  _$$ChangeVisibleImplCopyWith<_$ChangeVisibleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NavigatorViewState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() view,
    required TResult Function() hide,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? view,
    TResult? Function()? hide,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? view,
    TResult Function()? hide,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_View value) view,
    required TResult Function(_Hide value) hide,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_View value)? view,
    TResult? Function(_Hide value)? hide,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_View value)? view,
    TResult Function(_Hide value)? hide,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigatorViewStateCopyWith<$Res> {
  factory $NavigatorViewStateCopyWith(
          NavigatorViewState value, $Res Function(NavigatorViewState) then) =
      _$NavigatorViewStateCopyWithImpl<$Res, NavigatorViewState>;
}

/// @nodoc
class _$NavigatorViewStateCopyWithImpl<$Res, $Val extends NavigatorViewState>
    implements $NavigatorViewStateCopyWith<$Res> {
  _$NavigatorViewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ViewImplCopyWith<$Res> {
  factory _$$ViewImplCopyWith(
          _$ViewImpl value, $Res Function(_$ViewImpl) then) =
      __$$ViewImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ViewImplCopyWithImpl<$Res>
    extends _$NavigatorViewStateCopyWithImpl<$Res, _$ViewImpl>
    implements _$$ViewImplCopyWith<$Res> {
  __$$ViewImplCopyWithImpl(_$ViewImpl _value, $Res Function(_$ViewImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ViewImpl implements _View {
  const _$ViewImpl();

  @override
  String toString() {
    return 'NavigatorViewState.view()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ViewImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() view,
    required TResult Function() hide,
  }) {
    return view();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? view,
    TResult? Function()? hide,
  }) {
    return view?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? view,
    TResult Function()? hide,
    required TResult orElse(),
  }) {
    if (view != null) {
      return view();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_View value) view,
    required TResult Function(_Hide value) hide,
  }) {
    return view(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_View value)? view,
    TResult? Function(_Hide value)? hide,
  }) {
    return view?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_View value)? view,
    TResult Function(_Hide value)? hide,
    required TResult orElse(),
  }) {
    if (view != null) {
      return view(this);
    }
    return orElse();
  }
}

abstract class _View implements NavigatorViewState {
  const factory _View() = _$ViewImpl;
}

/// @nodoc
abstract class _$$HideImplCopyWith<$Res> {
  factory _$$HideImplCopyWith(
          _$HideImpl value, $Res Function(_$HideImpl) then) =
      __$$HideImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HideImplCopyWithImpl<$Res>
    extends _$NavigatorViewStateCopyWithImpl<$Res, _$HideImpl>
    implements _$$HideImplCopyWith<$Res> {
  __$$HideImplCopyWithImpl(_$HideImpl _value, $Res Function(_$HideImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HideImpl implements _Hide {
  const _$HideImpl();

  @override
  String toString() {
    return 'NavigatorViewState.hide()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HideImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() view,
    required TResult Function() hide,
  }) {
    return hide();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? view,
    TResult? Function()? hide,
  }) {
    return hide?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? view,
    TResult Function()? hide,
    required TResult orElse(),
  }) {
    if (hide != null) {
      return hide();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_View value) view,
    required TResult Function(_Hide value) hide,
  }) {
    return hide(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_View value)? view,
    TResult? Function(_Hide value)? hide,
  }) {
    return hide?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_View value)? view,
    TResult Function(_Hide value)? hide,
    required TResult orElse(),
  }) {
    if (hide != null) {
      return hide(this);
    }
    return orElse();
  }
}

abstract class _Hide implements NavigatorViewState {
  const factory _Hide() = _$HideImpl;
}
