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
mixin _$ShiftScheduleEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int selectedRow) select,
    required TResult Function() calculate,
    required TResult Function(DateTime dateTime) changeStartDate,
    required TResult Function(DateTime dateTime) changeEndDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int selectedRow)? select,
    TResult? Function()? calculate,
    TResult? Function(DateTime dateTime)? changeStartDate,
    TResult? Function(DateTime dateTime)? changeEndDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int selectedRow)? select,
    TResult Function()? calculate,
    TResult Function(DateTime dateTime)? changeStartDate,
    TResult Function(DateTime dateTime)? changeEndDate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Select value) select,
    required TResult Function(_Calculate value) calculate,
    required TResult Function(_ChangeStartDate value) changeStartDate,
    required TResult Function(_ChangeEndDate value) changeEndDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Select value)? select,
    TResult? Function(_Calculate value)? calculate,
    TResult? Function(_ChangeStartDate value)? changeStartDate,
    TResult? Function(_ChangeEndDate value)? changeEndDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Select value)? select,
    TResult Function(_Calculate value)? calculate,
    TResult Function(_ChangeStartDate value)? changeStartDate,
    TResult Function(_ChangeEndDate value)? changeEndDate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShiftScheduleEventCopyWith<$Res> {
  factory $ShiftScheduleEventCopyWith(
          ShiftScheduleEvent value, $Res Function(ShiftScheduleEvent) then) =
      _$ShiftScheduleEventCopyWithImpl<$Res, ShiftScheduleEvent>;
}

/// @nodoc
class _$ShiftScheduleEventCopyWithImpl<$Res, $Val extends ShiftScheduleEvent>
    implements $ShiftScheduleEventCopyWith<$Res> {
  _$ShiftScheduleEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SelectImplCopyWith<$Res> {
  factory _$$SelectImplCopyWith(
          _$SelectImpl value, $Res Function(_$SelectImpl) then) =
      __$$SelectImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int selectedRow});
}

/// @nodoc
class __$$SelectImplCopyWithImpl<$Res>
    extends _$ShiftScheduleEventCopyWithImpl<$Res, _$SelectImpl>
    implements _$$SelectImplCopyWith<$Res> {
  __$$SelectImplCopyWithImpl(
      _$SelectImpl _value, $Res Function(_$SelectImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedRow = null,
  }) {
    return _then(_$SelectImpl(
      null == selectedRow
          ? _value.selectedRow
          : selectedRow // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SelectImpl implements _Select {
  const _$SelectImpl(this.selectedRow);

  @override
  final int selectedRow;

  @override
  String toString() {
    return 'ShiftScheduleEvent.select(selectedRow: $selectedRow)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectImpl &&
            (identical(other.selectedRow, selectedRow) ||
                other.selectedRow == selectedRow));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedRow);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectImplCopyWith<_$SelectImpl> get copyWith =>
      __$$SelectImplCopyWithImpl<_$SelectImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int selectedRow) select,
    required TResult Function() calculate,
    required TResult Function(DateTime dateTime) changeStartDate,
    required TResult Function(DateTime dateTime) changeEndDate,
  }) {
    return select(selectedRow);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int selectedRow)? select,
    TResult? Function()? calculate,
    TResult? Function(DateTime dateTime)? changeStartDate,
    TResult? Function(DateTime dateTime)? changeEndDate,
  }) {
    return select?.call(selectedRow);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int selectedRow)? select,
    TResult Function()? calculate,
    TResult Function(DateTime dateTime)? changeStartDate,
    TResult Function(DateTime dateTime)? changeEndDate,
    required TResult orElse(),
  }) {
    if (select != null) {
      return select(selectedRow);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Select value) select,
    required TResult Function(_Calculate value) calculate,
    required TResult Function(_ChangeStartDate value) changeStartDate,
    required TResult Function(_ChangeEndDate value) changeEndDate,
  }) {
    return select(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Select value)? select,
    TResult? Function(_Calculate value)? calculate,
    TResult? Function(_ChangeStartDate value)? changeStartDate,
    TResult? Function(_ChangeEndDate value)? changeEndDate,
  }) {
    return select?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Select value)? select,
    TResult Function(_Calculate value)? calculate,
    TResult Function(_ChangeStartDate value)? changeStartDate,
    TResult Function(_ChangeEndDate value)? changeEndDate,
    required TResult orElse(),
  }) {
    if (select != null) {
      return select(this);
    }
    return orElse();
  }
}

abstract class _Select implements ShiftScheduleEvent {
  const factory _Select(final int selectedRow) = _$SelectImpl;

  int get selectedRow;
  @JsonKey(ignore: true)
  _$$SelectImplCopyWith<_$SelectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CalculateImplCopyWith<$Res> {
  factory _$$CalculateImplCopyWith(
          _$CalculateImpl value, $Res Function(_$CalculateImpl) then) =
      __$$CalculateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CalculateImplCopyWithImpl<$Res>
    extends _$ShiftScheduleEventCopyWithImpl<$Res, _$CalculateImpl>
    implements _$$CalculateImplCopyWith<$Res> {
  __$$CalculateImplCopyWithImpl(
      _$CalculateImpl _value, $Res Function(_$CalculateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CalculateImpl implements _Calculate {
  const _$CalculateImpl();

  @override
  String toString() {
    return 'ShiftScheduleEvent.calculate()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CalculateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int selectedRow) select,
    required TResult Function() calculate,
    required TResult Function(DateTime dateTime) changeStartDate,
    required TResult Function(DateTime dateTime) changeEndDate,
  }) {
    return calculate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int selectedRow)? select,
    TResult? Function()? calculate,
    TResult? Function(DateTime dateTime)? changeStartDate,
    TResult? Function(DateTime dateTime)? changeEndDate,
  }) {
    return calculate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int selectedRow)? select,
    TResult Function()? calculate,
    TResult Function(DateTime dateTime)? changeStartDate,
    TResult Function(DateTime dateTime)? changeEndDate,
    required TResult orElse(),
  }) {
    if (calculate != null) {
      return calculate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Select value) select,
    required TResult Function(_Calculate value) calculate,
    required TResult Function(_ChangeStartDate value) changeStartDate,
    required TResult Function(_ChangeEndDate value) changeEndDate,
  }) {
    return calculate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Select value)? select,
    TResult? Function(_Calculate value)? calculate,
    TResult? Function(_ChangeStartDate value)? changeStartDate,
    TResult? Function(_ChangeEndDate value)? changeEndDate,
  }) {
    return calculate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Select value)? select,
    TResult Function(_Calculate value)? calculate,
    TResult Function(_ChangeStartDate value)? changeStartDate,
    TResult Function(_ChangeEndDate value)? changeEndDate,
    required TResult orElse(),
  }) {
    if (calculate != null) {
      return calculate(this);
    }
    return orElse();
  }
}

abstract class _Calculate implements ShiftScheduleEvent {
  const factory _Calculate() = _$CalculateImpl;
}

/// @nodoc
abstract class _$$ChangeStartDateImplCopyWith<$Res> {
  factory _$$ChangeStartDateImplCopyWith(_$ChangeStartDateImpl value,
          $Res Function(_$ChangeStartDateImpl) then) =
      __$$ChangeStartDateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime dateTime});
}

/// @nodoc
class __$$ChangeStartDateImplCopyWithImpl<$Res>
    extends _$ShiftScheduleEventCopyWithImpl<$Res, _$ChangeStartDateImpl>
    implements _$$ChangeStartDateImplCopyWith<$Res> {
  __$$ChangeStartDateImplCopyWithImpl(
      _$ChangeStartDateImpl _value, $Res Function(_$ChangeStartDateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = null,
  }) {
    return _then(_$ChangeStartDateImpl(
      null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$ChangeStartDateImpl implements _ChangeStartDate {
  const _$ChangeStartDateImpl(this.dateTime);

  @override
  final DateTime dateTime;

  @override
  String toString() {
    return 'ShiftScheduleEvent.changeStartDate(dateTime: $dateTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeStartDateImpl &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dateTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeStartDateImplCopyWith<_$ChangeStartDateImpl> get copyWith =>
      __$$ChangeStartDateImplCopyWithImpl<_$ChangeStartDateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int selectedRow) select,
    required TResult Function() calculate,
    required TResult Function(DateTime dateTime) changeStartDate,
    required TResult Function(DateTime dateTime) changeEndDate,
  }) {
    return changeStartDate(dateTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int selectedRow)? select,
    TResult? Function()? calculate,
    TResult? Function(DateTime dateTime)? changeStartDate,
    TResult? Function(DateTime dateTime)? changeEndDate,
  }) {
    return changeStartDate?.call(dateTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int selectedRow)? select,
    TResult Function()? calculate,
    TResult Function(DateTime dateTime)? changeStartDate,
    TResult Function(DateTime dateTime)? changeEndDate,
    required TResult orElse(),
  }) {
    if (changeStartDate != null) {
      return changeStartDate(dateTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Select value) select,
    required TResult Function(_Calculate value) calculate,
    required TResult Function(_ChangeStartDate value) changeStartDate,
    required TResult Function(_ChangeEndDate value) changeEndDate,
  }) {
    return changeStartDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Select value)? select,
    TResult? Function(_Calculate value)? calculate,
    TResult? Function(_ChangeStartDate value)? changeStartDate,
    TResult? Function(_ChangeEndDate value)? changeEndDate,
  }) {
    return changeStartDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Select value)? select,
    TResult Function(_Calculate value)? calculate,
    TResult Function(_ChangeStartDate value)? changeStartDate,
    TResult Function(_ChangeEndDate value)? changeEndDate,
    required TResult orElse(),
  }) {
    if (changeStartDate != null) {
      return changeStartDate(this);
    }
    return orElse();
  }
}

abstract class _ChangeStartDate implements ShiftScheduleEvent {
  const factory _ChangeStartDate(final DateTime dateTime) =
      _$ChangeStartDateImpl;

  DateTime get dateTime;
  @JsonKey(ignore: true)
  _$$ChangeStartDateImplCopyWith<_$ChangeStartDateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeEndDateImplCopyWith<$Res> {
  factory _$$ChangeEndDateImplCopyWith(
          _$ChangeEndDateImpl value, $Res Function(_$ChangeEndDateImpl) then) =
      __$$ChangeEndDateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime dateTime});
}

/// @nodoc
class __$$ChangeEndDateImplCopyWithImpl<$Res>
    extends _$ShiftScheduleEventCopyWithImpl<$Res, _$ChangeEndDateImpl>
    implements _$$ChangeEndDateImplCopyWith<$Res> {
  __$$ChangeEndDateImplCopyWithImpl(
      _$ChangeEndDateImpl _value, $Res Function(_$ChangeEndDateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = null,
  }) {
    return _then(_$ChangeEndDateImpl(
      null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$ChangeEndDateImpl implements _ChangeEndDate {
  const _$ChangeEndDateImpl(this.dateTime);

  @override
  final DateTime dateTime;

  @override
  String toString() {
    return 'ShiftScheduleEvent.changeEndDate(dateTime: $dateTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeEndDateImpl &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dateTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeEndDateImplCopyWith<_$ChangeEndDateImpl> get copyWith =>
      __$$ChangeEndDateImplCopyWithImpl<_$ChangeEndDateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int selectedRow) select,
    required TResult Function() calculate,
    required TResult Function(DateTime dateTime) changeStartDate,
    required TResult Function(DateTime dateTime) changeEndDate,
  }) {
    return changeEndDate(dateTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int selectedRow)? select,
    TResult? Function()? calculate,
    TResult? Function(DateTime dateTime)? changeStartDate,
    TResult? Function(DateTime dateTime)? changeEndDate,
  }) {
    return changeEndDate?.call(dateTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int selectedRow)? select,
    TResult Function()? calculate,
    TResult Function(DateTime dateTime)? changeStartDate,
    TResult Function(DateTime dateTime)? changeEndDate,
    required TResult orElse(),
  }) {
    if (changeEndDate != null) {
      return changeEndDate(dateTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Select value) select,
    required TResult Function(_Calculate value) calculate,
    required TResult Function(_ChangeStartDate value) changeStartDate,
    required TResult Function(_ChangeEndDate value) changeEndDate,
  }) {
    return changeEndDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Select value)? select,
    TResult? Function(_Calculate value)? calculate,
    TResult? Function(_ChangeStartDate value)? changeStartDate,
    TResult? Function(_ChangeEndDate value)? changeEndDate,
  }) {
    return changeEndDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Select value)? select,
    TResult Function(_Calculate value)? calculate,
    TResult Function(_ChangeStartDate value)? changeStartDate,
    TResult Function(_ChangeEndDate value)? changeEndDate,
    required TResult orElse(),
  }) {
    if (changeEndDate != null) {
      return changeEndDate(this);
    }
    return orElse();
  }
}

abstract class _ChangeEndDate implements ShiftScheduleEvent {
  const factory _ChangeEndDate(final DateTime dateTime) = _$ChangeEndDateImpl;

  DateTime get dateTime;
  @JsonKey(ignore: true)
  _$$ChangeEndDateImplCopyWith<_$ChangeEndDateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ShiftScheduleState {
  int? get selectedRowIndex => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;
  bool get canCalculate => throw _privateConstructorUsedError;
  ScheduleRowController get controller => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int? selectedRowIndex,
            DateTime startDate,
            DateTime endDate,
            bool canCalculate,
            ScheduleRowController controller)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int? selectedRowIndex,
            DateTime startDate,
            DateTime endDate,
            bool canCalculate,
            ScheduleRowController controller)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int? selectedRowIndex,
            DateTime startDate,
            DateTime endDate,
            bool canCalculate,
            ScheduleRowController controller)?
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
  $ShiftScheduleStateCopyWith<ShiftScheduleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShiftScheduleStateCopyWith<$Res> {
  factory $ShiftScheduleStateCopyWith(
          ShiftScheduleState value, $Res Function(ShiftScheduleState) then) =
      _$ShiftScheduleStateCopyWithImpl<$Res, ShiftScheduleState>;
  @useResult
  $Res call(
      {int? selectedRowIndex,
      DateTime startDate,
      DateTime endDate,
      bool canCalculate,
      ScheduleRowController controller});
}

/// @nodoc
class _$ShiftScheduleStateCopyWithImpl<$Res, $Val extends ShiftScheduleState>
    implements $ShiftScheduleStateCopyWith<$Res> {
  _$ShiftScheduleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedRowIndex = freezed,
    Object? startDate = null,
    Object? endDate = null,
    Object? canCalculate = null,
    Object? controller = null,
  }) {
    return _then(_value.copyWith(
      selectedRowIndex: freezed == selectedRowIndex
          ? _value.selectedRowIndex
          : selectedRowIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      canCalculate: null == canCalculate
          ? _value.canCalculate
          : canCalculate // ignore: cast_nullable_to_non_nullable
              as bool,
      controller: null == controller
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as ScheduleRowController,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $ShiftScheduleStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? selectedRowIndex,
      DateTime startDate,
      DateTime endDate,
      bool canCalculate,
      ScheduleRowController controller});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ShiftScheduleStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedRowIndex = freezed,
    Object? startDate = null,
    Object? endDate = null,
    Object? canCalculate = null,
    Object? controller = null,
  }) {
    return _then(_$InitialImpl(
      selectedRowIndex: freezed == selectedRowIndex
          ? _value.selectedRowIndex
          : selectedRowIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      canCalculate: null == canCalculate
          ? _value.canCalculate
          : canCalculate // ignore: cast_nullable_to_non_nullable
              as bool,
      controller: null == controller
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as ScheduleRowController,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.selectedRowIndex,
      required this.startDate,
      required this.endDate,
      required this.canCalculate,
      required this.controller});

  @override
  final int? selectedRowIndex;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  final bool canCalculate;
  @override
  final ScheduleRowController controller;

  @override
  String toString() {
    return 'ShiftScheduleState.initial(selectedRowIndex: $selectedRowIndex, startDate: $startDate, endDate: $endDate, canCalculate: $canCalculate, controller: $controller)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.selectedRowIndex, selectedRowIndex) ||
                other.selectedRowIndex == selectedRowIndex) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.canCalculate, canCalculate) ||
                other.canCalculate == canCalculate) &&
            (identical(other.controller, controller) ||
                other.controller == controller));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedRowIndex, startDate,
      endDate, canCalculate, controller);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int? selectedRowIndex,
            DateTime startDate,
            DateTime endDate,
            bool canCalculate,
            ScheduleRowController controller)
        initial,
  }) {
    return initial(
        selectedRowIndex, startDate, endDate, canCalculate, controller);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int? selectedRowIndex,
            DateTime startDate,
            DateTime endDate,
            bool canCalculate,
            ScheduleRowController controller)?
        initial,
  }) {
    return initial?.call(
        selectedRowIndex, startDate, endDate, canCalculate, controller);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int? selectedRowIndex,
            DateTime startDate,
            DateTime endDate,
            bool canCalculate,
            ScheduleRowController controller)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(
          selectedRowIndex, startDate, endDate, canCalculate, controller);
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

abstract class _Initial implements ShiftScheduleState {
  const factory _Initial(
      {required final int? selectedRowIndex,
      required final DateTime startDate,
      required final DateTime endDate,
      required final bool canCalculate,
      required final ScheduleRowController controller}) = _$InitialImpl;

  @override
  int? get selectedRowIndex;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;
  @override
  bool get canCalculate;
  @override
  ScheduleRowController get controller;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
