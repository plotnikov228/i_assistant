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
mixin _$AppEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() welcomeComplete,
    required TResult Function() checkAuth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? welcomeComplete,
    TResult? Function()? checkAuth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? welcomeComplete,
    TResult Function()? checkAuth,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WelcomeComplete value) welcomeComplete,
    required TResult Function(_CheckAuth value) checkAuth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WelcomeComplete value)? welcomeComplete,
    TResult? Function(_CheckAuth value)? checkAuth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WelcomeComplete value)? welcomeComplete,
    TResult Function(_CheckAuth value)? checkAuth,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppEventCopyWith<$Res> {
  factory $AppEventCopyWith(AppEvent value, $Res Function(AppEvent) then) =
      _$AppEventCopyWithImpl<$Res, AppEvent>;
}

/// @nodoc
class _$AppEventCopyWithImpl<$Res, $Val extends AppEvent>
    implements $AppEventCopyWith<$Res> {
  _$AppEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$WelcomeCompleteImplCopyWith<$Res> {
  factory _$$WelcomeCompleteImplCopyWith(_$WelcomeCompleteImpl value,
          $Res Function(_$WelcomeCompleteImpl) then) =
      __$$WelcomeCompleteImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WelcomeCompleteImplCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$WelcomeCompleteImpl>
    implements _$$WelcomeCompleteImplCopyWith<$Res> {
  __$$WelcomeCompleteImplCopyWithImpl(
      _$WelcomeCompleteImpl _value, $Res Function(_$WelcomeCompleteImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WelcomeCompleteImpl implements _WelcomeComplete {
  const _$WelcomeCompleteImpl();

  @override
  String toString() {
    return 'AppEvent.welcomeComplete()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WelcomeCompleteImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() welcomeComplete,
    required TResult Function() checkAuth,
  }) {
    return welcomeComplete();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? welcomeComplete,
    TResult? Function()? checkAuth,
  }) {
    return welcomeComplete?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? welcomeComplete,
    TResult Function()? checkAuth,
    required TResult orElse(),
  }) {
    if (welcomeComplete != null) {
      return welcomeComplete();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WelcomeComplete value) welcomeComplete,
    required TResult Function(_CheckAuth value) checkAuth,
  }) {
    return welcomeComplete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WelcomeComplete value)? welcomeComplete,
    TResult? Function(_CheckAuth value)? checkAuth,
  }) {
    return welcomeComplete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WelcomeComplete value)? welcomeComplete,
    TResult Function(_CheckAuth value)? checkAuth,
    required TResult orElse(),
  }) {
    if (welcomeComplete != null) {
      return welcomeComplete(this);
    }
    return orElse();
  }
}

abstract class _WelcomeComplete implements AppEvent {
  const factory _WelcomeComplete() = _$WelcomeCompleteImpl;
}

/// @nodoc
abstract class _$$CheckAuthImplCopyWith<$Res> {
  factory _$$CheckAuthImplCopyWith(
          _$CheckAuthImpl value, $Res Function(_$CheckAuthImpl) then) =
      __$$CheckAuthImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckAuthImplCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$CheckAuthImpl>
    implements _$$CheckAuthImplCopyWith<$Res> {
  __$$CheckAuthImplCopyWithImpl(
      _$CheckAuthImpl _value, $Res Function(_$CheckAuthImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckAuthImpl implements _CheckAuth {
  const _$CheckAuthImpl();

  @override
  String toString() {
    return 'AppEvent.checkAuth()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckAuthImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() welcomeComplete,
    required TResult Function() checkAuth,
  }) {
    return checkAuth();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? welcomeComplete,
    TResult? Function()? checkAuth,
  }) {
    return checkAuth?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? welcomeComplete,
    TResult Function()? checkAuth,
    required TResult orElse(),
  }) {
    if (checkAuth != null) {
      return checkAuth();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WelcomeComplete value) welcomeComplete,
    required TResult Function(_CheckAuth value) checkAuth,
  }) {
    return checkAuth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WelcomeComplete value)? welcomeComplete,
    TResult? Function(_CheckAuth value)? checkAuth,
  }) {
    return checkAuth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WelcomeComplete value)? welcomeComplete,
    TResult Function(_CheckAuth value)? checkAuth,
    required TResult orElse(),
  }) {
    if (checkAuth != null) {
      return checkAuth(this);
    }
    return orElse();
  }
}

abstract class _CheckAuth implements AppEvent {
  const factory _CheckAuth() = _$CheckAuthImpl;
}

/// @nodoc
mixin _$AppState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() welcome,
    required TResult Function() authorized,
    required TResult Function() notAuthorized,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? welcome,
    TResult? Function()? authorized,
    TResult? Function()? notAuthorized,
    TResult? Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? welcome,
    TResult Function()? authorized,
    TResult Function()? notAuthorized,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Welcome value) welcome,
    required TResult Function(_Authorized value) authorized,
    required TResult Function(_NotAuthorized value) notAuthorized,
    required TResult Function(_Loading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Welcome value)? welcome,
    TResult? Function(_Authorized value)? authorized,
    TResult? Function(_NotAuthorized value)? notAuthorized,
    TResult? Function(_Loading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Welcome value)? welcome,
    TResult Function(_Authorized value)? authorized,
    TResult Function(_NotAuthorized value)? notAuthorized,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$WelcomeImplCopyWith<$Res> {
  factory _$$WelcomeImplCopyWith(
          _$WelcomeImpl value, $Res Function(_$WelcomeImpl) then) =
      __$$WelcomeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WelcomeImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$WelcomeImpl>
    implements _$$WelcomeImplCopyWith<$Res> {
  __$$WelcomeImplCopyWithImpl(
      _$WelcomeImpl _value, $Res Function(_$WelcomeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WelcomeImpl implements _Welcome {
  const _$WelcomeImpl();

  @override
  String toString() {
    return 'AppState.welcome()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WelcomeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() welcome,
    required TResult Function() authorized,
    required TResult Function() notAuthorized,
    required TResult Function() loading,
  }) {
    return welcome();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? welcome,
    TResult? Function()? authorized,
    TResult? Function()? notAuthorized,
    TResult? Function()? loading,
  }) {
    return welcome?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? welcome,
    TResult Function()? authorized,
    TResult Function()? notAuthorized,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (welcome != null) {
      return welcome();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Welcome value) welcome,
    required TResult Function(_Authorized value) authorized,
    required TResult Function(_NotAuthorized value) notAuthorized,
    required TResult Function(_Loading value) loading,
  }) {
    return welcome(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Welcome value)? welcome,
    TResult? Function(_Authorized value)? authorized,
    TResult? Function(_NotAuthorized value)? notAuthorized,
    TResult? Function(_Loading value)? loading,
  }) {
    return welcome?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Welcome value)? welcome,
    TResult Function(_Authorized value)? authorized,
    TResult Function(_NotAuthorized value)? notAuthorized,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (welcome != null) {
      return welcome(this);
    }
    return orElse();
  }
}

abstract class _Welcome implements AppState {
  const factory _Welcome() = _$WelcomeImpl;
}

/// @nodoc
abstract class _$$AuthorizedImplCopyWith<$Res> {
  factory _$$AuthorizedImplCopyWith(
          _$AuthorizedImpl value, $Res Function(_$AuthorizedImpl) then) =
      __$$AuthorizedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthorizedImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$AuthorizedImpl>
    implements _$$AuthorizedImplCopyWith<$Res> {
  __$$AuthorizedImplCopyWithImpl(
      _$AuthorizedImpl _value, $Res Function(_$AuthorizedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthorizedImpl implements _Authorized {
  const _$AuthorizedImpl();

  @override
  String toString() {
    return 'AppState.authorized()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthorizedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() welcome,
    required TResult Function() authorized,
    required TResult Function() notAuthorized,
    required TResult Function() loading,
  }) {
    return authorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? welcome,
    TResult? Function()? authorized,
    TResult? Function()? notAuthorized,
    TResult? Function()? loading,
  }) {
    return authorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? welcome,
    TResult Function()? authorized,
    TResult Function()? notAuthorized,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Welcome value) welcome,
    required TResult Function(_Authorized value) authorized,
    required TResult Function(_NotAuthorized value) notAuthorized,
    required TResult Function(_Loading value) loading,
  }) {
    return authorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Welcome value)? welcome,
    TResult? Function(_Authorized value)? authorized,
    TResult? Function(_NotAuthorized value)? notAuthorized,
    TResult? Function(_Loading value)? loading,
  }) {
    return authorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Welcome value)? welcome,
    TResult Function(_Authorized value)? authorized,
    TResult Function(_NotAuthorized value)? notAuthorized,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized(this);
    }
    return orElse();
  }
}

abstract class _Authorized implements AppState {
  const factory _Authorized() = _$AuthorizedImpl;
}

/// @nodoc
abstract class _$$NotAuthorizedImplCopyWith<$Res> {
  factory _$$NotAuthorizedImplCopyWith(
          _$NotAuthorizedImpl value, $Res Function(_$NotAuthorizedImpl) then) =
      __$$NotAuthorizedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotAuthorizedImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$NotAuthorizedImpl>
    implements _$$NotAuthorizedImplCopyWith<$Res> {
  __$$NotAuthorizedImplCopyWithImpl(
      _$NotAuthorizedImpl _value, $Res Function(_$NotAuthorizedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NotAuthorizedImpl implements _NotAuthorized {
  const _$NotAuthorizedImpl();

  @override
  String toString() {
    return 'AppState.notAuthorized()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NotAuthorizedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() welcome,
    required TResult Function() authorized,
    required TResult Function() notAuthorized,
    required TResult Function() loading,
  }) {
    return notAuthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? welcome,
    TResult? Function()? authorized,
    TResult? Function()? notAuthorized,
    TResult? Function()? loading,
  }) {
    return notAuthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? welcome,
    TResult Function()? authorized,
    TResult Function()? notAuthorized,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (notAuthorized != null) {
      return notAuthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Welcome value) welcome,
    required TResult Function(_Authorized value) authorized,
    required TResult Function(_NotAuthorized value) notAuthorized,
    required TResult Function(_Loading value) loading,
  }) {
    return notAuthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Welcome value)? welcome,
    TResult? Function(_Authorized value)? authorized,
    TResult? Function(_NotAuthorized value)? notAuthorized,
    TResult? Function(_Loading value)? loading,
  }) {
    return notAuthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Welcome value)? welcome,
    TResult Function(_Authorized value)? authorized,
    TResult Function(_NotAuthorized value)? notAuthorized,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (notAuthorized != null) {
      return notAuthorized(this);
    }
    return orElse();
  }
}

abstract class _NotAuthorized implements AppState {
  const factory _NotAuthorized() = _$NotAuthorizedImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'AppState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() welcome,
    required TResult Function() authorized,
    required TResult Function() notAuthorized,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? welcome,
    TResult? Function()? authorized,
    TResult? Function()? notAuthorized,
    TResult? Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? welcome,
    TResult Function()? authorized,
    TResult Function()? notAuthorized,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Welcome value) welcome,
    required TResult Function(_Authorized value) authorized,
    required TResult Function(_NotAuthorized value) notAuthorized,
    required TResult Function(_Loading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Welcome value)? welcome,
    TResult? Function(_Authorized value)? authorized,
    TResult? Function(_NotAuthorized value)? notAuthorized,
    TResult? Function(_Loading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Welcome value)? welcome,
    TResult Function(_Authorized value)? authorized,
    TResult Function(_NotAuthorized value)? notAuthorized,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AppState {
  const factory _Loading() = _$LoadingImpl;
}
