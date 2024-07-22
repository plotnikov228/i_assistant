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
mixin _$DayEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TextNote text) addTextNote,
    required TResult Function(VoiceNote voiceNote) addVoiceNote,
    required TResult Function(Note note) removeNote,
    required TResult Function(bool? nextOrPrev) goToDay,
    required TResult Function(ShiftType shiftType) selectShiftType,
    required TResult Function(Task task) addTask,
    required TResult Function(Task task) selectTask,
    required TResult Function(Task task) removeTask,
    required TResult Function(Task task) addBirthday,
    required TResult Function(Task task) removeBirthday,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TextNote text)? addTextNote,
    TResult? Function(VoiceNote voiceNote)? addVoiceNote,
    TResult? Function(Note note)? removeNote,
    TResult? Function(bool? nextOrPrev)? goToDay,
    TResult? Function(ShiftType shiftType)? selectShiftType,
    TResult? Function(Task task)? addTask,
    TResult? Function(Task task)? selectTask,
    TResult? Function(Task task)? removeTask,
    TResult? Function(Task task)? addBirthday,
    TResult? Function(Task task)? removeBirthday,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TextNote text)? addTextNote,
    TResult Function(VoiceNote voiceNote)? addVoiceNote,
    TResult Function(Note note)? removeNote,
    TResult Function(bool? nextOrPrev)? goToDay,
    TResult Function(ShiftType shiftType)? selectShiftType,
    TResult Function(Task task)? addTask,
    TResult Function(Task task)? selectTask,
    TResult Function(Task task)? removeTask,
    TResult Function(Task task)? addBirthday,
    TResult Function(Task task)? removeBirthday,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddTextNote value) addTextNote,
    required TResult Function(_AddVoiceNote value) addVoiceNote,
    required TResult Function(_RemoveVoiceNote value) removeNote,
    required TResult Function(_GoToToday value) goToDay,
    required TResult Function(_SelectShiftType value) selectShiftType,
    required TResult Function(_AddTask value) addTask,
    required TResult Function(_SelectTask value) selectTask,
    required TResult Function(_RemoveTask value) removeTask,
    required TResult Function(_AddBirthday value) addBirthday,
    required TResult Function(_RemoveBirthday value) removeBirthday,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddTextNote value)? addTextNote,
    TResult? Function(_AddVoiceNote value)? addVoiceNote,
    TResult? Function(_RemoveVoiceNote value)? removeNote,
    TResult? Function(_GoToToday value)? goToDay,
    TResult? Function(_SelectShiftType value)? selectShiftType,
    TResult? Function(_AddTask value)? addTask,
    TResult? Function(_SelectTask value)? selectTask,
    TResult? Function(_RemoveTask value)? removeTask,
    TResult? Function(_AddBirthday value)? addBirthday,
    TResult? Function(_RemoveBirthday value)? removeBirthday,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddTextNote value)? addTextNote,
    TResult Function(_AddVoiceNote value)? addVoiceNote,
    TResult Function(_RemoveVoiceNote value)? removeNote,
    TResult Function(_GoToToday value)? goToDay,
    TResult Function(_SelectShiftType value)? selectShiftType,
    TResult Function(_AddTask value)? addTask,
    TResult Function(_SelectTask value)? selectTask,
    TResult Function(_RemoveTask value)? removeTask,
    TResult Function(_AddBirthday value)? addBirthday,
    TResult Function(_RemoveBirthday value)? removeBirthday,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DayEventCopyWith<$Res> {
  factory $DayEventCopyWith(DayEvent value, $Res Function(DayEvent) then) =
      _$DayEventCopyWithImpl<$Res, DayEvent>;
}

/// @nodoc
class _$DayEventCopyWithImpl<$Res, $Val extends DayEvent>
    implements $DayEventCopyWith<$Res> {
  _$DayEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AddTextNoteImplCopyWith<$Res> {
  factory _$$AddTextNoteImplCopyWith(
          _$AddTextNoteImpl value, $Res Function(_$AddTextNoteImpl) then) =
      __$$AddTextNoteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TextNote text});

  $TextNoteCopyWith<$Res> get text;
}

/// @nodoc
class __$$AddTextNoteImplCopyWithImpl<$Res>
    extends _$DayEventCopyWithImpl<$Res, _$AddTextNoteImpl>
    implements _$$AddTextNoteImplCopyWith<$Res> {
  __$$AddTextNoteImplCopyWithImpl(
      _$AddTextNoteImpl _value, $Res Function(_$AddTextNoteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$AddTextNoteImpl(
      null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as TextNote,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TextNoteCopyWith<$Res> get text {
    return $TextNoteCopyWith<$Res>(_value.text, (value) {
      return _then(_value.copyWith(text: value));
    });
  }
}

/// @nodoc

class _$AddTextNoteImpl implements _AddTextNote {
  const _$AddTextNoteImpl(this.text);

  @override
  final TextNote text;

  @override
  String toString() {
    return 'DayEvent.addTextNote(text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return false ?? identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTextNoteImpl &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddTextNoteImplCopyWith<_$AddTextNoteImpl> get copyWith =>
      __$$AddTextNoteImplCopyWithImpl<_$AddTextNoteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TextNote text) addTextNote,
    required TResult Function(VoiceNote voiceNote) addVoiceNote,
    required TResult Function(Note note) removeNote,
    required TResult Function(bool? nextOrPrev) goToDay,
    required TResult Function(ShiftType shiftType) selectShiftType,
    required TResult Function(Task task) addTask,
    required TResult Function(Task task) selectTask,
    required TResult Function(Task task) removeTask,
    required TResult Function(Task task) addBirthday,
    required TResult Function(Task task) removeBirthday,
  }) {
    return addTextNote(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TextNote text)? addTextNote,
    TResult? Function(VoiceNote voiceNote)? addVoiceNote,
    TResult? Function(Note note)? removeNote,
    TResult? Function(bool? nextOrPrev)? goToDay,
    TResult? Function(ShiftType shiftType)? selectShiftType,
    TResult? Function(Task task)? addTask,
    TResult? Function(Task task)? selectTask,
    TResult? Function(Task task)? removeTask,
    TResult? Function(Task task)? addBirthday,
    TResult? Function(Task task)? removeBirthday,
  }) {
    return addTextNote?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TextNote text)? addTextNote,
    TResult Function(VoiceNote voiceNote)? addVoiceNote,
    TResult Function(Note note)? removeNote,
    TResult Function(bool? nextOrPrev)? goToDay,
    TResult Function(ShiftType shiftType)? selectShiftType,
    TResult Function(Task task)? addTask,
    TResult Function(Task task)? selectTask,
    TResult Function(Task task)? removeTask,
    TResult Function(Task task)? addBirthday,
    TResult Function(Task task)? removeBirthday,
    required TResult orElse(),
  }) {
    if (addTextNote != null) {
      return addTextNote(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddTextNote value) addTextNote,
    required TResult Function(_AddVoiceNote value) addVoiceNote,
    required TResult Function(_RemoveVoiceNote value) removeNote,
    required TResult Function(_GoToToday value) goToDay,
    required TResult Function(_SelectShiftType value) selectShiftType,
    required TResult Function(_AddTask value) addTask,
    required TResult Function(_SelectTask value) selectTask,
    required TResult Function(_RemoveTask value) removeTask,
    required TResult Function(_AddBirthday value) addBirthday,
    required TResult Function(_RemoveBirthday value) removeBirthday,
  }) {
    return addTextNote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddTextNote value)? addTextNote,
    TResult? Function(_AddVoiceNote value)? addVoiceNote,
    TResult? Function(_RemoveVoiceNote value)? removeNote,
    TResult? Function(_GoToToday value)? goToDay,
    TResult? Function(_SelectShiftType value)? selectShiftType,
    TResult? Function(_AddTask value)? addTask,
    TResult? Function(_SelectTask value)? selectTask,
    TResult? Function(_RemoveTask value)? removeTask,
    TResult? Function(_AddBirthday value)? addBirthday,
    TResult? Function(_RemoveBirthday value)? removeBirthday,
  }) {
    return addTextNote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddTextNote value)? addTextNote,
    TResult Function(_AddVoiceNote value)? addVoiceNote,
    TResult Function(_RemoveVoiceNote value)? removeNote,
    TResult Function(_GoToToday value)? goToDay,
    TResult Function(_SelectShiftType value)? selectShiftType,
    TResult Function(_AddTask value)? addTask,
    TResult Function(_SelectTask value)? selectTask,
    TResult Function(_RemoveTask value)? removeTask,
    TResult Function(_AddBirthday value)? addBirthday,
    TResult Function(_RemoveBirthday value)? removeBirthday,
    required TResult orElse(),
  }) {
    if (addTextNote != null) {
      return addTextNote(this);
    }
    return orElse();
  }
}

abstract class _AddTextNote implements DayEvent {
  const factory _AddTextNote(final TextNote text) = _$AddTextNoteImpl;

  TextNote get text;
  @JsonKey(ignore: true)
  _$$AddTextNoteImplCopyWith<_$AddTextNoteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddVoiceNoteImplCopyWith<$Res> {
  factory _$$AddVoiceNoteImplCopyWith(
          _$AddVoiceNoteImpl value, $Res Function(_$AddVoiceNoteImpl) then) =
      __$$AddVoiceNoteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({VoiceNote voiceNote});

  $VoiceNoteCopyWith<$Res> get voiceNote;
}

/// @nodoc
class __$$AddVoiceNoteImplCopyWithImpl<$Res>
    extends _$DayEventCopyWithImpl<$Res, _$AddVoiceNoteImpl>
    implements _$$AddVoiceNoteImplCopyWith<$Res> {
  __$$AddVoiceNoteImplCopyWithImpl(
      _$AddVoiceNoteImpl _value, $Res Function(_$AddVoiceNoteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? voiceNote = null,
  }) {
    return _then(_$AddVoiceNoteImpl(
      null == voiceNote
          ? _value.voiceNote
          : voiceNote // ignore: cast_nullable_to_non_nullable
              as VoiceNote,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $VoiceNoteCopyWith<$Res> get voiceNote {
    return $VoiceNoteCopyWith<$Res>(_value.voiceNote, (value) {
      return _then(_value.copyWith(voiceNote: value));
    });
  }
}

/// @nodoc

class _$AddVoiceNoteImpl implements _AddVoiceNote {
  const _$AddVoiceNoteImpl(this.voiceNote);

  @override
  final VoiceNote voiceNote;

  @override
  String toString() {
    return 'DayEvent.addVoiceNote(voiceNote: $voiceNote)';
  }

  @override
  bool operator ==(Object other) {
    return false ?? identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddVoiceNoteImpl &&
            (identical(other.voiceNote, voiceNote) ||
                other.voiceNote == voiceNote));
  }

  @override
  int get hashCode => Object.hash(runtimeType, voiceNote);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddVoiceNoteImplCopyWith<_$AddVoiceNoteImpl> get copyWith =>
      __$$AddVoiceNoteImplCopyWithImpl<_$AddVoiceNoteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TextNote text) addTextNote,
    required TResult Function(VoiceNote voiceNote) addVoiceNote,
    required TResult Function(Note note) removeNote,
    required TResult Function(bool? nextOrPrev) goToDay,
    required TResult Function(ShiftType shiftType) selectShiftType,
    required TResult Function(Task task) addTask,
    required TResult Function(Task task) selectTask,
    required TResult Function(Task task) removeTask,
    required TResult Function(Task task) addBirthday,
    required TResult Function(Task task) removeBirthday,
  }) {
    return addVoiceNote(voiceNote);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TextNote text)? addTextNote,
    TResult? Function(VoiceNote voiceNote)? addVoiceNote,
    TResult? Function(Note note)? removeNote,
    TResult? Function(bool? nextOrPrev)? goToDay,
    TResult? Function(ShiftType shiftType)? selectShiftType,
    TResult? Function(Task task)? addTask,
    TResult? Function(Task task)? selectTask,
    TResult? Function(Task task)? removeTask,
    TResult? Function(Task task)? addBirthday,
    TResult? Function(Task task)? removeBirthday,
  }) {
    return addVoiceNote?.call(voiceNote);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TextNote text)? addTextNote,
    TResult Function(VoiceNote voiceNote)? addVoiceNote,
    TResult Function(Note note)? removeNote,
    TResult Function(bool? nextOrPrev)? goToDay,
    TResult Function(ShiftType shiftType)? selectShiftType,
    TResult Function(Task task)? addTask,
    TResult Function(Task task)? selectTask,
    TResult Function(Task task)? removeTask,
    TResult Function(Task task)? addBirthday,
    TResult Function(Task task)? removeBirthday,
    required TResult orElse(),
  }) {
    if (addVoiceNote != null) {
      return addVoiceNote(voiceNote);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddTextNote value) addTextNote,
    required TResult Function(_AddVoiceNote value) addVoiceNote,
    required TResult Function(_RemoveVoiceNote value) removeNote,
    required TResult Function(_GoToToday value) goToDay,
    required TResult Function(_SelectShiftType value) selectShiftType,
    required TResult Function(_AddTask value) addTask,
    required TResult Function(_SelectTask value) selectTask,
    required TResult Function(_RemoveTask value) removeTask,
    required TResult Function(_AddBirthday value) addBirthday,
    required TResult Function(_RemoveBirthday value) removeBirthday,
  }) {
    return addVoiceNote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddTextNote value)? addTextNote,
    TResult? Function(_AddVoiceNote value)? addVoiceNote,
    TResult? Function(_RemoveVoiceNote value)? removeNote,
    TResult? Function(_GoToToday value)? goToDay,
    TResult? Function(_SelectShiftType value)? selectShiftType,
    TResult? Function(_AddTask value)? addTask,
    TResult? Function(_SelectTask value)? selectTask,
    TResult? Function(_RemoveTask value)? removeTask,
    TResult? Function(_AddBirthday value)? addBirthday,
    TResult? Function(_RemoveBirthday value)? removeBirthday,
  }) {
    return addVoiceNote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddTextNote value)? addTextNote,
    TResult Function(_AddVoiceNote value)? addVoiceNote,
    TResult Function(_RemoveVoiceNote value)? removeNote,
    TResult Function(_GoToToday value)? goToDay,
    TResult Function(_SelectShiftType value)? selectShiftType,
    TResult Function(_AddTask value)? addTask,
    TResult Function(_SelectTask value)? selectTask,
    TResult Function(_RemoveTask value)? removeTask,
    TResult Function(_AddBirthday value)? addBirthday,
    TResult Function(_RemoveBirthday value)? removeBirthday,
    required TResult orElse(),
  }) {
    if (addVoiceNote != null) {
      return addVoiceNote(this);
    }
    return orElse();
  }
}

abstract class _AddVoiceNote implements DayEvent {
  const factory _AddVoiceNote(final VoiceNote voiceNote) = _$AddVoiceNoteImpl;

  VoiceNote get voiceNote;
  @JsonKey(ignore: true)
  _$$AddVoiceNoteImplCopyWith<_$AddVoiceNoteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveVoiceNoteImplCopyWith<$Res> {
  factory _$$RemoveVoiceNoteImplCopyWith(_$RemoveVoiceNoteImpl value,
          $Res Function(_$RemoveVoiceNoteImpl) then) =
      __$$RemoveVoiceNoteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Note note});

  $NoteCopyWith<$Res> get note;
}

/// @nodoc
class __$$RemoveVoiceNoteImplCopyWithImpl<$Res>
    extends _$DayEventCopyWithImpl<$Res, _$RemoveVoiceNoteImpl>
    implements _$$RemoveVoiceNoteImplCopyWith<$Res> {
  __$$RemoveVoiceNoteImplCopyWithImpl(
      _$RemoveVoiceNoteImpl _value, $Res Function(_$RemoveVoiceNoteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? note = null,
  }) {
    return _then(_$RemoveVoiceNoteImpl(
      null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as Note,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $NoteCopyWith<$Res> get note {
    return $NoteCopyWith<$Res>(_value.note, (value) {
      return _then(_value.copyWith(note: value));
    });
  }
}

/// @nodoc

class _$RemoveVoiceNoteImpl implements _RemoveVoiceNote {
  const _$RemoveVoiceNoteImpl(this.note);

  @override
  final Note note;

  @override
  String toString() {
    return 'DayEvent.removeNote(note: $note)';
  }

  @override
  bool operator ==(Object other) {
    return false ?? identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveVoiceNoteImpl &&
            (identical(other.note, note) || other.note == note));
  }

  @override
  int get hashCode => Object.hash(runtimeType, note);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveVoiceNoteImplCopyWith<_$RemoveVoiceNoteImpl> get copyWith =>
      __$$RemoveVoiceNoteImplCopyWithImpl<_$RemoveVoiceNoteImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TextNote text) addTextNote,
    required TResult Function(VoiceNote voiceNote) addVoiceNote,
    required TResult Function(Note note) removeNote,
    required TResult Function(bool? nextOrPrev) goToDay,
    required TResult Function(ShiftType shiftType) selectShiftType,
    required TResult Function(Task task) addTask,
    required TResult Function(Task task) selectTask,
    required TResult Function(Task task) removeTask,
    required TResult Function(Task task) addBirthday,
    required TResult Function(Task task) removeBirthday,
  }) {
    return removeNote(note);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TextNote text)? addTextNote,
    TResult? Function(VoiceNote voiceNote)? addVoiceNote,
    TResult? Function(Note note)? removeNote,
    TResult? Function(bool? nextOrPrev)? goToDay,
    TResult? Function(ShiftType shiftType)? selectShiftType,
    TResult? Function(Task task)? addTask,
    TResult? Function(Task task)? selectTask,
    TResult? Function(Task task)? removeTask,
    TResult? Function(Task task)? addBirthday,
    TResult? Function(Task task)? removeBirthday,
  }) {
    return removeNote?.call(note);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TextNote text)? addTextNote,
    TResult Function(VoiceNote voiceNote)? addVoiceNote,
    TResult Function(Note note)? removeNote,
    TResult Function(bool? nextOrPrev)? goToDay,
    TResult Function(ShiftType shiftType)? selectShiftType,
    TResult Function(Task task)? addTask,
    TResult Function(Task task)? selectTask,
    TResult Function(Task task)? removeTask,
    TResult Function(Task task)? addBirthday,
    TResult Function(Task task)? removeBirthday,
    required TResult orElse(),
  }) {
    if (removeNote != null) {
      return removeNote(note);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddTextNote value) addTextNote,
    required TResult Function(_AddVoiceNote value) addVoiceNote,
    required TResult Function(_RemoveVoiceNote value) removeNote,
    required TResult Function(_GoToToday value) goToDay,
    required TResult Function(_SelectShiftType value) selectShiftType,
    required TResult Function(_AddTask value) addTask,
    required TResult Function(_SelectTask value) selectTask,
    required TResult Function(_RemoveTask value) removeTask,
    required TResult Function(_AddBirthday value) addBirthday,
    required TResult Function(_RemoveBirthday value) removeBirthday,
  }) {
    return removeNote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddTextNote value)? addTextNote,
    TResult? Function(_AddVoiceNote value)? addVoiceNote,
    TResult? Function(_RemoveVoiceNote value)? removeNote,
    TResult? Function(_GoToToday value)? goToDay,
    TResult? Function(_SelectShiftType value)? selectShiftType,
    TResult? Function(_AddTask value)? addTask,
    TResult? Function(_SelectTask value)? selectTask,
    TResult? Function(_RemoveTask value)? removeTask,
    TResult? Function(_AddBirthday value)? addBirthday,
    TResult? Function(_RemoveBirthday value)? removeBirthday,
  }) {
    return removeNote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddTextNote value)? addTextNote,
    TResult Function(_AddVoiceNote value)? addVoiceNote,
    TResult Function(_RemoveVoiceNote value)? removeNote,
    TResult Function(_GoToToday value)? goToDay,
    TResult Function(_SelectShiftType value)? selectShiftType,
    TResult Function(_AddTask value)? addTask,
    TResult Function(_SelectTask value)? selectTask,
    TResult Function(_RemoveTask value)? removeTask,
    TResult Function(_AddBirthday value)? addBirthday,
    TResult Function(_RemoveBirthday value)? removeBirthday,
    required TResult orElse(),
  }) {
    if (removeNote != null) {
      return removeNote(this);
    }
    return orElse();
  }
}

abstract class _RemoveVoiceNote implements DayEvent {
  const factory _RemoveVoiceNote(final Note note) = _$RemoveVoiceNoteImpl;

  Note get note;
  @JsonKey(ignore: true)
  _$$RemoveVoiceNoteImplCopyWith<_$RemoveVoiceNoteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GoToTodayImplCopyWith<$Res> {
  factory _$$GoToTodayImplCopyWith(
          _$GoToTodayImpl value, $Res Function(_$GoToTodayImpl) then) =
      __$$GoToTodayImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool? nextOrPrev});
}

/// @nodoc
class __$$GoToTodayImplCopyWithImpl<$Res>
    extends _$DayEventCopyWithImpl<$Res, _$GoToTodayImpl>
    implements _$$GoToTodayImplCopyWith<$Res> {
  __$$GoToTodayImplCopyWithImpl(
      _$GoToTodayImpl _value, $Res Function(_$GoToTodayImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nextOrPrev = freezed,
  }) {
    return _then(_$GoToTodayImpl(
      freezed == nextOrPrev
          ? _value.nextOrPrev
          : nextOrPrev // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$GoToTodayImpl implements _GoToToday {
  const _$GoToTodayImpl([this.nextOrPrev]);

  @override
  final bool? nextOrPrev;

  @override
  String toString() {
    return 'DayEvent.goToDay(nextOrPrev: $nextOrPrev)';
  }

  @override
  bool operator ==(Object other) {
    return false ?? identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoToTodayImpl &&
            (identical(other.nextOrPrev, nextOrPrev) ||
                other.nextOrPrev == nextOrPrev));
  }

  @override
  int get hashCode => Object.hash(runtimeType, nextOrPrev);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GoToTodayImplCopyWith<_$GoToTodayImpl> get copyWith =>
      __$$GoToTodayImplCopyWithImpl<_$GoToTodayImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TextNote text) addTextNote,
    required TResult Function(VoiceNote voiceNote) addVoiceNote,
    required TResult Function(Note note) removeNote,
    required TResult Function(bool? nextOrPrev) goToDay,
    required TResult Function(ShiftType shiftType) selectShiftType,
    required TResult Function(Task task) addTask,
    required TResult Function(Task task) selectTask,
    required TResult Function(Task task) removeTask,
    required TResult Function(Task task) addBirthday,
    required TResult Function(Task task) removeBirthday,
  }) {
    return goToDay(nextOrPrev);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TextNote text)? addTextNote,
    TResult? Function(VoiceNote voiceNote)? addVoiceNote,
    TResult? Function(Note note)? removeNote,
    TResult? Function(bool? nextOrPrev)? goToDay,
    TResult? Function(ShiftType shiftType)? selectShiftType,
    TResult? Function(Task task)? addTask,
    TResult? Function(Task task)? selectTask,
    TResult? Function(Task task)? removeTask,
    TResult? Function(Task task)? addBirthday,
    TResult? Function(Task task)? removeBirthday,
  }) {
    return goToDay?.call(nextOrPrev);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TextNote text)? addTextNote,
    TResult Function(VoiceNote voiceNote)? addVoiceNote,
    TResult Function(Note note)? removeNote,
    TResult Function(bool? nextOrPrev)? goToDay,
    TResult Function(ShiftType shiftType)? selectShiftType,
    TResult Function(Task task)? addTask,
    TResult Function(Task task)? selectTask,
    TResult Function(Task task)? removeTask,
    TResult Function(Task task)? addBirthday,
    TResult Function(Task task)? removeBirthday,
    required TResult orElse(),
  }) {
    if (goToDay != null) {
      return goToDay(nextOrPrev);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddTextNote value) addTextNote,
    required TResult Function(_AddVoiceNote value) addVoiceNote,
    required TResult Function(_RemoveVoiceNote value) removeNote,
    required TResult Function(_GoToToday value) goToDay,
    required TResult Function(_SelectShiftType value) selectShiftType,
    required TResult Function(_AddTask value) addTask,
    required TResult Function(_SelectTask value) selectTask,
    required TResult Function(_RemoveTask value) removeTask,
    required TResult Function(_AddBirthday value) addBirthday,
    required TResult Function(_RemoveBirthday value) removeBirthday,
  }) {
    return goToDay(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddTextNote value)? addTextNote,
    TResult? Function(_AddVoiceNote value)? addVoiceNote,
    TResult? Function(_RemoveVoiceNote value)? removeNote,
    TResult? Function(_GoToToday value)? goToDay,
    TResult? Function(_SelectShiftType value)? selectShiftType,
    TResult? Function(_AddTask value)? addTask,
    TResult? Function(_SelectTask value)? selectTask,
    TResult? Function(_RemoveTask value)? removeTask,
    TResult? Function(_AddBirthday value)? addBirthday,
    TResult? Function(_RemoveBirthday value)? removeBirthday,
  }) {
    return goToDay?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddTextNote value)? addTextNote,
    TResult Function(_AddVoiceNote value)? addVoiceNote,
    TResult Function(_RemoveVoiceNote value)? removeNote,
    TResult Function(_GoToToday value)? goToDay,
    TResult Function(_SelectShiftType value)? selectShiftType,
    TResult Function(_AddTask value)? addTask,
    TResult Function(_SelectTask value)? selectTask,
    TResult Function(_RemoveTask value)? removeTask,
    TResult Function(_AddBirthday value)? addBirthday,
    TResult Function(_RemoveBirthday value)? removeBirthday,
    required TResult orElse(),
  }) {
    if (goToDay != null) {
      return goToDay(this);
    }
    return orElse();
  }
}

abstract class _GoToToday implements DayEvent {
  const factory _GoToToday([final bool? nextOrPrev]) = _$GoToTodayImpl;

  bool? get nextOrPrev;
  @JsonKey(ignore: true)
  _$$GoToTodayImplCopyWith<_$GoToTodayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectShiftTypeImplCopyWith<$Res> {
  factory _$$SelectShiftTypeImplCopyWith(_$SelectShiftTypeImpl value,
          $Res Function(_$SelectShiftTypeImpl) then) =
      __$$SelectShiftTypeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ShiftType shiftType});
}

/// @nodoc
class __$$SelectShiftTypeImplCopyWithImpl<$Res>
    extends _$DayEventCopyWithImpl<$Res, _$SelectShiftTypeImpl>
    implements _$$SelectShiftTypeImplCopyWith<$Res> {
  __$$SelectShiftTypeImplCopyWithImpl(
      _$SelectShiftTypeImpl _value, $Res Function(_$SelectShiftTypeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shiftType = null,
  }) {
    return _then(_$SelectShiftTypeImpl(
      null == shiftType
          ? _value.shiftType
          : shiftType // ignore: cast_nullable_to_non_nullable
              as ShiftType,
    ));
  }
}

/// @nodoc

class _$SelectShiftTypeImpl implements _SelectShiftType {
  const _$SelectShiftTypeImpl(this.shiftType);

  @override
  final ShiftType shiftType;

  @override
  String toString() {
    return 'DayEvent.selectShiftType(shiftType: $shiftType)';
  }

  @override
  bool operator ==(Object other) {
    return false ?? identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectShiftTypeImpl &&
            (identical(other.shiftType, shiftType) ||
                other.shiftType == shiftType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, shiftType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectShiftTypeImplCopyWith<_$SelectShiftTypeImpl> get copyWith =>
      __$$SelectShiftTypeImplCopyWithImpl<_$SelectShiftTypeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TextNote text) addTextNote,
    required TResult Function(VoiceNote voiceNote) addVoiceNote,
    required TResult Function(Note note) removeNote,
    required TResult Function(bool? nextOrPrev) goToDay,
    required TResult Function(ShiftType shiftType) selectShiftType,
    required TResult Function(Task task) addTask,
    required TResult Function(Task task) selectTask,
    required TResult Function(Task task) removeTask,
    required TResult Function(Task task) addBirthday,
    required TResult Function(Task task) removeBirthday,
  }) {
    return selectShiftType(shiftType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TextNote text)? addTextNote,
    TResult? Function(VoiceNote voiceNote)? addVoiceNote,
    TResult? Function(Note note)? removeNote,
    TResult? Function(bool? nextOrPrev)? goToDay,
    TResult? Function(ShiftType shiftType)? selectShiftType,
    TResult? Function(Task task)? addTask,
    TResult? Function(Task task)? selectTask,
    TResult? Function(Task task)? removeTask,
    TResult? Function(Task task)? addBirthday,
    TResult? Function(Task task)? removeBirthday,
  }) {
    return selectShiftType?.call(shiftType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TextNote text)? addTextNote,
    TResult Function(VoiceNote voiceNote)? addVoiceNote,
    TResult Function(Note note)? removeNote,
    TResult Function(bool? nextOrPrev)? goToDay,
    TResult Function(ShiftType shiftType)? selectShiftType,
    TResult Function(Task task)? addTask,
    TResult Function(Task task)? selectTask,
    TResult Function(Task task)? removeTask,
    TResult Function(Task task)? addBirthday,
    TResult Function(Task task)? removeBirthday,
    required TResult orElse(),
  }) {
    if (selectShiftType != null) {
      return selectShiftType(shiftType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddTextNote value) addTextNote,
    required TResult Function(_AddVoiceNote value) addVoiceNote,
    required TResult Function(_RemoveVoiceNote value) removeNote,
    required TResult Function(_GoToToday value) goToDay,
    required TResult Function(_SelectShiftType value) selectShiftType,
    required TResult Function(_AddTask value) addTask,
    required TResult Function(_SelectTask value) selectTask,
    required TResult Function(_RemoveTask value) removeTask,
    required TResult Function(_AddBirthday value) addBirthday,
    required TResult Function(_RemoveBirthday value) removeBirthday,
  }) {
    return selectShiftType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddTextNote value)? addTextNote,
    TResult? Function(_AddVoiceNote value)? addVoiceNote,
    TResult? Function(_RemoveVoiceNote value)? removeNote,
    TResult? Function(_GoToToday value)? goToDay,
    TResult? Function(_SelectShiftType value)? selectShiftType,
    TResult? Function(_AddTask value)? addTask,
    TResult? Function(_SelectTask value)? selectTask,
    TResult? Function(_RemoveTask value)? removeTask,
    TResult? Function(_AddBirthday value)? addBirthday,
    TResult? Function(_RemoveBirthday value)? removeBirthday,
  }) {
    return selectShiftType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddTextNote value)? addTextNote,
    TResult Function(_AddVoiceNote value)? addVoiceNote,
    TResult Function(_RemoveVoiceNote value)? removeNote,
    TResult Function(_GoToToday value)? goToDay,
    TResult Function(_SelectShiftType value)? selectShiftType,
    TResult Function(_AddTask value)? addTask,
    TResult Function(_SelectTask value)? selectTask,
    TResult Function(_RemoveTask value)? removeTask,
    TResult Function(_AddBirthday value)? addBirthday,
    TResult Function(_RemoveBirthday value)? removeBirthday,
    required TResult orElse(),
  }) {
    if (selectShiftType != null) {
      return selectShiftType(this);
    }
    return orElse();
  }
}

abstract class _SelectShiftType implements DayEvent {
  const factory _SelectShiftType(final ShiftType shiftType) =
      _$SelectShiftTypeImpl;

  ShiftType get shiftType;
  @JsonKey(ignore: true)
  _$$SelectShiftTypeImplCopyWith<_$SelectShiftTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddTaskImplCopyWith<$Res> {
  factory _$$AddTaskImplCopyWith(
          _$AddTaskImpl value, $Res Function(_$AddTaskImpl) then) =
      __$$AddTaskImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Task task});

  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class __$$AddTaskImplCopyWithImpl<$Res>
    extends _$DayEventCopyWithImpl<$Res, _$AddTaskImpl>
    implements _$$AddTaskImplCopyWith<$Res> {
  __$$AddTaskImplCopyWithImpl(
      _$AddTaskImpl _value, $Res Function(_$AddTaskImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$AddTaskImpl(
      null == task
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

class _$AddTaskImpl implements _AddTask {
  const _$AddTaskImpl(this.task);

  @override
  final Task task;

  @override
  String toString() {
    return 'DayEvent.addTask(task: $task)';
  }

  @override
  bool operator ==(Object other) {
    return false ?? identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTaskImpl &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddTaskImplCopyWith<_$AddTaskImpl> get copyWith =>
      __$$AddTaskImplCopyWithImpl<_$AddTaskImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TextNote text) addTextNote,
    required TResult Function(VoiceNote voiceNote) addVoiceNote,
    required TResult Function(Note note) removeNote,
    required TResult Function(bool? nextOrPrev) goToDay,
    required TResult Function(ShiftType shiftType) selectShiftType,
    required TResult Function(Task task) addTask,
    required TResult Function(Task task) selectTask,
    required TResult Function(Task task) removeTask,
    required TResult Function(Task task) addBirthday,
    required TResult Function(Task task) removeBirthday,
  }) {
    return addTask(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TextNote text)? addTextNote,
    TResult? Function(VoiceNote voiceNote)? addVoiceNote,
    TResult? Function(Note note)? removeNote,
    TResult? Function(bool? nextOrPrev)? goToDay,
    TResult? Function(ShiftType shiftType)? selectShiftType,
    TResult? Function(Task task)? addTask,
    TResult? Function(Task task)? selectTask,
    TResult? Function(Task task)? removeTask,
    TResult? Function(Task task)? addBirthday,
    TResult? Function(Task task)? removeBirthday,
  }) {
    return addTask?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TextNote text)? addTextNote,
    TResult Function(VoiceNote voiceNote)? addVoiceNote,
    TResult Function(Note note)? removeNote,
    TResult Function(bool? nextOrPrev)? goToDay,
    TResult Function(ShiftType shiftType)? selectShiftType,
    TResult Function(Task task)? addTask,
    TResult Function(Task task)? selectTask,
    TResult Function(Task task)? removeTask,
    TResult Function(Task task)? addBirthday,
    TResult Function(Task task)? removeBirthday,
    required TResult orElse(),
  }) {
    if (addTask != null) {
      return addTask(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddTextNote value) addTextNote,
    required TResult Function(_AddVoiceNote value) addVoiceNote,
    required TResult Function(_RemoveVoiceNote value) removeNote,
    required TResult Function(_GoToToday value) goToDay,
    required TResult Function(_SelectShiftType value) selectShiftType,
    required TResult Function(_AddTask value) addTask,
    required TResult Function(_SelectTask value) selectTask,
    required TResult Function(_RemoveTask value) removeTask,
    required TResult Function(_AddBirthday value) addBirthday,
    required TResult Function(_RemoveBirthday value) removeBirthday,
  }) {
    return addTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddTextNote value)? addTextNote,
    TResult? Function(_AddVoiceNote value)? addVoiceNote,
    TResult? Function(_RemoveVoiceNote value)? removeNote,
    TResult? Function(_GoToToday value)? goToDay,
    TResult? Function(_SelectShiftType value)? selectShiftType,
    TResult? Function(_AddTask value)? addTask,
    TResult? Function(_SelectTask value)? selectTask,
    TResult? Function(_RemoveTask value)? removeTask,
    TResult? Function(_AddBirthday value)? addBirthday,
    TResult? Function(_RemoveBirthday value)? removeBirthday,
  }) {
    return addTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddTextNote value)? addTextNote,
    TResult Function(_AddVoiceNote value)? addVoiceNote,
    TResult Function(_RemoveVoiceNote value)? removeNote,
    TResult Function(_GoToToday value)? goToDay,
    TResult Function(_SelectShiftType value)? selectShiftType,
    TResult Function(_AddTask value)? addTask,
    TResult Function(_SelectTask value)? selectTask,
    TResult Function(_RemoveTask value)? removeTask,
    TResult Function(_AddBirthday value)? addBirthday,
    TResult Function(_RemoveBirthday value)? removeBirthday,
    required TResult orElse(),
  }) {
    if (addTask != null) {
      return addTask(this);
    }
    return orElse();
  }
}

abstract class _AddTask implements DayEvent {
  const factory _AddTask(final Task task) = _$AddTaskImpl;

  Task get task;
  @JsonKey(ignore: true)
  _$$AddTaskImplCopyWith<_$AddTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectTaskImplCopyWith<$Res> {
  factory _$$SelectTaskImplCopyWith(
          _$SelectTaskImpl value, $Res Function(_$SelectTaskImpl) then) =
      __$$SelectTaskImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Task task});

  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class __$$SelectTaskImplCopyWithImpl<$Res>
    extends _$DayEventCopyWithImpl<$Res, _$SelectTaskImpl>
    implements _$$SelectTaskImplCopyWith<$Res> {
  __$$SelectTaskImplCopyWithImpl(
      _$SelectTaskImpl _value, $Res Function(_$SelectTaskImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$SelectTaskImpl(
      null == task
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

class _$SelectTaskImpl implements _SelectTask {
  const _$SelectTaskImpl(this.task);

  @override
  final Task task;

  @override
  String toString() {
    return 'DayEvent.selectTask(task: $task)';
  }

  @override
  bool operator ==(Object other) {
    return false ?? identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectTaskImpl &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectTaskImplCopyWith<_$SelectTaskImpl> get copyWith =>
      __$$SelectTaskImplCopyWithImpl<_$SelectTaskImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TextNote text) addTextNote,
    required TResult Function(VoiceNote voiceNote) addVoiceNote,
    required TResult Function(Note note) removeNote,
    required TResult Function(bool? nextOrPrev) goToDay,
    required TResult Function(ShiftType shiftType) selectShiftType,
    required TResult Function(Task task) addTask,
    required TResult Function(Task task) selectTask,
    required TResult Function(Task task) removeTask,
    required TResult Function(Task task) addBirthday,
    required TResult Function(Task task) removeBirthday,
  }) {
    return selectTask(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TextNote text)? addTextNote,
    TResult? Function(VoiceNote voiceNote)? addVoiceNote,
    TResult? Function(Note note)? removeNote,
    TResult? Function(bool? nextOrPrev)? goToDay,
    TResult? Function(ShiftType shiftType)? selectShiftType,
    TResult? Function(Task task)? addTask,
    TResult? Function(Task task)? selectTask,
    TResult? Function(Task task)? removeTask,
    TResult? Function(Task task)? addBirthday,
    TResult? Function(Task task)? removeBirthday,
  }) {
    return selectTask?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TextNote text)? addTextNote,
    TResult Function(VoiceNote voiceNote)? addVoiceNote,
    TResult Function(Note note)? removeNote,
    TResult Function(bool? nextOrPrev)? goToDay,
    TResult Function(ShiftType shiftType)? selectShiftType,
    TResult Function(Task task)? addTask,
    TResult Function(Task task)? selectTask,
    TResult Function(Task task)? removeTask,
    TResult Function(Task task)? addBirthday,
    TResult Function(Task task)? removeBirthday,
    required TResult orElse(),
  }) {
    if (selectTask != null) {
      return selectTask(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddTextNote value) addTextNote,
    required TResult Function(_AddVoiceNote value) addVoiceNote,
    required TResult Function(_RemoveVoiceNote value) removeNote,
    required TResult Function(_GoToToday value) goToDay,
    required TResult Function(_SelectShiftType value) selectShiftType,
    required TResult Function(_AddTask value) addTask,
    required TResult Function(_SelectTask value) selectTask,
    required TResult Function(_RemoveTask value) removeTask,
    required TResult Function(_AddBirthday value) addBirthday,
    required TResult Function(_RemoveBirthday value) removeBirthday,
  }) {
    return selectTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddTextNote value)? addTextNote,
    TResult? Function(_AddVoiceNote value)? addVoiceNote,
    TResult? Function(_RemoveVoiceNote value)? removeNote,
    TResult? Function(_GoToToday value)? goToDay,
    TResult? Function(_SelectShiftType value)? selectShiftType,
    TResult? Function(_AddTask value)? addTask,
    TResult? Function(_SelectTask value)? selectTask,
    TResult? Function(_RemoveTask value)? removeTask,
    TResult? Function(_AddBirthday value)? addBirthday,
    TResult? Function(_RemoveBirthday value)? removeBirthday,
  }) {
    return selectTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddTextNote value)? addTextNote,
    TResult Function(_AddVoiceNote value)? addVoiceNote,
    TResult Function(_RemoveVoiceNote value)? removeNote,
    TResult Function(_GoToToday value)? goToDay,
    TResult Function(_SelectShiftType value)? selectShiftType,
    TResult Function(_AddTask value)? addTask,
    TResult Function(_SelectTask value)? selectTask,
    TResult Function(_RemoveTask value)? removeTask,
    TResult Function(_AddBirthday value)? addBirthday,
    TResult Function(_RemoveBirthday value)? removeBirthday,
    required TResult orElse(),
  }) {
    if (selectTask != null) {
      return selectTask(this);
    }
    return orElse();
  }
}

abstract class _SelectTask implements DayEvent {
  const factory _SelectTask(final Task task) = _$SelectTaskImpl;

  Task get task;
  @JsonKey(ignore: true)
  _$$SelectTaskImplCopyWith<_$SelectTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveTaskImplCopyWith<$Res> {
  factory _$$RemoveTaskImplCopyWith(
          _$RemoveTaskImpl value, $Res Function(_$RemoveTaskImpl) then) =
      __$$RemoveTaskImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Task task});

  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class __$$RemoveTaskImplCopyWithImpl<$Res>
    extends _$DayEventCopyWithImpl<$Res, _$RemoveTaskImpl>
    implements _$$RemoveTaskImplCopyWith<$Res> {
  __$$RemoveTaskImplCopyWithImpl(
      _$RemoveTaskImpl _value, $Res Function(_$RemoveTaskImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$RemoveTaskImpl(
      null == task
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

class _$RemoveTaskImpl implements _RemoveTask {
  const _$RemoveTaskImpl(this.task);

  @override
  final Task task;

  @override
  String toString() {
    return 'DayEvent.removeTask(task: $task)';
  }

  @override
  bool operator ==(Object other) {
    return false ?? identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveTaskImpl &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveTaskImplCopyWith<_$RemoveTaskImpl> get copyWith =>
      __$$RemoveTaskImplCopyWithImpl<_$RemoveTaskImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TextNote text) addTextNote,
    required TResult Function(VoiceNote voiceNote) addVoiceNote,
    required TResult Function(Note note) removeNote,
    required TResult Function(bool? nextOrPrev) goToDay,
    required TResult Function(ShiftType shiftType) selectShiftType,
    required TResult Function(Task task) addTask,
    required TResult Function(Task task) selectTask,
    required TResult Function(Task task) removeTask,
    required TResult Function(Task task) addBirthday,
    required TResult Function(Task task) removeBirthday,
  }) {
    return removeTask(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TextNote text)? addTextNote,
    TResult? Function(VoiceNote voiceNote)? addVoiceNote,
    TResult? Function(Note note)? removeNote,
    TResult? Function(bool? nextOrPrev)? goToDay,
    TResult? Function(ShiftType shiftType)? selectShiftType,
    TResult? Function(Task task)? addTask,
    TResult? Function(Task task)? selectTask,
    TResult? Function(Task task)? removeTask,
    TResult? Function(Task task)? addBirthday,
    TResult? Function(Task task)? removeBirthday,
  }) {
    return removeTask?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TextNote text)? addTextNote,
    TResult Function(VoiceNote voiceNote)? addVoiceNote,
    TResult Function(Note note)? removeNote,
    TResult Function(bool? nextOrPrev)? goToDay,
    TResult Function(ShiftType shiftType)? selectShiftType,
    TResult Function(Task task)? addTask,
    TResult Function(Task task)? selectTask,
    TResult Function(Task task)? removeTask,
    TResult Function(Task task)? addBirthday,
    TResult Function(Task task)? removeBirthday,
    required TResult orElse(),
  }) {
    if (removeTask != null) {
      return removeTask(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddTextNote value) addTextNote,
    required TResult Function(_AddVoiceNote value) addVoiceNote,
    required TResult Function(_RemoveVoiceNote value) removeNote,
    required TResult Function(_GoToToday value) goToDay,
    required TResult Function(_SelectShiftType value) selectShiftType,
    required TResult Function(_AddTask value) addTask,
    required TResult Function(_SelectTask value) selectTask,
    required TResult Function(_RemoveTask value) removeTask,
    required TResult Function(_AddBirthday value) addBirthday,
    required TResult Function(_RemoveBirthday value) removeBirthday,
  }) {
    return removeTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddTextNote value)? addTextNote,
    TResult? Function(_AddVoiceNote value)? addVoiceNote,
    TResult? Function(_RemoveVoiceNote value)? removeNote,
    TResult? Function(_GoToToday value)? goToDay,
    TResult? Function(_SelectShiftType value)? selectShiftType,
    TResult? Function(_AddTask value)? addTask,
    TResult? Function(_SelectTask value)? selectTask,
    TResult? Function(_RemoveTask value)? removeTask,
    TResult? Function(_AddBirthday value)? addBirthday,
    TResult? Function(_RemoveBirthday value)? removeBirthday,
  }) {
    return removeTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddTextNote value)? addTextNote,
    TResult Function(_AddVoiceNote value)? addVoiceNote,
    TResult Function(_RemoveVoiceNote value)? removeNote,
    TResult Function(_GoToToday value)? goToDay,
    TResult Function(_SelectShiftType value)? selectShiftType,
    TResult Function(_AddTask value)? addTask,
    TResult Function(_SelectTask value)? selectTask,
    TResult Function(_RemoveTask value)? removeTask,
    TResult Function(_AddBirthday value)? addBirthday,
    TResult Function(_RemoveBirthday value)? removeBirthday,
    required TResult orElse(),
  }) {
    if (removeTask != null) {
      return removeTask(this);
    }
    return orElse();
  }
}

abstract class _RemoveTask implements DayEvent {
  const factory _RemoveTask(final Task task) = _$RemoveTaskImpl;

  Task get task;
  @JsonKey(ignore: true)
  _$$RemoveTaskImplCopyWith<_$RemoveTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddBirthdayImplCopyWith<$Res> {
  factory _$$AddBirthdayImplCopyWith(
          _$AddBirthdayImpl value, $Res Function(_$AddBirthdayImpl) then) =
      __$$AddBirthdayImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Task task});

  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class __$$AddBirthdayImplCopyWithImpl<$Res>
    extends _$DayEventCopyWithImpl<$Res, _$AddBirthdayImpl>
    implements _$$AddBirthdayImplCopyWith<$Res> {
  __$$AddBirthdayImplCopyWithImpl(
      _$AddBirthdayImpl _value, $Res Function(_$AddBirthdayImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$AddBirthdayImpl(
      null == task
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

class _$AddBirthdayImpl implements _AddBirthday {
  const _$AddBirthdayImpl(this.task);

  @override
  final Task task;

  @override
  String toString() {
    return 'DayEvent.addBirthday(task: $task)';
  }

  @override
  bool operator ==(Object other) {
    return false ?? identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddBirthdayImpl &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddBirthdayImplCopyWith<_$AddBirthdayImpl> get copyWith =>
      __$$AddBirthdayImplCopyWithImpl<_$AddBirthdayImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TextNote text) addTextNote,
    required TResult Function(VoiceNote voiceNote) addVoiceNote,
    required TResult Function(Note note) removeNote,
    required TResult Function(bool? nextOrPrev) goToDay,
    required TResult Function(ShiftType shiftType) selectShiftType,
    required TResult Function(Task task) addTask,
    required TResult Function(Task task) selectTask,
    required TResult Function(Task task) removeTask,
    required TResult Function(Task task) addBirthday,
    required TResult Function(Task task) removeBirthday,
  }) {
    return addBirthday(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TextNote text)? addTextNote,
    TResult? Function(VoiceNote voiceNote)? addVoiceNote,
    TResult? Function(Note note)? removeNote,
    TResult? Function(bool? nextOrPrev)? goToDay,
    TResult? Function(ShiftType shiftType)? selectShiftType,
    TResult? Function(Task task)? addTask,
    TResult? Function(Task task)? selectTask,
    TResult? Function(Task task)? removeTask,
    TResult? Function(Task task)? addBirthday,
    TResult? Function(Task task)? removeBirthday,
  }) {
    return addBirthday?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TextNote text)? addTextNote,
    TResult Function(VoiceNote voiceNote)? addVoiceNote,
    TResult Function(Note note)? removeNote,
    TResult Function(bool? nextOrPrev)? goToDay,
    TResult Function(ShiftType shiftType)? selectShiftType,
    TResult Function(Task task)? addTask,
    TResult Function(Task task)? selectTask,
    TResult Function(Task task)? removeTask,
    TResult Function(Task task)? addBirthday,
    TResult Function(Task task)? removeBirthday,
    required TResult orElse(),
  }) {
    if (addBirthday != null) {
      return addBirthday(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddTextNote value) addTextNote,
    required TResult Function(_AddVoiceNote value) addVoiceNote,
    required TResult Function(_RemoveVoiceNote value) removeNote,
    required TResult Function(_GoToToday value) goToDay,
    required TResult Function(_SelectShiftType value) selectShiftType,
    required TResult Function(_AddTask value) addTask,
    required TResult Function(_SelectTask value) selectTask,
    required TResult Function(_RemoveTask value) removeTask,
    required TResult Function(_AddBirthday value) addBirthday,
    required TResult Function(_RemoveBirthday value) removeBirthday,
  }) {
    return addBirthday(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddTextNote value)? addTextNote,
    TResult? Function(_AddVoiceNote value)? addVoiceNote,
    TResult? Function(_RemoveVoiceNote value)? removeNote,
    TResult? Function(_GoToToday value)? goToDay,
    TResult? Function(_SelectShiftType value)? selectShiftType,
    TResult? Function(_AddTask value)? addTask,
    TResult? Function(_SelectTask value)? selectTask,
    TResult? Function(_RemoveTask value)? removeTask,
    TResult? Function(_AddBirthday value)? addBirthday,
    TResult? Function(_RemoveBirthday value)? removeBirthday,
  }) {
    return addBirthday?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddTextNote value)? addTextNote,
    TResult Function(_AddVoiceNote value)? addVoiceNote,
    TResult Function(_RemoveVoiceNote value)? removeNote,
    TResult Function(_GoToToday value)? goToDay,
    TResult Function(_SelectShiftType value)? selectShiftType,
    TResult Function(_AddTask value)? addTask,
    TResult Function(_SelectTask value)? selectTask,
    TResult Function(_RemoveTask value)? removeTask,
    TResult Function(_AddBirthday value)? addBirthday,
    TResult Function(_RemoveBirthday value)? removeBirthday,
    required TResult orElse(),
  }) {
    if (addBirthday != null) {
      return addBirthday(this);
    }
    return orElse();
  }
}

abstract class _AddBirthday implements DayEvent {
  const factory _AddBirthday(final Task task) = _$AddBirthdayImpl;

  Task get task;
  @JsonKey(ignore: true)
  _$$AddBirthdayImplCopyWith<_$AddBirthdayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveBirthdayImplCopyWith<$Res> {
  factory _$$RemoveBirthdayImplCopyWith(_$RemoveBirthdayImpl value,
          $Res Function(_$RemoveBirthdayImpl) then) =
      __$$RemoveBirthdayImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Task task});

  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class __$$RemoveBirthdayImplCopyWithImpl<$Res>
    extends _$DayEventCopyWithImpl<$Res, _$RemoveBirthdayImpl>
    implements _$$RemoveBirthdayImplCopyWith<$Res> {
  __$$RemoveBirthdayImplCopyWithImpl(
      _$RemoveBirthdayImpl _value, $Res Function(_$RemoveBirthdayImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$RemoveBirthdayImpl(
      null == task
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

class _$RemoveBirthdayImpl implements _RemoveBirthday {
  const _$RemoveBirthdayImpl(this.task);

  @override
  final Task task;

  @override
  String toString() {
    return 'DayEvent.removeBirthday(task: $task)';
  }

  @override
  bool operator ==(Object other) {
    return false ?? identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveBirthdayImpl &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveBirthdayImplCopyWith<_$RemoveBirthdayImpl> get copyWith =>
      __$$RemoveBirthdayImplCopyWithImpl<_$RemoveBirthdayImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TextNote text) addTextNote,
    required TResult Function(VoiceNote voiceNote) addVoiceNote,
    required TResult Function(Note note) removeNote,
    required TResult Function(bool? nextOrPrev) goToDay,
    required TResult Function(ShiftType shiftType) selectShiftType,
    required TResult Function(Task task) addTask,
    required TResult Function(Task task) selectTask,
    required TResult Function(Task task) removeTask,
    required TResult Function(Task task) addBirthday,
    required TResult Function(Task task) removeBirthday,
  }) {
    return removeBirthday(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TextNote text)? addTextNote,
    TResult? Function(VoiceNote voiceNote)? addVoiceNote,
    TResult? Function(Note note)? removeNote,
    TResult? Function(bool? nextOrPrev)? goToDay,
    TResult? Function(ShiftType shiftType)? selectShiftType,
    TResult? Function(Task task)? addTask,
    TResult? Function(Task task)? selectTask,
    TResult? Function(Task task)? removeTask,
    TResult? Function(Task task)? addBirthday,
    TResult? Function(Task task)? removeBirthday,
  }) {
    return removeBirthday?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TextNote text)? addTextNote,
    TResult Function(VoiceNote voiceNote)? addVoiceNote,
    TResult Function(Note note)? removeNote,
    TResult Function(bool? nextOrPrev)? goToDay,
    TResult Function(ShiftType shiftType)? selectShiftType,
    TResult Function(Task task)? addTask,
    TResult Function(Task task)? selectTask,
    TResult Function(Task task)? removeTask,
    TResult Function(Task task)? addBirthday,
    TResult Function(Task task)? removeBirthday,
    required TResult orElse(),
  }) {
    if (removeBirthday != null) {
      return removeBirthday(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddTextNote value) addTextNote,
    required TResult Function(_AddVoiceNote value) addVoiceNote,
    required TResult Function(_RemoveVoiceNote value) removeNote,
    required TResult Function(_GoToToday value) goToDay,
    required TResult Function(_SelectShiftType value) selectShiftType,
    required TResult Function(_AddTask value) addTask,
    required TResult Function(_SelectTask value) selectTask,
    required TResult Function(_RemoveTask value) removeTask,
    required TResult Function(_AddBirthday value) addBirthday,
    required TResult Function(_RemoveBirthday value) removeBirthday,
  }) {
    return removeBirthday(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddTextNote value)? addTextNote,
    TResult? Function(_AddVoiceNote value)? addVoiceNote,
    TResult? Function(_RemoveVoiceNote value)? removeNote,
    TResult? Function(_GoToToday value)? goToDay,
    TResult? Function(_SelectShiftType value)? selectShiftType,
    TResult? Function(_AddTask value)? addTask,
    TResult? Function(_SelectTask value)? selectTask,
    TResult? Function(_RemoveTask value)? removeTask,
    TResult? Function(_AddBirthday value)? addBirthday,
    TResult? Function(_RemoveBirthday value)? removeBirthday,
  }) {
    return removeBirthday?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddTextNote value)? addTextNote,
    TResult Function(_AddVoiceNote value)? addVoiceNote,
    TResult Function(_RemoveVoiceNote value)? removeNote,
    TResult Function(_GoToToday value)? goToDay,
    TResult Function(_SelectShiftType value)? selectShiftType,
    TResult Function(_AddTask value)? addTask,
    TResult Function(_SelectTask value)? selectTask,
    TResult Function(_RemoveTask value)? removeTask,
    TResult Function(_AddBirthday value)? addBirthday,
    TResult Function(_RemoveBirthday value)? removeBirthday,
    required TResult orElse(),
  }) {
    if (removeBirthday != null) {
      return removeBirthday(this);
    }
    return orElse();
  }
}

abstract class _RemoveBirthday implements DayEvent {
  const factory _RemoveBirthday(final Task task) = _$RemoveBirthdayImpl;

  Task get task;
  @JsonKey(ignore: true)
  _$$RemoveBirthdayImplCopyWith<_$RemoveBirthdayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DayState {
  DateTime get dateTime => throw _privateConstructorUsedError;
  List<TextNote> get textNotes => throw _privateConstructorUsedError;
  List<VoiceNote> get audioNotes => throw _privateConstructorUsedError;
  List<Task> get tasks => throw _privateConstructorUsedError;
  List<Task> get birthDays => throw _privateConstructorUsedError;
  ShiftType get shiftType => throw _privateConstructorUsedError;
  bool get canGoToToday => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            DateTime dateTime,
            List<TextNote> textNotes,
            List<VoiceNote> audioNotes,
            List<Task> tasks,
            List<Task> birthDays,
            ShiftType shiftType,
            bool canGoToToday)
        Loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            DateTime dateTime,
            List<TextNote> textNotes,
            List<VoiceNote> audioNotes,
            List<Task> tasks,
            List<Task> birthDays,
            ShiftType shiftType,
            bool canGoToToday)?
        Loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            DateTime dateTime,
            List<TextNote> textNotes,
            List<VoiceNote> audioNotes,
            List<Task> tasks,
            List<Task> birthDays,
            ShiftType shiftType,
            bool canGoToToday)?
        Loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) Loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loaded value)? Loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? Loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DayStateCopyWith<DayState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DayStateCopyWith<$Res> {
  factory $DayStateCopyWith(DayState value, $Res Function(DayState) then) =
      _$DayStateCopyWithImpl<$Res, DayState>;
  @useResult
  $Res call(
      {DateTime dateTime,
      List<TextNote> textNotes,
      List<VoiceNote> audioNotes,
      List<Task> tasks,
      List<Task> birthDays,
      ShiftType shiftType,
      bool canGoToToday});
}

/// @nodoc
class _$DayStateCopyWithImpl<$Res, $Val extends DayState>
    implements $DayStateCopyWith<$Res> {
  _$DayStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = null,
    Object? textNotes = null,
    Object? audioNotes = null,
    Object? tasks = null,
    Object? birthDays = null,
    Object? shiftType = null,
    Object? canGoToToday = null,
  }) {
    return _then(_value.copyWith(
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      textNotes: null == textNotes
          ? _value.textNotes
          : textNotes // ignore: cast_nullable_to_non_nullable
              as List<TextNote>,
      audioNotes: null == audioNotes
          ? _value.audioNotes
          : audioNotes // ignore: cast_nullable_to_non_nullable
              as List<VoiceNote>,
      tasks: null == tasks
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Task>,
      birthDays: null == birthDays
          ? _value.birthDays
          : birthDays // ignore: cast_nullable_to_non_nullable
              as List<Task>,
      shiftType: null == shiftType
          ? _value.shiftType
          : shiftType // ignore: cast_nullable_to_non_nullable
              as ShiftType,
      canGoToToday: null == canGoToToday
          ? _value.canGoToToday
          : canGoToToday // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> implements $DayStateCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime dateTime,
      List<TextNote> textNotes,
      List<VoiceNote> audioNotes,
      List<Task> tasks,
      List<Task> birthDays,
      ShiftType shiftType,
      bool canGoToToday});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$DayStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = null,
    Object? textNotes = null,
    Object? audioNotes = null,
    Object? tasks = null,
    Object? birthDays = null,
    Object? shiftType = null,
    Object? canGoToToday = null,
  }) {
    return _then(_$LoadedImpl(
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      textNotes: null == textNotes
          ? _value._textNotes
          : textNotes // ignore: cast_nullable_to_non_nullable
              as List<TextNote>,
      audioNotes: null == audioNotes
          ? _value._audioNotes
          : audioNotes // ignore: cast_nullable_to_non_nullable
              as List<VoiceNote>,
      tasks: null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Task>,
      birthDays: null == birthDays
          ? _value._birthDays
          : birthDays // ignore: cast_nullable_to_non_nullable
              as List<Task>,
      shiftType: null == shiftType
          ? _value.shiftType
          : shiftType // ignore: cast_nullable_to_non_nullable
              as ShiftType,
      canGoToToday: null == canGoToToday
          ? _value.canGoToToday
          : canGoToToday // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(
      {required this.dateTime,
      required final List<TextNote> textNotes,
      required final List<VoiceNote> audioNotes,
      required final List<Task> tasks,
      required final List<Task> birthDays,
      required this.shiftType,
      required this.canGoToToday})
      : _textNotes = textNotes,
        _audioNotes = audioNotes,
        _tasks = tasks,
        _birthDays = birthDays;

  @override
  final DateTime dateTime;
  final List<TextNote> _textNotes;
  @override
  List<TextNote> get textNotes {
    if (_textNotes is EqualUnmodifiableListView) return _textNotes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_textNotes);
  }

  final List<VoiceNote> _audioNotes;
  @override
  List<VoiceNote> get audioNotes {
    if (_audioNotes is EqualUnmodifiableListView) return _audioNotes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_audioNotes);
  }

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

  @override
  final ShiftType shiftType;
  @override
  final bool canGoToToday;

  @override
  String toString() {
    return 'DayState.Loaded(dateTime: $dateTime, textNotes: $textNotes, audioNotes: $audioNotes, tasks: $tasks, birthDays: $birthDays, shiftType: $shiftType, canGoToToday: $canGoToToday)';
  }

  @override
  bool operator ==(Object other) {
    return false ?? identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            const DeepCollectionEquality()
                .equals(other._textNotes, _textNotes) &&
            const DeepCollectionEquality()
                .equals(other._audioNotes, _audioNotes) &&
            const DeepCollectionEquality().equals(other._tasks, _tasks) &&
            const DeepCollectionEquality()
                .equals(other._birthDays, _birthDays) &&
            (identical(other.shiftType, shiftType) ||
                other.shiftType == shiftType) &&
            (identical(other.canGoToToday, canGoToToday) ||
                other.canGoToToday == canGoToToday));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      dateTime,
      const DeepCollectionEquality().hash(_textNotes),
      const DeepCollectionEquality().hash(_audioNotes),
      const DeepCollectionEquality().hash(_tasks),
      const DeepCollectionEquality().hash(_birthDays),
      shiftType,
      canGoToToday);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            DateTime dateTime,
            List<TextNote> textNotes,
            List<VoiceNote> audioNotes,
            List<Task> tasks,
            List<Task> birthDays,
            ShiftType shiftType,
            bool canGoToToday)
        Loaded,
  }) {
    return Loaded(dateTime, textNotes, audioNotes, tasks, birthDays, shiftType,
        canGoToToday);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            DateTime dateTime,
            List<TextNote> textNotes,
            List<VoiceNote> audioNotes,
            List<Task> tasks,
            List<Task> birthDays,
            ShiftType shiftType,
            bool canGoToToday)?
        Loaded,
  }) {
    return Loaded?.call(dateTime, textNotes, audioNotes, tasks, birthDays,
        shiftType, canGoToToday);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            DateTime dateTime,
            List<TextNote> textNotes,
            List<VoiceNote> audioNotes,
            List<Task> tasks,
            List<Task> birthDays,
            ShiftType shiftType,
            bool canGoToToday)?
        Loaded,
    required TResult orElse(),
  }) {
    if (Loaded != null) {
      return Loaded(dateTime, textNotes, audioNotes, tasks, birthDays,
          shiftType, canGoToToday);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) Loaded,
  }) {
    return Loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loaded value)? Loaded,
  }) {
    return Loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? Loaded,
    required TResult orElse(),
  }) {
    if (Loaded != null) {
      return Loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements DayState {
  const factory _Loaded(
      {required final DateTime dateTime,
      required final List<TextNote> textNotes,
      required final List<VoiceNote> audioNotes,
      required final List<Task> tasks,
      required final List<Task> birthDays,
      required final ShiftType shiftType,
      required final bool canGoToToday}) = _$LoadedImpl;

  @override
  DateTime get dateTime;
  @override
  List<TextNote> get textNotes;
  @override
  List<VoiceNote> get audioNotes;
  @override
  List<Task> get tasks;
  @override
  List<Task> get birthDays;
  @override
  ShiftType get shiftType;
  @override
  bool get canGoToToday;
  @override
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
