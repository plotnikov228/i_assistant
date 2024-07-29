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
mixin _$TasksEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(Task task) create,
    required TResult Function(bool? mode) selectTasksMode,
    required TResult Function(int id) selectTask,
    required TResult Function(List<int>? ids) removeSelectedTasks,
    required TResult Function() removeAllTasks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(Task task)? create,
    TResult? Function(bool? mode)? selectTasksMode,
    TResult? Function(int id)? selectTask,
    TResult? Function(List<int>? ids)? removeSelectedTasks,
    TResult? Function()? removeAllTasks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(Task task)? create,
    TResult Function(bool? mode)? selectTasksMode,
    TResult Function(int id)? selectTask,
    TResult Function(List<int>? ids)? removeSelectedTasks,
    TResult Function()? removeAllTasks,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_Create value) create,
    required TResult Function(_SelectTasksMode value) selectTasksMode,
    required TResult Function(_SelectTask value) selectTask,
    required TResult Function(_RemoveSelectedTasks value) removeSelectedTasks,
    required TResult Function(_RemoveAllTasks value) removeAllTasks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_Create value)? create,
    TResult? Function(_SelectTasksMode value)? selectTasksMode,
    TResult? Function(_SelectTask value)? selectTask,
    TResult? Function(_RemoveSelectedTasks value)? removeSelectedTasks,
    TResult? Function(_RemoveAllTasks value)? removeAllTasks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Create value)? create,
    TResult Function(_SelectTasksMode value)? selectTasksMode,
    TResult Function(_SelectTask value)? selectTask,
    TResult Function(_RemoveSelectedTasks value)? removeSelectedTasks,
    TResult Function(_RemoveAllTasks value)? removeAllTasks,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasksEventCopyWith<$Res> {
  factory $TasksEventCopyWith(
          TasksEvent value, $Res Function(TasksEvent) then) =
      _$TasksEventCopyWithImpl<$Res, TasksEvent>;
}

/// @nodoc
class _$TasksEventCopyWithImpl<$Res, $Val extends TasksEvent>
    implements $TasksEventCopyWith<$Res> {
  _$TasksEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchImplCopyWith<$Res> {
  factory _$$FetchImplCopyWith(
          _$FetchImpl value, $Res Function(_$FetchImpl) then) =
      __$$FetchImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchImplCopyWithImpl<$Res>
    extends _$TasksEventCopyWithImpl<$Res, _$FetchImpl>
    implements _$$FetchImplCopyWith<$Res> {
  __$$FetchImplCopyWithImpl(
      _$FetchImpl _value, $Res Function(_$FetchImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchImpl implements _Fetch {
  const _$FetchImpl();

  @override
  String toString() {
    return 'TasksEvent.fetch()';
  }

  @override
  bool operator ==(Object other) {
    return false ?? identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(Task task) create,
    required TResult Function(bool? mode) selectTasksMode,
    required TResult Function(int id) selectTask,
    required TResult Function(List<int>? ids) removeSelectedTasks,
    required TResult Function() removeAllTasks,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(Task task)? create,
    TResult? Function(bool? mode)? selectTasksMode,
    TResult? Function(int id)? selectTask,
    TResult? Function(List<int>? ids)? removeSelectedTasks,
    TResult? Function()? removeAllTasks,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(Task task)? create,
    TResult Function(bool? mode)? selectTasksMode,
    TResult Function(int id)? selectTask,
    TResult Function(List<int>? ids)? removeSelectedTasks,
    TResult Function()? removeAllTasks,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_Create value) create,
    required TResult Function(_SelectTasksMode value) selectTasksMode,
    required TResult Function(_SelectTask value) selectTask,
    required TResult Function(_RemoveSelectedTasks value) removeSelectedTasks,
    required TResult Function(_RemoveAllTasks value) removeAllTasks,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_Create value)? create,
    TResult? Function(_SelectTasksMode value)? selectTasksMode,
    TResult? Function(_SelectTask value)? selectTask,
    TResult? Function(_RemoveSelectedTasks value)? removeSelectedTasks,
    TResult? Function(_RemoveAllTasks value)? removeAllTasks,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Create value)? create,
    TResult Function(_SelectTasksMode value)? selectTasksMode,
    TResult Function(_SelectTask value)? selectTask,
    TResult Function(_RemoveSelectedTasks value)? removeSelectedTasks,
    TResult Function(_RemoveAllTasks value)? removeAllTasks,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _Fetch implements TasksEvent {
  const factory _Fetch() = _$FetchImpl;
}

/// @nodoc
abstract class _$$CreateImplCopyWith<$Res> {
  factory _$$CreateImplCopyWith(
          _$CreateImpl value, $Res Function(_$CreateImpl) then) =
      __$$CreateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Task task});

  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class __$$CreateImplCopyWithImpl<$Res>
    extends _$TasksEventCopyWithImpl<$Res, _$CreateImpl>
    implements _$$CreateImplCopyWith<$Res> {
  __$$CreateImplCopyWithImpl(
      _$CreateImpl _value, $Res Function(_$CreateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$CreateImpl(
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TaskCopyWith<$Res> get task {
    return $TaskCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value));
    });
  }
}

/// @nodoc

class _$CreateImpl implements _Create {
  const _$CreateImpl({required this.task});

  @override
  final Task task;

  @override
  String toString() {
    return 'TasksEvent.create(task: $task)';
  }

  @override
  bool operator ==(Object other) {
    return false ?? identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateImpl &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateImplCopyWith<_$CreateImpl> get copyWith =>
      __$$CreateImplCopyWithImpl<_$CreateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(Task task) create,
    required TResult Function(bool? mode) selectTasksMode,
    required TResult Function(int id) selectTask,
    required TResult Function(List<int>? ids) removeSelectedTasks,
    required TResult Function() removeAllTasks,
  }) {
    return create(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(Task task)? create,
    TResult? Function(bool? mode)? selectTasksMode,
    TResult? Function(int id)? selectTask,
    TResult? Function(List<int>? ids)? removeSelectedTasks,
    TResult? Function()? removeAllTasks,
  }) {
    return create?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(Task task)? create,
    TResult Function(bool? mode)? selectTasksMode,
    TResult Function(int id)? selectTask,
    TResult Function(List<int>? ids)? removeSelectedTasks,
    TResult Function()? removeAllTasks,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_Create value) create,
    required TResult Function(_SelectTasksMode value) selectTasksMode,
    required TResult Function(_SelectTask value) selectTask,
    required TResult Function(_RemoveSelectedTasks value) removeSelectedTasks,
    required TResult Function(_RemoveAllTasks value) removeAllTasks,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_Create value)? create,
    TResult? Function(_SelectTasksMode value)? selectTasksMode,
    TResult? Function(_SelectTask value)? selectTask,
    TResult? Function(_RemoveSelectedTasks value)? removeSelectedTasks,
    TResult? Function(_RemoveAllTasks value)? removeAllTasks,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Create value)? create,
    TResult Function(_SelectTasksMode value)? selectTasksMode,
    TResult Function(_SelectTask value)? selectTask,
    TResult Function(_RemoveSelectedTasks value)? removeSelectedTasks,
    TResult Function(_RemoveAllTasks value)? removeAllTasks,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class _Create implements TasksEvent {
  const factory _Create({required final Task task}) = _$CreateImpl;

  Task get task;
  @JsonKey(ignore: true)
  _$$CreateImplCopyWith<_$CreateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectTasksModeImplCopyWith<$Res> {
  factory _$$SelectTasksModeImplCopyWith(_$SelectTasksModeImpl value,
          $Res Function(_$SelectTasksModeImpl) then) =
      __$$SelectTasksModeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool? mode});
}

/// @nodoc
class __$$SelectTasksModeImplCopyWithImpl<$Res>
    extends _$TasksEventCopyWithImpl<$Res, _$SelectTasksModeImpl>
    implements _$$SelectTasksModeImplCopyWith<$Res> {
  __$$SelectTasksModeImplCopyWithImpl(
      _$SelectTasksModeImpl _value, $Res Function(_$SelectTasksModeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mode = freezed,
  }) {
    return _then(_$SelectTasksModeImpl(
      mode: freezed == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$SelectTasksModeImpl implements _SelectTasksMode {
  const _$SelectTasksModeImpl({this.mode});

  @override
  final bool? mode;

  @override
  String toString() {
    return 'TasksEvent.selectTasksMode(mode: $mode)';
  }

  @override
  bool operator ==(Object other) {
    return false ?? identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectTasksModeImpl &&
            (identical(other.mode, mode) || other.mode == mode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectTasksModeImplCopyWith<_$SelectTasksModeImpl> get copyWith =>
      __$$SelectTasksModeImplCopyWithImpl<_$SelectTasksModeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(Task task) create,
    required TResult Function(bool? mode) selectTasksMode,
    required TResult Function(int id) selectTask,
    required TResult Function(List<int>? ids) removeSelectedTasks,
    required TResult Function() removeAllTasks,
  }) {
    return selectTasksMode(mode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(Task task)? create,
    TResult? Function(bool? mode)? selectTasksMode,
    TResult? Function(int id)? selectTask,
    TResult? Function(List<int>? ids)? removeSelectedTasks,
    TResult? Function()? removeAllTasks,
  }) {
    return selectTasksMode?.call(mode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(Task task)? create,
    TResult Function(bool? mode)? selectTasksMode,
    TResult Function(int id)? selectTask,
    TResult Function(List<int>? ids)? removeSelectedTasks,
    TResult Function()? removeAllTasks,
    required TResult orElse(),
  }) {
    if (selectTasksMode != null) {
      return selectTasksMode(mode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_Create value) create,
    required TResult Function(_SelectTasksMode value) selectTasksMode,
    required TResult Function(_SelectTask value) selectTask,
    required TResult Function(_RemoveSelectedTasks value) removeSelectedTasks,
    required TResult Function(_RemoveAllTasks value) removeAllTasks,
  }) {
    return selectTasksMode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_Create value)? create,
    TResult? Function(_SelectTasksMode value)? selectTasksMode,
    TResult? Function(_SelectTask value)? selectTask,
    TResult? Function(_RemoveSelectedTasks value)? removeSelectedTasks,
    TResult? Function(_RemoveAllTasks value)? removeAllTasks,
  }) {
    return selectTasksMode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Create value)? create,
    TResult Function(_SelectTasksMode value)? selectTasksMode,
    TResult Function(_SelectTask value)? selectTask,
    TResult Function(_RemoveSelectedTasks value)? removeSelectedTasks,
    TResult Function(_RemoveAllTasks value)? removeAllTasks,
    required TResult orElse(),
  }) {
    if (selectTasksMode != null) {
      return selectTasksMode(this);
    }
    return orElse();
  }
}

abstract class _SelectTasksMode implements TasksEvent {
  const factory _SelectTasksMode({final bool? mode}) = _$SelectTasksModeImpl;

  bool? get mode;
  @JsonKey(ignore: true)
  _$$SelectTasksModeImplCopyWith<_$SelectTasksModeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectTaskImplCopyWith<$Res> {
  factory _$$SelectTaskImplCopyWith(
          _$SelectTaskImpl value, $Res Function(_$SelectTaskImpl) then) =
      __$$SelectTaskImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$SelectTaskImplCopyWithImpl<$Res>
    extends _$TasksEventCopyWithImpl<$Res, _$SelectTaskImpl>
    implements _$$SelectTaskImplCopyWith<$Res> {
  __$$SelectTaskImplCopyWithImpl(
      _$SelectTaskImpl _value, $Res Function(_$SelectTaskImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$SelectTaskImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SelectTaskImpl implements _SelectTask {
  const _$SelectTaskImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'TasksEvent.selectTask(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return false ?? identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectTaskImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectTaskImplCopyWith<_$SelectTaskImpl> get copyWith =>
      __$$SelectTaskImplCopyWithImpl<_$SelectTaskImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(Task task) create,
    required TResult Function(bool? mode) selectTasksMode,
    required TResult Function(int id) selectTask,
    required TResult Function(List<int>? ids) removeSelectedTasks,
    required TResult Function() removeAllTasks,
  }) {
    return selectTask(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(Task task)? create,
    TResult? Function(bool? mode)? selectTasksMode,
    TResult? Function(int id)? selectTask,
    TResult? Function(List<int>? ids)? removeSelectedTasks,
    TResult? Function()? removeAllTasks,
  }) {
    return selectTask?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(Task task)? create,
    TResult Function(bool? mode)? selectTasksMode,
    TResult Function(int id)? selectTask,
    TResult Function(List<int>? ids)? removeSelectedTasks,
    TResult Function()? removeAllTasks,
    required TResult orElse(),
  }) {
    if (selectTask != null) {
      return selectTask(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_Create value) create,
    required TResult Function(_SelectTasksMode value) selectTasksMode,
    required TResult Function(_SelectTask value) selectTask,
    required TResult Function(_RemoveSelectedTasks value) removeSelectedTasks,
    required TResult Function(_RemoveAllTasks value) removeAllTasks,
  }) {
    return selectTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_Create value)? create,
    TResult? Function(_SelectTasksMode value)? selectTasksMode,
    TResult? Function(_SelectTask value)? selectTask,
    TResult? Function(_RemoveSelectedTasks value)? removeSelectedTasks,
    TResult? Function(_RemoveAllTasks value)? removeAllTasks,
  }) {
    return selectTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Create value)? create,
    TResult Function(_SelectTasksMode value)? selectTasksMode,
    TResult Function(_SelectTask value)? selectTask,
    TResult Function(_RemoveSelectedTasks value)? removeSelectedTasks,
    TResult Function(_RemoveAllTasks value)? removeAllTasks,
    required TResult orElse(),
  }) {
    if (selectTask != null) {
      return selectTask(this);
    }
    return orElse();
  }
}

abstract class _SelectTask implements TasksEvent {
  const factory _SelectTask({required final int id}) = _$SelectTaskImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$SelectTaskImplCopyWith<_$SelectTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveSelectedTasksImplCopyWith<$Res> {
  factory _$$RemoveSelectedTasksImplCopyWith(_$RemoveSelectedTasksImpl value,
          $Res Function(_$RemoveSelectedTasksImpl) then) =
      __$$RemoveSelectedTasksImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<int>? ids});
}

/// @nodoc
class __$$RemoveSelectedTasksImplCopyWithImpl<$Res>
    extends _$TasksEventCopyWithImpl<$Res, _$RemoveSelectedTasksImpl>
    implements _$$RemoveSelectedTasksImplCopyWith<$Res> {
  __$$RemoveSelectedTasksImplCopyWithImpl(_$RemoveSelectedTasksImpl _value,
      $Res Function(_$RemoveSelectedTasksImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ids = freezed,
  }) {
    return _then(_$RemoveSelectedTasksImpl(
      freezed == ids
          ? _value._ids
          : ids // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc

class _$RemoveSelectedTasksImpl implements _RemoveSelectedTasks {
  const _$RemoveSelectedTasksImpl([final List<int>? ids]) : _ids = ids;

  final List<int>? _ids;
  @override
  List<int>? get ids {
    final value = _ids;
    if (value == null) return null;
    if (_ids is EqualUnmodifiableListView) return _ids;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TasksEvent.removeSelectedTasks(ids: $ids)';
  }

  @override
  bool operator ==(Object other) {
    return false ?? identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveSelectedTasksImpl &&
            const DeepCollectionEquality().equals(other._ids, _ids));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_ids));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveSelectedTasksImplCopyWith<_$RemoveSelectedTasksImpl> get copyWith =>
      __$$RemoveSelectedTasksImplCopyWithImpl<_$RemoveSelectedTasksImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(Task task) create,
    required TResult Function(bool? mode) selectTasksMode,
    required TResult Function(int id) selectTask,
    required TResult Function(List<int>? ids) removeSelectedTasks,
    required TResult Function() removeAllTasks,
  }) {
    return removeSelectedTasks(ids);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(Task task)? create,
    TResult? Function(bool? mode)? selectTasksMode,
    TResult? Function(int id)? selectTask,
    TResult? Function(List<int>? ids)? removeSelectedTasks,
    TResult? Function()? removeAllTasks,
  }) {
    return removeSelectedTasks?.call(ids);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(Task task)? create,
    TResult Function(bool? mode)? selectTasksMode,
    TResult Function(int id)? selectTask,
    TResult Function(List<int>? ids)? removeSelectedTasks,
    TResult Function()? removeAllTasks,
    required TResult orElse(),
  }) {
    if (removeSelectedTasks != null) {
      return removeSelectedTasks(ids);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_Create value) create,
    required TResult Function(_SelectTasksMode value) selectTasksMode,
    required TResult Function(_SelectTask value) selectTask,
    required TResult Function(_RemoveSelectedTasks value) removeSelectedTasks,
    required TResult Function(_RemoveAllTasks value) removeAllTasks,
  }) {
    return removeSelectedTasks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_Create value)? create,
    TResult? Function(_SelectTasksMode value)? selectTasksMode,
    TResult? Function(_SelectTask value)? selectTask,
    TResult? Function(_RemoveSelectedTasks value)? removeSelectedTasks,
    TResult? Function(_RemoveAllTasks value)? removeAllTasks,
  }) {
    return removeSelectedTasks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Create value)? create,
    TResult Function(_SelectTasksMode value)? selectTasksMode,
    TResult Function(_SelectTask value)? selectTask,
    TResult Function(_RemoveSelectedTasks value)? removeSelectedTasks,
    TResult Function(_RemoveAllTasks value)? removeAllTasks,
    required TResult orElse(),
  }) {
    if (removeSelectedTasks != null) {
      return removeSelectedTasks(this);
    }
    return orElse();
  }
}

abstract class _RemoveSelectedTasks implements TasksEvent {
  const factory _RemoveSelectedTasks([final List<int>? ids]) =
      _$RemoveSelectedTasksImpl;

  List<int>? get ids;
  @JsonKey(ignore: true)
  _$$RemoveSelectedTasksImplCopyWith<_$RemoveSelectedTasksImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveAllTasksImplCopyWith<$Res> {
  factory _$$RemoveAllTasksImplCopyWith(_$RemoveAllTasksImpl value,
          $Res Function(_$RemoveAllTasksImpl) then) =
      __$$RemoveAllTasksImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RemoveAllTasksImplCopyWithImpl<$Res>
    extends _$TasksEventCopyWithImpl<$Res, _$RemoveAllTasksImpl>
    implements _$$RemoveAllTasksImplCopyWith<$Res> {
  __$$RemoveAllTasksImplCopyWithImpl(
      _$RemoveAllTasksImpl _value, $Res Function(_$RemoveAllTasksImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RemoveAllTasksImpl implements _RemoveAllTasks {
  const _$RemoveAllTasksImpl();

  @override
  String toString() {
    return 'TasksEvent.removeAllTasks()';
  }

  @override
  bool operator ==(Object other) {
    return false ?? identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RemoveAllTasksImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(Task task) create,
    required TResult Function(bool? mode) selectTasksMode,
    required TResult Function(int id) selectTask,
    required TResult Function(List<int>? ids) removeSelectedTasks,
    required TResult Function() removeAllTasks,
  }) {
    return removeAllTasks();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(Task task)? create,
    TResult? Function(bool? mode)? selectTasksMode,
    TResult? Function(int id)? selectTask,
    TResult? Function(List<int>? ids)? removeSelectedTasks,
    TResult? Function()? removeAllTasks,
  }) {
    return removeAllTasks?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(Task task)? create,
    TResult Function(bool? mode)? selectTasksMode,
    TResult Function(int id)? selectTask,
    TResult Function(List<int>? ids)? removeSelectedTasks,
    TResult Function()? removeAllTasks,
    required TResult orElse(),
  }) {
    if (removeAllTasks != null) {
      return removeAllTasks();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_Create value) create,
    required TResult Function(_SelectTasksMode value) selectTasksMode,
    required TResult Function(_SelectTask value) selectTask,
    required TResult Function(_RemoveSelectedTasks value) removeSelectedTasks,
    required TResult Function(_RemoveAllTasks value) removeAllTasks,
  }) {
    return removeAllTasks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_Create value)? create,
    TResult? Function(_SelectTasksMode value)? selectTasksMode,
    TResult? Function(_SelectTask value)? selectTask,
    TResult? Function(_RemoveSelectedTasks value)? removeSelectedTasks,
    TResult? Function(_RemoveAllTasks value)? removeAllTasks,
  }) {
    return removeAllTasks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Create value)? create,
    TResult Function(_SelectTasksMode value)? selectTasksMode,
    TResult Function(_SelectTask value)? selectTask,
    TResult Function(_RemoveSelectedTasks value)? removeSelectedTasks,
    TResult Function(_RemoveAllTasks value)? removeAllTasks,
    required TResult orElse(),
  }) {
    if (removeAllTasks != null) {
      return removeAllTasks(this);
    }
    return orElse();
  }
}

abstract class _RemoveAllTasks implements TasksEvent {
  const factory _RemoveAllTasks() = _$RemoveAllTasksImpl;
}

/// @nodoc
mixin _$TasksState {
  List<List<Task>> get tasks => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<List<Task>> tasks) loaded,
    required TResult Function(List<List<Task>> tasks, List<int> ids)
        selectTasks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<List<Task>> tasks)? loaded,
    TResult? Function(List<List<Task>> tasks, List<int> ids)? selectTasks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<List<Task>> tasks)? loaded,
    TResult Function(List<List<Task>> tasks, List<int> ids)? selectTasks,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_SelectTasks value) selectTasks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_SelectTasks value)? selectTasks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_SelectTasks value)? selectTasks,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TasksStateCopyWith<TasksState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasksStateCopyWith<$Res> {
  factory $TasksStateCopyWith(
          TasksState value, $Res Function(TasksState) then) =
      _$TasksStateCopyWithImpl<$Res, TasksState>;
  @useResult
  $Res call({List<List<Task>> tasks});
}

/// @nodoc
class _$TasksStateCopyWithImpl<$Res, $Val extends TasksState>
    implements $TasksStateCopyWith<$Res> {
  _$TasksStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
  }) {
    return _then(_value.copyWith(
      tasks: null == tasks
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<List<Task>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res>
    implements $TasksStateCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<List<Task>> tasks});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$TasksStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
  }) {
    return _then(_$LoadedImpl(
      null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<List<Task>>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(final List<List<Task>> tasks) : _tasks = tasks;

  final List<List<Task>> _tasks;
  @override
  List<List<Task>> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  String toString() {
    return 'TasksState.loaded(tasks: $tasks)';
  }

  @override
  bool operator ==(Object other) {
    return false ?? identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._tasks, _tasks));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tasks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<List<Task>> tasks) loaded,
    required TResult Function(List<List<Task>> tasks, List<int> ids)
        selectTasks,
  }) {
    return loaded(tasks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<List<Task>> tasks)? loaded,
    TResult? Function(List<List<Task>> tasks, List<int> ids)? selectTasks,
  }) {
    return loaded?.call(tasks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<List<Task>> tasks)? loaded,
    TResult Function(List<List<Task>> tasks, List<int> ids)? selectTasks,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(tasks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_SelectTasks value) selectTasks,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_SelectTasks value)? selectTasks,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_SelectTasks value)? selectTasks,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements TasksState {
  const factory _Loaded(final List<List<Task>> tasks) = _$LoadedImpl;

  @override
  List<List<Task>> get tasks;
  @override
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectTasksImplCopyWith<$Res>
    implements $TasksStateCopyWith<$Res> {
  factory _$$SelectTasksImplCopyWith(
          _$SelectTasksImpl value, $Res Function(_$SelectTasksImpl) then) =
      __$$SelectTasksImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<List<Task>> tasks, List<int> ids});
}

/// @nodoc
class __$$SelectTasksImplCopyWithImpl<$Res>
    extends _$TasksStateCopyWithImpl<$Res, _$SelectTasksImpl>
    implements _$$SelectTasksImplCopyWith<$Res> {
  __$$SelectTasksImplCopyWithImpl(
      _$SelectTasksImpl _value, $Res Function(_$SelectTasksImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
    Object? ids = null,
  }) {
    return _then(_$SelectTasksImpl(
      null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<List<Task>>,
      null == ids
          ? _value._ids
          : ids // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$SelectTasksImpl implements _SelectTasks {
  const _$SelectTasksImpl(final List<List<Task>> tasks, final List<int> ids)
      : _tasks = tasks,
        _ids = ids;

  final List<List<Task>> _tasks;
  @override
  List<List<Task>> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  final List<int> _ids;
  @override
  List<int> get ids {
    if (_ids is EqualUnmodifiableListView) return _ids;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ids);
  }

  @override
  String toString() {
    return 'TasksState.selectTasks(tasks: $tasks, ids: $ids)';
  }

  @override
  bool operator ==(Object other) {
    return false ?? identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectTasksImpl &&
            const DeepCollectionEquality().equals(other._tasks, _tasks) &&
            const DeepCollectionEquality().equals(other._ids, _ids));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_tasks),
      const DeepCollectionEquality().hash(_ids));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectTasksImplCopyWith<_$SelectTasksImpl> get copyWith =>
      __$$SelectTasksImplCopyWithImpl<_$SelectTasksImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<List<Task>> tasks) loaded,
    required TResult Function(List<List<Task>> tasks, List<int> ids)
        selectTasks,
  }) {
    return selectTasks(tasks, ids);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<List<Task>> tasks)? loaded,
    TResult? Function(List<List<Task>> tasks, List<int> ids)? selectTasks,
  }) {
    return selectTasks?.call(tasks, ids);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<List<Task>> tasks)? loaded,
    TResult Function(List<List<Task>> tasks, List<int> ids)? selectTasks,
    required TResult orElse(),
  }) {
    if (selectTasks != null) {
      return selectTasks(tasks, ids);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_SelectTasks value) selectTasks,
  }) {
    return selectTasks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_SelectTasks value)? selectTasks,
  }) {
    return selectTasks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_SelectTasks value)? selectTasks,
    required TResult orElse(),
  }) {
    if (selectTasks != null) {
      return selectTasks(this);
    }
    return orElse();
  }
}

abstract class _SelectTasks implements TasksState {
  const factory _SelectTasks(
      final List<List<Task>> tasks, final List<int> ids) = _$SelectTasksImpl;

  @override
  List<List<Task>> get tasks;
  List<int> get ids;
  @override
  @JsonKey(ignore: true)
  _$$SelectTasksImplCopyWith<_$SelectTasksImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
