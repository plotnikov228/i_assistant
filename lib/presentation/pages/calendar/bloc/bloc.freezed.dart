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
mixin _$CalendarEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CalendarDay day) selectDay,
    required TResult Function(DateTime dateTime) changeDate,
    required TResult Function(bool value) selectShiftTypes,
    required TResult Function(ShiftType value, CalendarDay calendarDay)
        addShiftType,
    required TResult Function() confirmShiftTypesChanges,
    required TResult Function(
            List<ShiftType> shiftTypes, DateTime start, DateTime end)
        getShiftTypes,
    required TResult Function() removeAllShiftTypes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CalendarDay day)? selectDay,
    TResult? Function(DateTime dateTime)? changeDate,
    TResult? Function(bool value)? selectShiftTypes,
    TResult? Function(ShiftType value, CalendarDay calendarDay)? addShiftType,
    TResult? Function()? confirmShiftTypesChanges,
    TResult? Function(List<ShiftType> shiftTypes, DateTime start, DateTime end)?
        getShiftTypes,
    TResult? Function()? removeAllShiftTypes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CalendarDay day)? selectDay,
    TResult Function(DateTime dateTime)? changeDate,
    TResult Function(bool value)? selectShiftTypes,
    TResult Function(ShiftType value, CalendarDay calendarDay)? addShiftType,
    TResult Function()? confirmShiftTypesChanges,
    TResult Function(List<ShiftType> shiftTypes, DateTime start, DateTime end)?
        getShiftTypes,
    TResult Function()? removeAllShiftTypes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectDay value) selectDay,
    required TResult Function(_ChangeDate value) changeDate,
    required TResult Function(_SelectShiftTypes value) selectShiftTypes,
    required TResult Function(_AddShiftType value) addShiftType,
    required TResult Function(_ConfirmShiftTypesChanges value)
        confirmShiftTypesChanges,
    required TResult Function(_GetShiftTypes value) getShiftTypes,
    required TResult Function(_RemoveAllShiftTypes value) removeAllShiftTypes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectDay value)? selectDay,
    TResult? Function(_ChangeDate value)? changeDate,
    TResult? Function(_SelectShiftTypes value)? selectShiftTypes,
    TResult? Function(_AddShiftType value)? addShiftType,
    TResult? Function(_ConfirmShiftTypesChanges value)?
        confirmShiftTypesChanges,
    TResult? Function(_GetShiftTypes value)? getShiftTypes,
    TResult? Function(_RemoveAllShiftTypes value)? removeAllShiftTypes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectDay value)? selectDay,
    TResult Function(_ChangeDate value)? changeDate,
    TResult Function(_SelectShiftTypes value)? selectShiftTypes,
    TResult Function(_AddShiftType value)? addShiftType,
    TResult Function(_ConfirmShiftTypesChanges value)? confirmShiftTypesChanges,
    TResult Function(_GetShiftTypes value)? getShiftTypes,
    TResult Function(_RemoveAllShiftTypes value)? removeAllShiftTypes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarEventCopyWith<$Res> {
  factory $CalendarEventCopyWith(
          CalendarEvent value, $Res Function(CalendarEvent) then) =
      _$CalendarEventCopyWithImpl<$Res, CalendarEvent>;
}

/// @nodoc
class _$CalendarEventCopyWithImpl<$Res, $Val extends CalendarEvent>
    implements $CalendarEventCopyWith<$Res> {
  _$CalendarEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SelectDayImplCopyWith<$Res> {
  factory _$$SelectDayImplCopyWith(
          _$SelectDayImpl value, $Res Function(_$SelectDayImpl) then) =
      __$$SelectDayImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CalendarDay day});

  $CalendarDayCopyWith<$Res> get day;
}

/// @nodoc
class __$$SelectDayImplCopyWithImpl<$Res>
    extends _$CalendarEventCopyWithImpl<$Res, _$SelectDayImpl>
    implements _$$SelectDayImplCopyWith<$Res> {
  __$$SelectDayImplCopyWithImpl(
      _$SelectDayImpl _value, $Res Function(_$SelectDayImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
  }) {
    return _then(_$SelectDayImpl(
      null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as CalendarDay,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CalendarDayCopyWith<$Res> get day {
    return $CalendarDayCopyWith<$Res>(_value.day, (value) {
      return _then(_value.copyWith(day: value));
    });
  }
}

/// @nodoc

class _$SelectDayImpl implements _SelectDay {
  const _$SelectDayImpl(this.day);

  @override
  final CalendarDay day;

  @override
  String toString() {
    return 'CalendarEvent.selectDay(day: $day)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectDayImpl &&
            (identical(other.day, day) || other.day == day));
  }

  @override
  int get hashCode => Object.hash(runtimeType, day);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectDayImplCopyWith<_$SelectDayImpl> get copyWith =>
      __$$SelectDayImplCopyWithImpl<_$SelectDayImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CalendarDay day) selectDay,
    required TResult Function(DateTime dateTime) changeDate,
    required TResult Function(bool value) selectShiftTypes,
    required TResult Function(ShiftType value, CalendarDay calendarDay)
        addShiftType,
    required TResult Function() confirmShiftTypesChanges,
    required TResult Function(
            List<ShiftType> shiftTypes, DateTime start, DateTime end)
        getShiftTypes,
    required TResult Function() removeAllShiftTypes,
  }) {
    return selectDay(day);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CalendarDay day)? selectDay,
    TResult? Function(DateTime dateTime)? changeDate,
    TResult? Function(bool value)? selectShiftTypes,
    TResult? Function(ShiftType value, CalendarDay calendarDay)? addShiftType,
    TResult? Function()? confirmShiftTypesChanges,
    TResult? Function(List<ShiftType> shiftTypes, DateTime start, DateTime end)?
        getShiftTypes,
    TResult? Function()? removeAllShiftTypes,
  }) {
    return selectDay?.call(day);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CalendarDay day)? selectDay,
    TResult Function(DateTime dateTime)? changeDate,
    TResult Function(bool value)? selectShiftTypes,
    TResult Function(ShiftType value, CalendarDay calendarDay)? addShiftType,
    TResult Function()? confirmShiftTypesChanges,
    TResult Function(List<ShiftType> shiftTypes, DateTime start, DateTime end)?
        getShiftTypes,
    TResult Function()? removeAllShiftTypes,
    required TResult orElse(),
  }) {
    if (selectDay != null) {
      return selectDay(day);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectDay value) selectDay,
    required TResult Function(_ChangeDate value) changeDate,
    required TResult Function(_SelectShiftTypes value) selectShiftTypes,
    required TResult Function(_AddShiftType value) addShiftType,
    required TResult Function(_ConfirmShiftTypesChanges value)
        confirmShiftTypesChanges,
    required TResult Function(_GetShiftTypes value) getShiftTypes,
    required TResult Function(_RemoveAllShiftTypes value) removeAllShiftTypes,
  }) {
    return selectDay(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectDay value)? selectDay,
    TResult? Function(_ChangeDate value)? changeDate,
    TResult? Function(_SelectShiftTypes value)? selectShiftTypes,
    TResult? Function(_AddShiftType value)? addShiftType,
    TResult? Function(_ConfirmShiftTypesChanges value)?
        confirmShiftTypesChanges,
    TResult? Function(_GetShiftTypes value)? getShiftTypes,
    TResult? Function(_RemoveAllShiftTypes value)? removeAllShiftTypes,
  }) {
    return selectDay?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectDay value)? selectDay,
    TResult Function(_ChangeDate value)? changeDate,
    TResult Function(_SelectShiftTypes value)? selectShiftTypes,
    TResult Function(_AddShiftType value)? addShiftType,
    TResult Function(_ConfirmShiftTypesChanges value)? confirmShiftTypesChanges,
    TResult Function(_GetShiftTypes value)? getShiftTypes,
    TResult Function(_RemoveAllShiftTypes value)? removeAllShiftTypes,
    required TResult orElse(),
  }) {
    if (selectDay != null) {
      return selectDay(this);
    }
    return orElse();
  }
}

abstract class _SelectDay implements CalendarEvent {
  const factory _SelectDay(final CalendarDay day) = _$SelectDayImpl;

  CalendarDay get day;
  @JsonKey(ignore: true)
  _$$SelectDayImplCopyWith<_$SelectDayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeDateImplCopyWith<$Res> {
  factory _$$ChangeDateImplCopyWith(
          _$ChangeDateImpl value, $Res Function(_$ChangeDateImpl) then) =
      __$$ChangeDateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime dateTime});
}

/// @nodoc
class __$$ChangeDateImplCopyWithImpl<$Res>
    extends _$CalendarEventCopyWithImpl<$Res, _$ChangeDateImpl>
    implements _$$ChangeDateImplCopyWith<$Res> {
  __$$ChangeDateImplCopyWithImpl(
      _$ChangeDateImpl _value, $Res Function(_$ChangeDateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = null,
  }) {
    return _then(_$ChangeDateImpl(
      null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$ChangeDateImpl implements _ChangeDate {
  const _$ChangeDateImpl(this.dateTime);

  @override
  final DateTime dateTime;

  @override
  String toString() {
    return 'CalendarEvent.changeDate(dateTime: $dateTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeDateImpl &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dateTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeDateImplCopyWith<_$ChangeDateImpl> get copyWith =>
      __$$ChangeDateImplCopyWithImpl<_$ChangeDateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CalendarDay day) selectDay,
    required TResult Function(DateTime dateTime) changeDate,
    required TResult Function(bool value) selectShiftTypes,
    required TResult Function(ShiftType value, CalendarDay calendarDay)
        addShiftType,
    required TResult Function() confirmShiftTypesChanges,
    required TResult Function(
            List<ShiftType> shiftTypes, DateTime start, DateTime end)
        getShiftTypes,
    required TResult Function() removeAllShiftTypes,
  }) {
    return changeDate(dateTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CalendarDay day)? selectDay,
    TResult? Function(DateTime dateTime)? changeDate,
    TResult? Function(bool value)? selectShiftTypes,
    TResult? Function(ShiftType value, CalendarDay calendarDay)? addShiftType,
    TResult? Function()? confirmShiftTypesChanges,
    TResult? Function(List<ShiftType> shiftTypes, DateTime start, DateTime end)?
        getShiftTypes,
    TResult? Function()? removeAllShiftTypes,
  }) {
    return changeDate?.call(dateTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CalendarDay day)? selectDay,
    TResult Function(DateTime dateTime)? changeDate,
    TResult Function(bool value)? selectShiftTypes,
    TResult Function(ShiftType value, CalendarDay calendarDay)? addShiftType,
    TResult Function()? confirmShiftTypesChanges,
    TResult Function(List<ShiftType> shiftTypes, DateTime start, DateTime end)?
        getShiftTypes,
    TResult Function()? removeAllShiftTypes,
    required TResult orElse(),
  }) {
    if (changeDate != null) {
      return changeDate(dateTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectDay value) selectDay,
    required TResult Function(_ChangeDate value) changeDate,
    required TResult Function(_SelectShiftTypes value) selectShiftTypes,
    required TResult Function(_AddShiftType value) addShiftType,
    required TResult Function(_ConfirmShiftTypesChanges value)
        confirmShiftTypesChanges,
    required TResult Function(_GetShiftTypes value) getShiftTypes,
    required TResult Function(_RemoveAllShiftTypes value) removeAllShiftTypes,
  }) {
    return changeDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectDay value)? selectDay,
    TResult? Function(_ChangeDate value)? changeDate,
    TResult? Function(_SelectShiftTypes value)? selectShiftTypes,
    TResult? Function(_AddShiftType value)? addShiftType,
    TResult? Function(_ConfirmShiftTypesChanges value)?
        confirmShiftTypesChanges,
    TResult? Function(_GetShiftTypes value)? getShiftTypes,
    TResult? Function(_RemoveAllShiftTypes value)? removeAllShiftTypes,
  }) {
    return changeDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectDay value)? selectDay,
    TResult Function(_ChangeDate value)? changeDate,
    TResult Function(_SelectShiftTypes value)? selectShiftTypes,
    TResult Function(_AddShiftType value)? addShiftType,
    TResult Function(_ConfirmShiftTypesChanges value)? confirmShiftTypesChanges,
    TResult Function(_GetShiftTypes value)? getShiftTypes,
    TResult Function(_RemoveAllShiftTypes value)? removeAllShiftTypes,
    required TResult orElse(),
  }) {
    if (changeDate != null) {
      return changeDate(this);
    }
    return orElse();
  }
}

abstract class _ChangeDate implements CalendarEvent {
  const factory _ChangeDate(final DateTime dateTime) = _$ChangeDateImpl;

  DateTime get dateTime;
  @JsonKey(ignore: true)
  _$$ChangeDateImplCopyWith<_$ChangeDateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectShiftTypesImplCopyWith<$Res> {
  factory _$$SelectShiftTypesImplCopyWith(_$SelectShiftTypesImpl value,
          $Res Function(_$SelectShiftTypesImpl) then) =
      __$$SelectShiftTypesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool value});
}

/// @nodoc
class __$$SelectShiftTypesImplCopyWithImpl<$Res>
    extends _$CalendarEventCopyWithImpl<$Res, _$SelectShiftTypesImpl>
    implements _$$SelectShiftTypesImplCopyWith<$Res> {
  __$$SelectShiftTypesImplCopyWithImpl(_$SelectShiftTypesImpl _value,
      $Res Function(_$SelectShiftTypesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$SelectShiftTypesImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SelectShiftTypesImpl implements _SelectShiftTypes {
  const _$SelectShiftTypesImpl(this.value);

  @override
  final bool value;

  @override
  String toString() {
    return 'CalendarEvent.selectShiftTypes(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectShiftTypesImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectShiftTypesImplCopyWith<_$SelectShiftTypesImpl> get copyWith =>
      __$$SelectShiftTypesImplCopyWithImpl<_$SelectShiftTypesImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CalendarDay day) selectDay,
    required TResult Function(DateTime dateTime) changeDate,
    required TResult Function(bool value) selectShiftTypes,
    required TResult Function(ShiftType value, CalendarDay calendarDay)
        addShiftType,
    required TResult Function() confirmShiftTypesChanges,
    required TResult Function(
            List<ShiftType> shiftTypes, DateTime start, DateTime end)
        getShiftTypes,
    required TResult Function() removeAllShiftTypes,
  }) {
    return selectShiftTypes(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CalendarDay day)? selectDay,
    TResult? Function(DateTime dateTime)? changeDate,
    TResult? Function(bool value)? selectShiftTypes,
    TResult? Function(ShiftType value, CalendarDay calendarDay)? addShiftType,
    TResult? Function()? confirmShiftTypesChanges,
    TResult? Function(List<ShiftType> shiftTypes, DateTime start, DateTime end)?
        getShiftTypes,
    TResult? Function()? removeAllShiftTypes,
  }) {
    return selectShiftTypes?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CalendarDay day)? selectDay,
    TResult Function(DateTime dateTime)? changeDate,
    TResult Function(bool value)? selectShiftTypes,
    TResult Function(ShiftType value, CalendarDay calendarDay)? addShiftType,
    TResult Function()? confirmShiftTypesChanges,
    TResult Function(List<ShiftType> shiftTypes, DateTime start, DateTime end)?
        getShiftTypes,
    TResult Function()? removeAllShiftTypes,
    required TResult orElse(),
  }) {
    if (selectShiftTypes != null) {
      return selectShiftTypes(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectDay value) selectDay,
    required TResult Function(_ChangeDate value) changeDate,
    required TResult Function(_SelectShiftTypes value) selectShiftTypes,
    required TResult Function(_AddShiftType value) addShiftType,
    required TResult Function(_ConfirmShiftTypesChanges value)
        confirmShiftTypesChanges,
    required TResult Function(_GetShiftTypes value) getShiftTypes,
    required TResult Function(_RemoveAllShiftTypes value) removeAllShiftTypes,
  }) {
    return selectShiftTypes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectDay value)? selectDay,
    TResult? Function(_ChangeDate value)? changeDate,
    TResult? Function(_SelectShiftTypes value)? selectShiftTypes,
    TResult? Function(_AddShiftType value)? addShiftType,
    TResult? Function(_ConfirmShiftTypesChanges value)?
        confirmShiftTypesChanges,
    TResult? Function(_GetShiftTypes value)? getShiftTypes,
    TResult? Function(_RemoveAllShiftTypes value)? removeAllShiftTypes,
  }) {
    return selectShiftTypes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectDay value)? selectDay,
    TResult Function(_ChangeDate value)? changeDate,
    TResult Function(_SelectShiftTypes value)? selectShiftTypes,
    TResult Function(_AddShiftType value)? addShiftType,
    TResult Function(_ConfirmShiftTypesChanges value)? confirmShiftTypesChanges,
    TResult Function(_GetShiftTypes value)? getShiftTypes,
    TResult Function(_RemoveAllShiftTypes value)? removeAllShiftTypes,
    required TResult orElse(),
  }) {
    if (selectShiftTypes != null) {
      return selectShiftTypes(this);
    }
    return orElse();
  }
}

abstract class _SelectShiftTypes implements CalendarEvent {
  const factory _SelectShiftTypes(final bool value) = _$SelectShiftTypesImpl;

  bool get value;
  @JsonKey(ignore: true)
  _$$SelectShiftTypesImplCopyWith<_$SelectShiftTypesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddShiftTypeImplCopyWith<$Res> {
  factory _$$AddShiftTypeImplCopyWith(
          _$AddShiftTypeImpl value, $Res Function(_$AddShiftTypeImpl) then) =
      __$$AddShiftTypeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ShiftType value, CalendarDay calendarDay});

  $CalendarDayCopyWith<$Res> get calendarDay;
}

/// @nodoc
class __$$AddShiftTypeImplCopyWithImpl<$Res>
    extends _$CalendarEventCopyWithImpl<$Res, _$AddShiftTypeImpl>
    implements _$$AddShiftTypeImplCopyWith<$Res> {
  __$$AddShiftTypeImplCopyWithImpl(
      _$AddShiftTypeImpl _value, $Res Function(_$AddShiftTypeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? calendarDay = null,
  }) {
    return _then(_$AddShiftTypeImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as ShiftType,
      null == calendarDay
          ? _value.calendarDay
          : calendarDay // ignore: cast_nullable_to_non_nullable
              as CalendarDay,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CalendarDayCopyWith<$Res> get calendarDay {
    return $CalendarDayCopyWith<$Res>(_value.calendarDay, (value) {
      return _then(_value.copyWith(calendarDay: value));
    });
  }
}

/// @nodoc

class _$AddShiftTypeImpl implements _AddShiftType {
  const _$AddShiftTypeImpl(this.value, this.calendarDay);

  @override
  final ShiftType value;
  @override
  final CalendarDay calendarDay;

  @override
  String toString() {
    return 'CalendarEvent.addShiftType(value: $value, calendarDay: $calendarDay)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddShiftTypeImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.calendarDay, calendarDay) ||
                other.calendarDay == calendarDay));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value, calendarDay);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddShiftTypeImplCopyWith<_$AddShiftTypeImpl> get copyWith =>
      __$$AddShiftTypeImplCopyWithImpl<_$AddShiftTypeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CalendarDay day) selectDay,
    required TResult Function(DateTime dateTime) changeDate,
    required TResult Function(bool value) selectShiftTypes,
    required TResult Function(ShiftType value, CalendarDay calendarDay)
        addShiftType,
    required TResult Function() confirmShiftTypesChanges,
    required TResult Function(
            List<ShiftType> shiftTypes, DateTime start, DateTime end)
        getShiftTypes,
    required TResult Function() removeAllShiftTypes,
  }) {
    return addShiftType(value, calendarDay);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CalendarDay day)? selectDay,
    TResult? Function(DateTime dateTime)? changeDate,
    TResult? Function(bool value)? selectShiftTypes,
    TResult? Function(ShiftType value, CalendarDay calendarDay)? addShiftType,
    TResult? Function()? confirmShiftTypesChanges,
    TResult? Function(List<ShiftType> shiftTypes, DateTime start, DateTime end)?
        getShiftTypes,
    TResult? Function()? removeAllShiftTypes,
  }) {
    return addShiftType?.call(value, calendarDay);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CalendarDay day)? selectDay,
    TResult Function(DateTime dateTime)? changeDate,
    TResult Function(bool value)? selectShiftTypes,
    TResult Function(ShiftType value, CalendarDay calendarDay)? addShiftType,
    TResult Function()? confirmShiftTypesChanges,
    TResult Function(List<ShiftType> shiftTypes, DateTime start, DateTime end)?
        getShiftTypes,
    TResult Function()? removeAllShiftTypes,
    required TResult orElse(),
  }) {
    if (addShiftType != null) {
      return addShiftType(value, calendarDay);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectDay value) selectDay,
    required TResult Function(_ChangeDate value) changeDate,
    required TResult Function(_SelectShiftTypes value) selectShiftTypes,
    required TResult Function(_AddShiftType value) addShiftType,
    required TResult Function(_ConfirmShiftTypesChanges value)
        confirmShiftTypesChanges,
    required TResult Function(_GetShiftTypes value) getShiftTypes,
    required TResult Function(_RemoveAllShiftTypes value) removeAllShiftTypes,
  }) {
    return addShiftType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectDay value)? selectDay,
    TResult? Function(_ChangeDate value)? changeDate,
    TResult? Function(_SelectShiftTypes value)? selectShiftTypes,
    TResult? Function(_AddShiftType value)? addShiftType,
    TResult? Function(_ConfirmShiftTypesChanges value)?
        confirmShiftTypesChanges,
    TResult? Function(_GetShiftTypes value)? getShiftTypes,
    TResult? Function(_RemoveAllShiftTypes value)? removeAllShiftTypes,
  }) {
    return addShiftType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectDay value)? selectDay,
    TResult Function(_ChangeDate value)? changeDate,
    TResult Function(_SelectShiftTypes value)? selectShiftTypes,
    TResult Function(_AddShiftType value)? addShiftType,
    TResult Function(_ConfirmShiftTypesChanges value)? confirmShiftTypesChanges,
    TResult Function(_GetShiftTypes value)? getShiftTypes,
    TResult Function(_RemoveAllShiftTypes value)? removeAllShiftTypes,
    required TResult orElse(),
  }) {
    if (addShiftType != null) {
      return addShiftType(this);
    }
    return orElse();
  }
}

abstract class _AddShiftType implements CalendarEvent {
  const factory _AddShiftType(
          final ShiftType value, final CalendarDay calendarDay) =
      _$AddShiftTypeImpl;

  ShiftType get value;
  CalendarDay get calendarDay;
  @JsonKey(ignore: true)
  _$$AddShiftTypeImplCopyWith<_$AddShiftTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConfirmShiftTypesChangesImplCopyWith<$Res> {
  factory _$$ConfirmShiftTypesChangesImplCopyWith(
          _$ConfirmShiftTypesChangesImpl value,
          $Res Function(_$ConfirmShiftTypesChangesImpl) then) =
      __$$ConfirmShiftTypesChangesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConfirmShiftTypesChangesImplCopyWithImpl<$Res>
    extends _$CalendarEventCopyWithImpl<$Res, _$ConfirmShiftTypesChangesImpl>
    implements _$$ConfirmShiftTypesChangesImplCopyWith<$Res> {
  __$$ConfirmShiftTypesChangesImplCopyWithImpl(
      _$ConfirmShiftTypesChangesImpl _value,
      $Res Function(_$ConfirmShiftTypesChangesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ConfirmShiftTypesChangesImpl implements _ConfirmShiftTypesChanges {
  const _$ConfirmShiftTypesChangesImpl();

  @override
  String toString() {
    return 'CalendarEvent.confirmShiftTypesChanges()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmShiftTypesChangesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CalendarDay day) selectDay,
    required TResult Function(DateTime dateTime) changeDate,
    required TResult Function(bool value) selectShiftTypes,
    required TResult Function(ShiftType value, CalendarDay calendarDay)
        addShiftType,
    required TResult Function() confirmShiftTypesChanges,
    required TResult Function(
            List<ShiftType> shiftTypes, DateTime start, DateTime end)
        getShiftTypes,
    required TResult Function() removeAllShiftTypes,
  }) {
    return confirmShiftTypesChanges();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CalendarDay day)? selectDay,
    TResult? Function(DateTime dateTime)? changeDate,
    TResult? Function(bool value)? selectShiftTypes,
    TResult? Function(ShiftType value, CalendarDay calendarDay)? addShiftType,
    TResult? Function()? confirmShiftTypesChanges,
    TResult? Function(List<ShiftType> shiftTypes, DateTime start, DateTime end)?
        getShiftTypes,
    TResult? Function()? removeAllShiftTypes,
  }) {
    return confirmShiftTypesChanges?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CalendarDay day)? selectDay,
    TResult Function(DateTime dateTime)? changeDate,
    TResult Function(bool value)? selectShiftTypes,
    TResult Function(ShiftType value, CalendarDay calendarDay)? addShiftType,
    TResult Function()? confirmShiftTypesChanges,
    TResult Function(List<ShiftType> shiftTypes, DateTime start, DateTime end)?
        getShiftTypes,
    TResult Function()? removeAllShiftTypes,
    required TResult orElse(),
  }) {
    if (confirmShiftTypesChanges != null) {
      return confirmShiftTypesChanges();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectDay value) selectDay,
    required TResult Function(_ChangeDate value) changeDate,
    required TResult Function(_SelectShiftTypes value) selectShiftTypes,
    required TResult Function(_AddShiftType value) addShiftType,
    required TResult Function(_ConfirmShiftTypesChanges value)
        confirmShiftTypesChanges,
    required TResult Function(_GetShiftTypes value) getShiftTypes,
    required TResult Function(_RemoveAllShiftTypes value) removeAllShiftTypes,
  }) {
    return confirmShiftTypesChanges(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectDay value)? selectDay,
    TResult? Function(_ChangeDate value)? changeDate,
    TResult? Function(_SelectShiftTypes value)? selectShiftTypes,
    TResult? Function(_AddShiftType value)? addShiftType,
    TResult? Function(_ConfirmShiftTypesChanges value)?
        confirmShiftTypesChanges,
    TResult? Function(_GetShiftTypes value)? getShiftTypes,
    TResult? Function(_RemoveAllShiftTypes value)? removeAllShiftTypes,
  }) {
    return confirmShiftTypesChanges?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectDay value)? selectDay,
    TResult Function(_ChangeDate value)? changeDate,
    TResult Function(_SelectShiftTypes value)? selectShiftTypes,
    TResult Function(_AddShiftType value)? addShiftType,
    TResult Function(_ConfirmShiftTypesChanges value)? confirmShiftTypesChanges,
    TResult Function(_GetShiftTypes value)? getShiftTypes,
    TResult Function(_RemoveAllShiftTypes value)? removeAllShiftTypes,
    required TResult orElse(),
  }) {
    if (confirmShiftTypesChanges != null) {
      return confirmShiftTypesChanges(this);
    }
    return orElse();
  }
}

abstract class _ConfirmShiftTypesChanges implements CalendarEvent {
  const factory _ConfirmShiftTypesChanges() = _$ConfirmShiftTypesChangesImpl;
}

/// @nodoc
abstract class _$$GetShiftTypesImplCopyWith<$Res> {
  factory _$$GetShiftTypesImplCopyWith(
          _$GetShiftTypesImpl value, $Res Function(_$GetShiftTypesImpl) then) =
      __$$GetShiftTypesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ShiftType> shiftTypes, DateTime start, DateTime end});
}

/// @nodoc
class __$$GetShiftTypesImplCopyWithImpl<$Res>
    extends _$CalendarEventCopyWithImpl<$Res, _$GetShiftTypesImpl>
    implements _$$GetShiftTypesImplCopyWith<$Res> {
  __$$GetShiftTypesImplCopyWithImpl(
      _$GetShiftTypesImpl _value, $Res Function(_$GetShiftTypesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shiftTypes = null,
    Object? start = null,
    Object? end = null,
  }) {
    return _then(_$GetShiftTypesImpl(
      null == shiftTypes
          ? _value._shiftTypes
          : shiftTypes // ignore: cast_nullable_to_non_nullable
              as List<ShiftType>,
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$GetShiftTypesImpl implements _GetShiftTypes {
  const _$GetShiftTypesImpl(final List<ShiftType> shiftTypes,
      {required this.start, required this.end})
      : _shiftTypes = shiftTypes;

  final List<ShiftType> _shiftTypes;
  @override
  List<ShiftType> get shiftTypes {
    if (_shiftTypes is EqualUnmodifiableListView) return _shiftTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_shiftTypes);
  }

  @override
  final DateTime start;
  @override
  final DateTime end;

  @override
  String toString() {
    return 'CalendarEvent.getShiftTypes(shiftTypes: $shiftTypes, start: $start, end: $end)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetShiftTypesImpl &&
            const DeepCollectionEquality()
                .equals(other._shiftTypes, _shiftTypes) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_shiftTypes), start, end);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetShiftTypesImplCopyWith<_$GetShiftTypesImpl> get copyWith =>
      __$$GetShiftTypesImplCopyWithImpl<_$GetShiftTypesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CalendarDay day) selectDay,
    required TResult Function(DateTime dateTime) changeDate,
    required TResult Function(bool value) selectShiftTypes,
    required TResult Function(ShiftType value, CalendarDay calendarDay)
        addShiftType,
    required TResult Function() confirmShiftTypesChanges,
    required TResult Function(
            List<ShiftType> shiftTypes, DateTime start, DateTime end)
        getShiftTypes,
    required TResult Function() removeAllShiftTypes,
  }) {
    return getShiftTypes(shiftTypes, start, end);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CalendarDay day)? selectDay,
    TResult? Function(DateTime dateTime)? changeDate,
    TResult? Function(bool value)? selectShiftTypes,
    TResult? Function(ShiftType value, CalendarDay calendarDay)? addShiftType,
    TResult? Function()? confirmShiftTypesChanges,
    TResult? Function(List<ShiftType> shiftTypes, DateTime start, DateTime end)?
        getShiftTypes,
    TResult? Function()? removeAllShiftTypes,
  }) {
    return getShiftTypes?.call(shiftTypes, start, end);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CalendarDay day)? selectDay,
    TResult Function(DateTime dateTime)? changeDate,
    TResult Function(bool value)? selectShiftTypes,
    TResult Function(ShiftType value, CalendarDay calendarDay)? addShiftType,
    TResult Function()? confirmShiftTypesChanges,
    TResult Function(List<ShiftType> shiftTypes, DateTime start, DateTime end)?
        getShiftTypes,
    TResult Function()? removeAllShiftTypes,
    required TResult orElse(),
  }) {
    if (getShiftTypes != null) {
      return getShiftTypes(shiftTypes, start, end);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectDay value) selectDay,
    required TResult Function(_ChangeDate value) changeDate,
    required TResult Function(_SelectShiftTypes value) selectShiftTypes,
    required TResult Function(_AddShiftType value) addShiftType,
    required TResult Function(_ConfirmShiftTypesChanges value)
        confirmShiftTypesChanges,
    required TResult Function(_GetShiftTypes value) getShiftTypes,
    required TResult Function(_RemoveAllShiftTypes value) removeAllShiftTypes,
  }) {
    return getShiftTypes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectDay value)? selectDay,
    TResult? Function(_ChangeDate value)? changeDate,
    TResult? Function(_SelectShiftTypes value)? selectShiftTypes,
    TResult? Function(_AddShiftType value)? addShiftType,
    TResult? Function(_ConfirmShiftTypesChanges value)?
        confirmShiftTypesChanges,
    TResult? Function(_GetShiftTypes value)? getShiftTypes,
    TResult? Function(_RemoveAllShiftTypes value)? removeAllShiftTypes,
  }) {
    return getShiftTypes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectDay value)? selectDay,
    TResult Function(_ChangeDate value)? changeDate,
    TResult Function(_SelectShiftTypes value)? selectShiftTypes,
    TResult Function(_AddShiftType value)? addShiftType,
    TResult Function(_ConfirmShiftTypesChanges value)? confirmShiftTypesChanges,
    TResult Function(_GetShiftTypes value)? getShiftTypes,
    TResult Function(_RemoveAllShiftTypes value)? removeAllShiftTypes,
    required TResult orElse(),
  }) {
    if (getShiftTypes != null) {
      return getShiftTypes(this);
    }
    return orElse();
  }
}

abstract class _GetShiftTypes implements CalendarEvent {
  const factory _GetShiftTypes(final List<ShiftType> shiftTypes,
      {required final DateTime start,
      required final DateTime end}) = _$GetShiftTypesImpl;

  List<ShiftType> get shiftTypes;
  DateTime get start;
  DateTime get end;
  @JsonKey(ignore: true)
  _$$GetShiftTypesImplCopyWith<_$GetShiftTypesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveAllShiftTypesImplCopyWith<$Res> {
  factory _$$RemoveAllShiftTypesImplCopyWith(_$RemoveAllShiftTypesImpl value,
          $Res Function(_$RemoveAllShiftTypesImpl) then) =
      __$$RemoveAllShiftTypesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RemoveAllShiftTypesImplCopyWithImpl<$Res>
    extends _$CalendarEventCopyWithImpl<$Res, _$RemoveAllShiftTypesImpl>
    implements _$$RemoveAllShiftTypesImplCopyWith<$Res> {
  __$$RemoveAllShiftTypesImplCopyWithImpl(_$RemoveAllShiftTypesImpl _value,
      $Res Function(_$RemoveAllShiftTypesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RemoveAllShiftTypesImpl implements _RemoveAllShiftTypes {
  const _$RemoveAllShiftTypesImpl();

  @override
  String toString() {
    return 'CalendarEvent.removeAllShiftTypes()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveAllShiftTypesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CalendarDay day) selectDay,
    required TResult Function(DateTime dateTime) changeDate,
    required TResult Function(bool value) selectShiftTypes,
    required TResult Function(ShiftType value, CalendarDay calendarDay)
        addShiftType,
    required TResult Function() confirmShiftTypesChanges,
    required TResult Function(
            List<ShiftType> shiftTypes, DateTime start, DateTime end)
        getShiftTypes,
    required TResult Function() removeAllShiftTypes,
  }) {
    return removeAllShiftTypes();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CalendarDay day)? selectDay,
    TResult? Function(DateTime dateTime)? changeDate,
    TResult? Function(bool value)? selectShiftTypes,
    TResult? Function(ShiftType value, CalendarDay calendarDay)? addShiftType,
    TResult? Function()? confirmShiftTypesChanges,
    TResult? Function(List<ShiftType> shiftTypes, DateTime start, DateTime end)?
        getShiftTypes,
    TResult? Function()? removeAllShiftTypes,
  }) {
    return removeAllShiftTypes?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CalendarDay day)? selectDay,
    TResult Function(DateTime dateTime)? changeDate,
    TResult Function(bool value)? selectShiftTypes,
    TResult Function(ShiftType value, CalendarDay calendarDay)? addShiftType,
    TResult Function()? confirmShiftTypesChanges,
    TResult Function(List<ShiftType> shiftTypes, DateTime start, DateTime end)?
        getShiftTypes,
    TResult Function()? removeAllShiftTypes,
    required TResult orElse(),
  }) {
    if (removeAllShiftTypes != null) {
      return removeAllShiftTypes();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectDay value) selectDay,
    required TResult Function(_ChangeDate value) changeDate,
    required TResult Function(_SelectShiftTypes value) selectShiftTypes,
    required TResult Function(_AddShiftType value) addShiftType,
    required TResult Function(_ConfirmShiftTypesChanges value)
        confirmShiftTypesChanges,
    required TResult Function(_GetShiftTypes value) getShiftTypes,
    required TResult Function(_RemoveAllShiftTypes value) removeAllShiftTypes,
  }) {
    return removeAllShiftTypes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectDay value)? selectDay,
    TResult? Function(_ChangeDate value)? changeDate,
    TResult? Function(_SelectShiftTypes value)? selectShiftTypes,
    TResult? Function(_AddShiftType value)? addShiftType,
    TResult? Function(_ConfirmShiftTypesChanges value)?
        confirmShiftTypesChanges,
    TResult? Function(_GetShiftTypes value)? getShiftTypes,
    TResult? Function(_RemoveAllShiftTypes value)? removeAllShiftTypes,
  }) {
    return removeAllShiftTypes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectDay value)? selectDay,
    TResult Function(_ChangeDate value)? changeDate,
    TResult Function(_SelectShiftTypes value)? selectShiftTypes,
    TResult Function(_AddShiftType value)? addShiftType,
    TResult Function(_ConfirmShiftTypesChanges value)? confirmShiftTypesChanges,
    TResult Function(_GetShiftTypes value)? getShiftTypes,
    TResult Function(_RemoveAllShiftTypes value)? removeAllShiftTypes,
    required TResult orElse(),
  }) {
    if (removeAllShiftTypes != null) {
      return removeAllShiftTypes(this);
    }
    return orElse();
  }
}

abstract class _RemoveAllShiftTypes implements CalendarEvent {
  const factory _RemoveAllShiftTypes() = _$RemoveAllShiftTypesImpl;
}

/// @nodoc
mixin _$CalendarState {
  int get month => throw _privateConstructorUsedError;
  int get year => throw _privateConstructorUsedError;
  List<CalendarDay> get days => throw _privateConstructorUsedError;
  CalendarDay? get selectedDay => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int month, int year, List<CalendarDay> days,
            CalendarDay? selectedDay, bool canCleanShiftTypes)
        calendar,
    required TResult Function(int month, int year, List<CalendarDay> days,
            List<CalendarDay> changedDays, CalendarDay? selectedDay)
        shiftType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int month, int year, List<CalendarDay> days,
            CalendarDay? selectedDay, bool canCleanShiftTypes)?
        calendar,
    TResult? Function(int month, int year, List<CalendarDay> days,
            List<CalendarDay> changedDays, CalendarDay? selectedDay)?
        shiftType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int month, int year, List<CalendarDay> days,
            CalendarDay? selectedDay, bool canCleanShiftTypes)?
        calendar,
    TResult Function(int month, int year, List<CalendarDay> days,
            List<CalendarDay> changedDays, CalendarDay? selectedDay)?
        shiftType,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Calendar value) calendar,
    required TResult Function(_ShiftType value) shiftType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Calendar value)? calendar,
    TResult? Function(_ShiftType value)? shiftType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Calendar value)? calendar,
    TResult Function(_ShiftType value)? shiftType,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CalendarStateCopyWith<CalendarState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarStateCopyWith<$Res> {
  factory $CalendarStateCopyWith(
          CalendarState value, $Res Function(CalendarState) then) =
      _$CalendarStateCopyWithImpl<$Res, CalendarState>;
  @useResult
  $Res call(
      {int month, int year, List<CalendarDay> days, CalendarDay? selectedDay});

  $CalendarDayCopyWith<$Res>? get selectedDay;
}

/// @nodoc
class _$CalendarStateCopyWithImpl<$Res, $Val extends CalendarState>
    implements $CalendarStateCopyWith<$Res> {
  _$CalendarStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? month = null,
    Object? year = null,
    Object? days = null,
    Object? selectedDay = freezed,
  }) {
    return _then(_value.copyWith(
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      days: null == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as List<CalendarDay>,
      selectedDay: freezed == selectedDay
          ? _value.selectedDay
          : selectedDay // ignore: cast_nullable_to_non_nullable
              as CalendarDay?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CalendarDayCopyWith<$Res>? get selectedDay {
    if (_value.selectedDay == null) {
      return null;
    }

    return $CalendarDayCopyWith<$Res>(_value.selectedDay!, (value) {
      return _then(_value.copyWith(selectedDay: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CalendarImplCopyWith<$Res>
    implements $CalendarStateCopyWith<$Res> {
  factory _$$CalendarImplCopyWith(
          _$CalendarImpl value, $Res Function(_$CalendarImpl) then) =
      __$$CalendarImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int month,
      int year,
      List<CalendarDay> days,
      CalendarDay? selectedDay,
      bool canCleanShiftTypes});

  @override
  $CalendarDayCopyWith<$Res>? get selectedDay;
}

/// @nodoc
class __$$CalendarImplCopyWithImpl<$Res>
    extends _$CalendarStateCopyWithImpl<$Res, _$CalendarImpl>
    implements _$$CalendarImplCopyWith<$Res> {
  __$$CalendarImplCopyWithImpl(
      _$CalendarImpl _value, $Res Function(_$CalendarImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? month = null,
    Object? year = null,
    Object? days = null,
    Object? selectedDay = freezed,
    Object? canCleanShiftTypes = null,
  }) {
    return _then(_$CalendarImpl(
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      days: null == days
          ? _value._days
          : days // ignore: cast_nullable_to_non_nullable
              as List<CalendarDay>,
      selectedDay: freezed == selectedDay
          ? _value.selectedDay
          : selectedDay // ignore: cast_nullable_to_non_nullable
              as CalendarDay?,
      canCleanShiftTypes: null == canCleanShiftTypes
          ? _value.canCleanShiftTypes
          : canCleanShiftTypes // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CalendarImpl implements _Calendar {
  const _$CalendarImpl(
      {required this.month,
      required this.year,
      required final List<CalendarDay> days,
      required this.selectedDay,
      required this.canCleanShiftTypes})
      : _days = days;

  @override
  final int month;
  @override
  final int year;
  final List<CalendarDay> _days;
  @override
  List<CalendarDay> get days {
    if (_days is EqualUnmodifiableListView) return _days;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_days);
  }

  @override
  final CalendarDay? selectedDay;
  @override
  final bool canCleanShiftTypes;

  @override
  String toString() {
    return 'CalendarState.calendar(month: $month, year: $year, days: $days, selectedDay: $selectedDay, canCleanShiftTypes: $canCleanShiftTypes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalendarImpl &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.year, year) || other.year == year) &&
            const DeepCollectionEquality().equals(other._days, _days) &&
            (identical(other.selectedDay, selectedDay) ||
                other.selectedDay == selectedDay) &&
            (identical(other.canCleanShiftTypes, canCleanShiftTypes) ||
                other.canCleanShiftTypes == canCleanShiftTypes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      month,
      year,
      const DeepCollectionEquality().hash(_days),
      selectedDay,
      canCleanShiftTypes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CalendarImplCopyWith<_$CalendarImpl> get copyWith =>
      __$$CalendarImplCopyWithImpl<_$CalendarImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int month, int year, List<CalendarDay> days,
            CalendarDay? selectedDay, bool canCleanShiftTypes)
        calendar,
    required TResult Function(int month, int year, List<CalendarDay> days,
            List<CalendarDay> changedDays, CalendarDay? selectedDay)
        shiftType,
  }) {
    return calendar(month, year, days, selectedDay, canCleanShiftTypes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int month, int year, List<CalendarDay> days,
            CalendarDay? selectedDay, bool canCleanShiftTypes)?
        calendar,
    TResult? Function(int month, int year, List<CalendarDay> days,
            List<CalendarDay> changedDays, CalendarDay? selectedDay)?
        shiftType,
  }) {
    return calendar?.call(month, year, days, selectedDay, canCleanShiftTypes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int month, int year, List<CalendarDay> days,
            CalendarDay? selectedDay, bool canCleanShiftTypes)?
        calendar,
    TResult Function(int month, int year, List<CalendarDay> days,
            List<CalendarDay> changedDays, CalendarDay? selectedDay)?
        shiftType,
    required TResult orElse(),
  }) {
    if (calendar != null) {
      return calendar(month, year, days, selectedDay, canCleanShiftTypes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Calendar value) calendar,
    required TResult Function(_ShiftType value) shiftType,
  }) {
    return calendar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Calendar value)? calendar,
    TResult? Function(_ShiftType value)? shiftType,
  }) {
    return calendar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Calendar value)? calendar,
    TResult Function(_ShiftType value)? shiftType,
    required TResult orElse(),
  }) {
    if (calendar != null) {
      return calendar(this);
    }
    return orElse();
  }
}

abstract class _Calendar implements CalendarState {
  const factory _Calendar(
      {required final int month,
      required final int year,
      required final List<CalendarDay> days,
      required final CalendarDay? selectedDay,
      required final bool canCleanShiftTypes}) = _$CalendarImpl;

  @override
  int get month;
  @override
  int get year;
  @override
  List<CalendarDay> get days;
  @override
  CalendarDay? get selectedDay;
  bool get canCleanShiftTypes;
  @override
  @JsonKey(ignore: true)
  _$$CalendarImplCopyWith<_$CalendarImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShiftTypeImplCopyWith<$Res>
    implements $CalendarStateCopyWith<$Res> {
  factory _$$ShiftTypeImplCopyWith(
          _$ShiftTypeImpl value, $Res Function(_$ShiftTypeImpl) then) =
      __$$ShiftTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int month,
      int year,
      List<CalendarDay> days,
      List<CalendarDay> changedDays,
      CalendarDay? selectedDay});

  @override
  $CalendarDayCopyWith<$Res>? get selectedDay;
}

/// @nodoc
class __$$ShiftTypeImplCopyWithImpl<$Res>
    extends _$CalendarStateCopyWithImpl<$Res, _$ShiftTypeImpl>
    implements _$$ShiftTypeImplCopyWith<$Res> {
  __$$ShiftTypeImplCopyWithImpl(
      _$ShiftTypeImpl _value, $Res Function(_$ShiftTypeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? month = null,
    Object? year = null,
    Object? days = null,
    Object? changedDays = null,
    Object? selectedDay = freezed,
  }) {
    return _then(_$ShiftTypeImpl(
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      days: null == days
          ? _value._days
          : days // ignore: cast_nullable_to_non_nullable
              as List<CalendarDay>,
      changedDays: null == changedDays
          ? _value._changedDays
          : changedDays // ignore: cast_nullable_to_non_nullable
              as List<CalendarDay>,
      selectedDay: freezed == selectedDay
          ? _value.selectedDay
          : selectedDay // ignore: cast_nullable_to_non_nullable
              as CalendarDay?,
    ));
  }
}

/// @nodoc

class _$ShiftTypeImpl implements _ShiftType {
  const _$ShiftTypeImpl(
      {required this.month,
      required this.year,
      required final List<CalendarDay> days,
      required final List<CalendarDay> changedDays,
      required this.selectedDay})
      : _days = days,
        _changedDays = changedDays;

  @override
  final int month;
  @override
  final int year;
  final List<CalendarDay> _days;
  @override
  List<CalendarDay> get days {
    if (_days is EqualUnmodifiableListView) return _days;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_days);
  }

  final List<CalendarDay> _changedDays;
  @override
  List<CalendarDay> get changedDays {
    if (_changedDays is EqualUnmodifiableListView) return _changedDays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_changedDays);
  }

  @override
  final CalendarDay? selectedDay;

  @override
  String toString() {
    return 'CalendarState.shiftType(month: $month, year: $year, days: $days, changedDays: $changedDays, selectedDay: $selectedDay)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShiftTypeImpl &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.year, year) || other.year == year) &&
            const DeepCollectionEquality().equals(other._days, _days) &&
            const DeepCollectionEquality()
                .equals(other._changedDays, _changedDays) &&
            (identical(other.selectedDay, selectedDay) ||
                other.selectedDay == selectedDay));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      month,
      year,
      const DeepCollectionEquality().hash(_days),
      const DeepCollectionEquality().hash(_changedDays),
      selectedDay);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShiftTypeImplCopyWith<_$ShiftTypeImpl> get copyWith =>
      __$$ShiftTypeImplCopyWithImpl<_$ShiftTypeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int month, int year, List<CalendarDay> days,
            CalendarDay? selectedDay, bool canCleanShiftTypes)
        calendar,
    required TResult Function(int month, int year, List<CalendarDay> days,
            List<CalendarDay> changedDays, CalendarDay? selectedDay)
        shiftType,
  }) {
    return shiftType(month, year, days, changedDays, selectedDay);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int month, int year, List<CalendarDay> days,
            CalendarDay? selectedDay, bool canCleanShiftTypes)?
        calendar,
    TResult? Function(int month, int year, List<CalendarDay> days,
            List<CalendarDay> changedDays, CalendarDay? selectedDay)?
        shiftType,
  }) {
    return shiftType?.call(month, year, days, changedDays, selectedDay);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int month, int year, List<CalendarDay> days,
            CalendarDay? selectedDay, bool canCleanShiftTypes)?
        calendar,
    TResult Function(int month, int year, List<CalendarDay> days,
            List<CalendarDay> changedDays, CalendarDay? selectedDay)?
        shiftType,
    required TResult orElse(),
  }) {
    if (shiftType != null) {
      return shiftType(month, year, days, changedDays, selectedDay);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Calendar value) calendar,
    required TResult Function(_ShiftType value) shiftType,
  }) {
    return shiftType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Calendar value)? calendar,
    TResult? Function(_ShiftType value)? shiftType,
  }) {
    return shiftType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Calendar value)? calendar,
    TResult Function(_ShiftType value)? shiftType,
    required TResult orElse(),
  }) {
    if (shiftType != null) {
      return shiftType(this);
    }
    return orElse();
  }
}

abstract class _ShiftType implements CalendarState {
  const factory _ShiftType(
      {required final int month,
      required final int year,
      required final List<CalendarDay> days,
      required final List<CalendarDay> changedDays,
      required final CalendarDay? selectedDay}) = _$ShiftTypeImpl;

  @override
  int get month;
  @override
  int get year;
  @override
  List<CalendarDay> get days;
  List<CalendarDay> get changedDays;
  @override
  CalendarDay? get selectedDay;
  @override
  @JsonKey(ignore: true)
  _$$ShiftTypeImplCopyWith<_$ShiftTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
