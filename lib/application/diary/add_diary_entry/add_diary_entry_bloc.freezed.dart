// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'add_diary_entry_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AddDiaryEntryEventTearOff {
  const _$AddDiaryEntryEventTearOff();

  _Initialize initialize(
      {DiaryEntry? diaryEntry, required List<IMentionable> mentionableList}) {
    return _Initialize(
      diaryEntry: diaryEntry,
      mentionableList: mentionableList,
    );
  }

  _Save save() {
    return const _Save();
  }

  _OnEntryTextChanged onEntryTextChanged(
      {required String text,
      required int baseOffset,
      required int extentOffset,
      required String trigger}) {
    return _OnEntryTextChanged(
      text: text,
      baseOffset: baseOffset,
      extentOffset: extentOffset,
      trigger: trigger,
    );
  }

  _OnSelectMention onSelectMention({required IMentionable iMentionable}) {
    return _OnSelectMention(
      iMentionable: iMentionable,
    );
  }

  _RemoveMention removeMention(
      {required Mention mention,
      required int baseOffset,
      required int extentOffset}) {
    return _RemoveMention(
      mention: mention,
      baseOffset: baseOffset,
      extentOffset: extentOffset,
    );
  }

  _ChangeDate changeDate(DateTime dateTime, {required DatePos datePos}) {
    return _ChangeDate(
      dateTime,
      datePos: datePos,
    );
  }

  _ChangeTime changeTime(TimeOfDay time, {required DatePos datePos}) {
    return _ChangeTime(
      time,
      datePos: datePos,
    );
  }

  _ChangeAllDay changeAllDay(bool isAllDay) {
    return _ChangeAllDay(
      isAllDay,
    );
  }
}

/// @nodoc
const $AddDiaryEntryEvent = _$AddDiaryEntryEventTearOff();

/// @nodoc
mixin _$AddDiaryEntryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            DiaryEntry? diaryEntry, List<IMentionable> mentionableList)
        initialize,
    required TResult Function() save,
    required TResult Function(
            String text, int baseOffset, int extentOffset, String trigger)
        onEntryTextChanged,
    required TResult Function(IMentionable iMentionable) onSelectMention,
    required TResult Function(Mention mention, int baseOffset, int extentOffset)
        removeMention,
    required TResult Function(DateTime dateTime, DatePos datePos) changeDate,
    required TResult Function(TimeOfDay time, DatePos datePos) changeTime,
    required TResult Function(bool isAllDay) changeAllDay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            DiaryEntry? diaryEntry, List<IMentionable> mentionableList)?
        initialize,
    TResult Function()? save,
    TResult Function(
            String text, int baseOffset, int extentOffset, String trigger)?
        onEntryTextChanged,
    TResult Function(IMentionable iMentionable)? onSelectMention,
    TResult Function(Mention mention, int baseOffset, int extentOffset)?
        removeMention,
    TResult Function(DateTime dateTime, DatePos datePos)? changeDate,
    TResult Function(TimeOfDay time, DatePos datePos)? changeTime,
    TResult Function(bool isAllDay)? changeAllDay,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_Save value) save,
    required TResult Function(_OnEntryTextChanged value) onEntryTextChanged,
    required TResult Function(_OnSelectMention value) onSelectMention,
    required TResult Function(_RemoveMention value) removeMention,
    required TResult Function(_ChangeDate value) changeDate,
    required TResult Function(_ChangeTime value) changeTime,
    required TResult Function(_ChangeAllDay value) changeAllDay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_Save value)? save,
    TResult Function(_OnEntryTextChanged value)? onEntryTextChanged,
    TResult Function(_OnSelectMention value)? onSelectMention,
    TResult Function(_RemoveMention value)? removeMention,
    TResult Function(_ChangeDate value)? changeDate,
    TResult Function(_ChangeTime value)? changeTime,
    TResult Function(_ChangeAllDay value)? changeAllDay,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddDiaryEntryEventCopyWith<$Res> {
  factory $AddDiaryEntryEventCopyWith(
          AddDiaryEntryEvent value, $Res Function(AddDiaryEntryEvent) then) =
      _$AddDiaryEntryEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddDiaryEntryEventCopyWithImpl<$Res>
    implements $AddDiaryEntryEventCopyWith<$Res> {
  _$AddDiaryEntryEventCopyWithImpl(this._value, this._then);

  final AddDiaryEntryEvent _value;
  // ignore: unused_field
  final $Res Function(AddDiaryEntryEvent) _then;
}

/// @nodoc
abstract class _$InitializeCopyWith<$Res> {
  factory _$InitializeCopyWith(
          _Initialize value, $Res Function(_Initialize) then) =
      __$InitializeCopyWithImpl<$Res>;
  $Res call({DiaryEntry? diaryEntry, List<IMentionable> mentionableList});

  $DiaryEntryCopyWith<$Res>? get diaryEntry;
}

/// @nodoc
class __$InitializeCopyWithImpl<$Res>
    extends _$AddDiaryEntryEventCopyWithImpl<$Res>
    implements _$InitializeCopyWith<$Res> {
  __$InitializeCopyWithImpl(
      _Initialize _value, $Res Function(_Initialize) _then)
      : super(_value, (v) => _then(v as _Initialize));

  @override
  _Initialize get _value => super._value as _Initialize;

  @override
  $Res call({
    Object? diaryEntry = freezed,
    Object? mentionableList = freezed,
  }) {
    return _then(_Initialize(
      diaryEntry: diaryEntry == freezed
          ? _value.diaryEntry
          : diaryEntry // ignore: cast_nullable_to_non_nullable
              as DiaryEntry?,
      mentionableList: mentionableList == freezed
          ? _value.mentionableList
          : mentionableList // ignore: cast_nullable_to_non_nullable
              as List<IMentionable>,
    ));
  }

  @override
  $DiaryEntryCopyWith<$Res>? get diaryEntry {
    if (_value.diaryEntry == null) {
      return null;
    }

    return $DiaryEntryCopyWith<$Res>(_value.diaryEntry!, (value) {
      return _then(_value.copyWith(diaryEntry: value));
    });
  }
}

/// @nodoc

class _$_Initialize implements _Initialize {
  const _$_Initialize({this.diaryEntry, required this.mentionableList});

  @override
  final DiaryEntry? diaryEntry;
  @override
  final List<IMentionable> mentionableList;

  @override
  String toString() {
    return 'AddDiaryEntryEvent.initialize(diaryEntry: $diaryEntry, mentionableList: $mentionableList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialize &&
            (identical(other.diaryEntry, diaryEntry) ||
                const DeepCollectionEquality()
                    .equals(other.diaryEntry, diaryEntry)) &&
            (identical(other.mentionableList, mentionableList) ||
                const DeepCollectionEquality()
                    .equals(other.mentionableList, mentionableList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(diaryEntry) ^
      const DeepCollectionEquality().hash(mentionableList);

  @JsonKey(ignore: true)
  @override
  _$InitializeCopyWith<_Initialize> get copyWith =>
      __$InitializeCopyWithImpl<_Initialize>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            DiaryEntry? diaryEntry, List<IMentionable> mentionableList)
        initialize,
    required TResult Function() save,
    required TResult Function(
            String text, int baseOffset, int extentOffset, String trigger)
        onEntryTextChanged,
    required TResult Function(IMentionable iMentionable) onSelectMention,
    required TResult Function(Mention mention, int baseOffset, int extentOffset)
        removeMention,
    required TResult Function(DateTime dateTime, DatePos datePos) changeDate,
    required TResult Function(TimeOfDay time, DatePos datePos) changeTime,
    required TResult Function(bool isAllDay) changeAllDay,
  }) {
    return initialize(diaryEntry, mentionableList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            DiaryEntry? diaryEntry, List<IMentionable> mentionableList)?
        initialize,
    TResult Function()? save,
    TResult Function(
            String text, int baseOffset, int extentOffset, String trigger)?
        onEntryTextChanged,
    TResult Function(IMentionable iMentionable)? onSelectMention,
    TResult Function(Mention mention, int baseOffset, int extentOffset)?
        removeMention,
    TResult Function(DateTime dateTime, DatePos datePos)? changeDate,
    TResult Function(TimeOfDay time, DatePos datePos)? changeTime,
    TResult Function(bool isAllDay)? changeAllDay,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(diaryEntry, mentionableList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_Save value) save,
    required TResult Function(_OnEntryTextChanged value) onEntryTextChanged,
    required TResult Function(_OnSelectMention value) onSelectMention,
    required TResult Function(_RemoveMention value) removeMention,
    required TResult Function(_ChangeDate value) changeDate,
    required TResult Function(_ChangeTime value) changeTime,
    required TResult Function(_ChangeAllDay value) changeAllDay,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_Save value)? save,
    TResult Function(_OnEntryTextChanged value)? onEntryTextChanged,
    TResult Function(_OnSelectMention value)? onSelectMention,
    TResult Function(_RemoveMention value)? removeMention,
    TResult Function(_ChangeDate value)? changeDate,
    TResult Function(_ChangeTime value)? changeTime,
    TResult Function(_ChangeAllDay value)? changeAllDay,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class _Initialize implements AddDiaryEntryEvent {
  const factory _Initialize(
      {DiaryEntry? diaryEntry,
      required List<IMentionable> mentionableList}) = _$_Initialize;

  DiaryEntry? get diaryEntry => throw _privateConstructorUsedError;
  List<IMentionable> get mentionableList => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$InitializeCopyWith<_Initialize> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SaveCopyWith<$Res> {
  factory _$SaveCopyWith(_Save value, $Res Function(_Save) then) =
      __$SaveCopyWithImpl<$Res>;
}

/// @nodoc
class __$SaveCopyWithImpl<$Res> extends _$AddDiaryEntryEventCopyWithImpl<$Res>
    implements _$SaveCopyWith<$Res> {
  __$SaveCopyWithImpl(_Save _value, $Res Function(_Save) _then)
      : super(_value, (v) => _then(v as _Save));

  @override
  _Save get _value => super._value as _Save;
}

/// @nodoc

class _$_Save implements _Save {
  const _$_Save();

  @override
  String toString() {
    return 'AddDiaryEntryEvent.save()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Save);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            DiaryEntry? diaryEntry, List<IMentionable> mentionableList)
        initialize,
    required TResult Function() save,
    required TResult Function(
            String text, int baseOffset, int extentOffset, String trigger)
        onEntryTextChanged,
    required TResult Function(IMentionable iMentionable) onSelectMention,
    required TResult Function(Mention mention, int baseOffset, int extentOffset)
        removeMention,
    required TResult Function(DateTime dateTime, DatePos datePos) changeDate,
    required TResult Function(TimeOfDay time, DatePos datePos) changeTime,
    required TResult Function(bool isAllDay) changeAllDay,
  }) {
    return save();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            DiaryEntry? diaryEntry, List<IMentionable> mentionableList)?
        initialize,
    TResult Function()? save,
    TResult Function(
            String text, int baseOffset, int extentOffset, String trigger)?
        onEntryTextChanged,
    TResult Function(IMentionable iMentionable)? onSelectMention,
    TResult Function(Mention mention, int baseOffset, int extentOffset)?
        removeMention,
    TResult Function(DateTime dateTime, DatePos datePos)? changeDate,
    TResult Function(TimeOfDay time, DatePos datePos)? changeTime,
    TResult Function(bool isAllDay)? changeAllDay,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_Save value) save,
    required TResult Function(_OnEntryTextChanged value) onEntryTextChanged,
    required TResult Function(_OnSelectMention value) onSelectMention,
    required TResult Function(_RemoveMention value) removeMention,
    required TResult Function(_ChangeDate value) changeDate,
    required TResult Function(_ChangeTime value) changeTime,
    required TResult Function(_ChangeAllDay value) changeAllDay,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_Save value)? save,
    TResult Function(_OnEntryTextChanged value)? onEntryTextChanged,
    TResult Function(_OnSelectMention value)? onSelectMention,
    TResult Function(_RemoveMention value)? removeMention,
    TResult Function(_ChangeDate value)? changeDate,
    TResult Function(_ChangeTime value)? changeTime,
    TResult Function(_ChangeAllDay value)? changeAllDay,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class _Save implements AddDiaryEntryEvent {
  const factory _Save() = _$_Save;
}

/// @nodoc
abstract class _$OnEntryTextChangedCopyWith<$Res> {
  factory _$OnEntryTextChangedCopyWith(
          _OnEntryTextChanged value, $Res Function(_OnEntryTextChanged) then) =
      __$OnEntryTextChangedCopyWithImpl<$Res>;
  $Res call({String text, int baseOffset, int extentOffset, String trigger});
}

/// @nodoc
class __$OnEntryTextChangedCopyWithImpl<$Res>
    extends _$AddDiaryEntryEventCopyWithImpl<$Res>
    implements _$OnEntryTextChangedCopyWith<$Res> {
  __$OnEntryTextChangedCopyWithImpl(
      _OnEntryTextChanged _value, $Res Function(_OnEntryTextChanged) _then)
      : super(_value, (v) => _then(v as _OnEntryTextChanged));

  @override
  _OnEntryTextChanged get _value => super._value as _OnEntryTextChanged;

  @override
  $Res call({
    Object? text = freezed,
    Object? baseOffset = freezed,
    Object? extentOffset = freezed,
    Object? trigger = freezed,
  }) {
    return _then(_OnEntryTextChanged(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      baseOffset: baseOffset == freezed
          ? _value.baseOffset
          : baseOffset // ignore: cast_nullable_to_non_nullable
              as int,
      extentOffset: extentOffset == freezed
          ? _value.extentOffset
          : extentOffset // ignore: cast_nullable_to_non_nullable
              as int,
      trigger: trigger == freezed
          ? _value.trigger
          : trigger // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_OnEntryTextChanged implements _OnEntryTextChanged {
  const _$_OnEntryTextChanged(
      {required this.text,
      required this.baseOffset,
      required this.extentOffset,
      required this.trigger});

  @override
  final String text;
  @override
  final int baseOffset;
  @override
  final int extentOffset;
  @override
  final String trigger;

  @override
  String toString() {
    return 'AddDiaryEntryEvent.onEntryTextChanged(text: $text, baseOffset: $baseOffset, extentOffset: $extentOffset, trigger: $trigger)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnEntryTextChanged &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)) &&
            (identical(other.baseOffset, baseOffset) ||
                const DeepCollectionEquality()
                    .equals(other.baseOffset, baseOffset)) &&
            (identical(other.extentOffset, extentOffset) ||
                const DeepCollectionEquality()
                    .equals(other.extentOffset, extentOffset)) &&
            (identical(other.trigger, trigger) ||
                const DeepCollectionEquality().equals(other.trigger, trigger)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(text) ^
      const DeepCollectionEquality().hash(baseOffset) ^
      const DeepCollectionEquality().hash(extentOffset) ^
      const DeepCollectionEquality().hash(trigger);

  @JsonKey(ignore: true)
  @override
  _$OnEntryTextChangedCopyWith<_OnEntryTextChanged> get copyWith =>
      __$OnEntryTextChangedCopyWithImpl<_OnEntryTextChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            DiaryEntry? diaryEntry, List<IMentionable> mentionableList)
        initialize,
    required TResult Function() save,
    required TResult Function(
            String text, int baseOffset, int extentOffset, String trigger)
        onEntryTextChanged,
    required TResult Function(IMentionable iMentionable) onSelectMention,
    required TResult Function(Mention mention, int baseOffset, int extentOffset)
        removeMention,
    required TResult Function(DateTime dateTime, DatePos datePos) changeDate,
    required TResult Function(TimeOfDay time, DatePos datePos) changeTime,
    required TResult Function(bool isAllDay) changeAllDay,
  }) {
    return onEntryTextChanged(text, baseOffset, extentOffset, trigger);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            DiaryEntry? diaryEntry, List<IMentionable> mentionableList)?
        initialize,
    TResult Function()? save,
    TResult Function(
            String text, int baseOffset, int extentOffset, String trigger)?
        onEntryTextChanged,
    TResult Function(IMentionable iMentionable)? onSelectMention,
    TResult Function(Mention mention, int baseOffset, int extentOffset)?
        removeMention,
    TResult Function(DateTime dateTime, DatePos datePos)? changeDate,
    TResult Function(TimeOfDay time, DatePos datePos)? changeTime,
    TResult Function(bool isAllDay)? changeAllDay,
    required TResult orElse(),
  }) {
    if (onEntryTextChanged != null) {
      return onEntryTextChanged(text, baseOffset, extentOffset, trigger);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_Save value) save,
    required TResult Function(_OnEntryTextChanged value) onEntryTextChanged,
    required TResult Function(_OnSelectMention value) onSelectMention,
    required TResult Function(_RemoveMention value) removeMention,
    required TResult Function(_ChangeDate value) changeDate,
    required TResult Function(_ChangeTime value) changeTime,
    required TResult Function(_ChangeAllDay value) changeAllDay,
  }) {
    return onEntryTextChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_Save value)? save,
    TResult Function(_OnEntryTextChanged value)? onEntryTextChanged,
    TResult Function(_OnSelectMention value)? onSelectMention,
    TResult Function(_RemoveMention value)? removeMention,
    TResult Function(_ChangeDate value)? changeDate,
    TResult Function(_ChangeTime value)? changeTime,
    TResult Function(_ChangeAllDay value)? changeAllDay,
    required TResult orElse(),
  }) {
    if (onEntryTextChanged != null) {
      return onEntryTextChanged(this);
    }
    return orElse();
  }
}

abstract class _OnEntryTextChanged implements AddDiaryEntryEvent {
  const factory _OnEntryTextChanged(
      {required String text,
      required int baseOffset,
      required int extentOffset,
      required String trigger}) = _$_OnEntryTextChanged;

  String get text => throw _privateConstructorUsedError;
  int get baseOffset => throw _privateConstructorUsedError;
  int get extentOffset => throw _privateConstructorUsedError;
  String get trigger => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$OnEntryTextChangedCopyWith<_OnEntryTextChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$OnSelectMentionCopyWith<$Res> {
  factory _$OnSelectMentionCopyWith(
          _OnSelectMention value, $Res Function(_OnSelectMention) then) =
      __$OnSelectMentionCopyWithImpl<$Res>;
  $Res call({IMentionable iMentionable});
}

/// @nodoc
class __$OnSelectMentionCopyWithImpl<$Res>
    extends _$AddDiaryEntryEventCopyWithImpl<$Res>
    implements _$OnSelectMentionCopyWith<$Res> {
  __$OnSelectMentionCopyWithImpl(
      _OnSelectMention _value, $Res Function(_OnSelectMention) _then)
      : super(_value, (v) => _then(v as _OnSelectMention));

  @override
  _OnSelectMention get _value => super._value as _OnSelectMention;

  @override
  $Res call({
    Object? iMentionable = freezed,
  }) {
    return _then(_OnSelectMention(
      iMentionable: iMentionable == freezed
          ? _value.iMentionable
          : iMentionable // ignore: cast_nullable_to_non_nullable
              as IMentionable,
    ));
  }
}

/// @nodoc

class _$_OnSelectMention implements _OnSelectMention {
  const _$_OnSelectMention({required this.iMentionable});

  @override
  final IMentionable iMentionable;

  @override
  String toString() {
    return 'AddDiaryEntryEvent.onSelectMention(iMentionable: $iMentionable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnSelectMention &&
            (identical(other.iMentionable, iMentionable) ||
                const DeepCollectionEquality()
                    .equals(other.iMentionable, iMentionable)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(iMentionable);

  @JsonKey(ignore: true)
  @override
  _$OnSelectMentionCopyWith<_OnSelectMention> get copyWith =>
      __$OnSelectMentionCopyWithImpl<_OnSelectMention>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            DiaryEntry? diaryEntry, List<IMentionable> mentionableList)
        initialize,
    required TResult Function() save,
    required TResult Function(
            String text, int baseOffset, int extentOffset, String trigger)
        onEntryTextChanged,
    required TResult Function(IMentionable iMentionable) onSelectMention,
    required TResult Function(Mention mention, int baseOffset, int extentOffset)
        removeMention,
    required TResult Function(DateTime dateTime, DatePos datePos) changeDate,
    required TResult Function(TimeOfDay time, DatePos datePos) changeTime,
    required TResult Function(bool isAllDay) changeAllDay,
  }) {
    return onSelectMention(iMentionable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            DiaryEntry? diaryEntry, List<IMentionable> mentionableList)?
        initialize,
    TResult Function()? save,
    TResult Function(
            String text, int baseOffset, int extentOffset, String trigger)?
        onEntryTextChanged,
    TResult Function(IMentionable iMentionable)? onSelectMention,
    TResult Function(Mention mention, int baseOffset, int extentOffset)?
        removeMention,
    TResult Function(DateTime dateTime, DatePos datePos)? changeDate,
    TResult Function(TimeOfDay time, DatePos datePos)? changeTime,
    TResult Function(bool isAllDay)? changeAllDay,
    required TResult orElse(),
  }) {
    if (onSelectMention != null) {
      return onSelectMention(iMentionable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_Save value) save,
    required TResult Function(_OnEntryTextChanged value) onEntryTextChanged,
    required TResult Function(_OnSelectMention value) onSelectMention,
    required TResult Function(_RemoveMention value) removeMention,
    required TResult Function(_ChangeDate value) changeDate,
    required TResult Function(_ChangeTime value) changeTime,
    required TResult Function(_ChangeAllDay value) changeAllDay,
  }) {
    return onSelectMention(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_Save value)? save,
    TResult Function(_OnEntryTextChanged value)? onEntryTextChanged,
    TResult Function(_OnSelectMention value)? onSelectMention,
    TResult Function(_RemoveMention value)? removeMention,
    TResult Function(_ChangeDate value)? changeDate,
    TResult Function(_ChangeTime value)? changeTime,
    TResult Function(_ChangeAllDay value)? changeAllDay,
    required TResult orElse(),
  }) {
    if (onSelectMention != null) {
      return onSelectMention(this);
    }
    return orElse();
  }
}

abstract class _OnSelectMention implements AddDiaryEntryEvent {
  const factory _OnSelectMention({required IMentionable iMentionable}) =
      _$_OnSelectMention;

  IMentionable get iMentionable => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$OnSelectMentionCopyWith<_OnSelectMention> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RemoveMentionCopyWith<$Res> {
  factory _$RemoveMentionCopyWith(
          _RemoveMention value, $Res Function(_RemoveMention) then) =
      __$RemoveMentionCopyWithImpl<$Res>;
  $Res call({Mention mention, int baseOffset, int extentOffset});

  $MentionCopyWith<$Res> get mention;
}

/// @nodoc
class __$RemoveMentionCopyWithImpl<$Res>
    extends _$AddDiaryEntryEventCopyWithImpl<$Res>
    implements _$RemoveMentionCopyWith<$Res> {
  __$RemoveMentionCopyWithImpl(
      _RemoveMention _value, $Res Function(_RemoveMention) _then)
      : super(_value, (v) => _then(v as _RemoveMention));

  @override
  _RemoveMention get _value => super._value as _RemoveMention;

  @override
  $Res call({
    Object? mention = freezed,
    Object? baseOffset = freezed,
    Object? extentOffset = freezed,
  }) {
    return _then(_RemoveMention(
      mention: mention == freezed
          ? _value.mention
          : mention // ignore: cast_nullable_to_non_nullable
              as Mention,
      baseOffset: baseOffset == freezed
          ? _value.baseOffset
          : baseOffset // ignore: cast_nullable_to_non_nullable
              as int,
      extentOffset: extentOffset == freezed
          ? _value.extentOffset
          : extentOffset // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $MentionCopyWith<$Res> get mention {
    return $MentionCopyWith<$Res>(_value.mention, (value) {
      return _then(_value.copyWith(mention: value));
    });
  }
}

/// @nodoc

class _$_RemoveMention implements _RemoveMention {
  const _$_RemoveMention(
      {required this.mention,
      required this.baseOffset,
      required this.extentOffset});

  @override
  final Mention mention;
  @override
  final int baseOffset;
  @override
  final int extentOffset;

  @override
  String toString() {
    return 'AddDiaryEntryEvent.removeMention(mention: $mention, baseOffset: $baseOffset, extentOffset: $extentOffset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RemoveMention &&
            (identical(other.mention, mention) ||
                const DeepCollectionEquality()
                    .equals(other.mention, mention)) &&
            (identical(other.baseOffset, baseOffset) ||
                const DeepCollectionEquality()
                    .equals(other.baseOffset, baseOffset)) &&
            (identical(other.extentOffset, extentOffset) ||
                const DeepCollectionEquality()
                    .equals(other.extentOffset, extentOffset)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(mention) ^
      const DeepCollectionEquality().hash(baseOffset) ^
      const DeepCollectionEquality().hash(extentOffset);

  @JsonKey(ignore: true)
  @override
  _$RemoveMentionCopyWith<_RemoveMention> get copyWith =>
      __$RemoveMentionCopyWithImpl<_RemoveMention>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            DiaryEntry? diaryEntry, List<IMentionable> mentionableList)
        initialize,
    required TResult Function() save,
    required TResult Function(
            String text, int baseOffset, int extentOffset, String trigger)
        onEntryTextChanged,
    required TResult Function(IMentionable iMentionable) onSelectMention,
    required TResult Function(Mention mention, int baseOffset, int extentOffset)
        removeMention,
    required TResult Function(DateTime dateTime, DatePos datePos) changeDate,
    required TResult Function(TimeOfDay time, DatePos datePos) changeTime,
    required TResult Function(bool isAllDay) changeAllDay,
  }) {
    return removeMention(mention, baseOffset, extentOffset);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            DiaryEntry? diaryEntry, List<IMentionable> mentionableList)?
        initialize,
    TResult Function()? save,
    TResult Function(
            String text, int baseOffset, int extentOffset, String trigger)?
        onEntryTextChanged,
    TResult Function(IMentionable iMentionable)? onSelectMention,
    TResult Function(Mention mention, int baseOffset, int extentOffset)?
        removeMention,
    TResult Function(DateTime dateTime, DatePos datePos)? changeDate,
    TResult Function(TimeOfDay time, DatePos datePos)? changeTime,
    TResult Function(bool isAllDay)? changeAllDay,
    required TResult orElse(),
  }) {
    if (removeMention != null) {
      return removeMention(mention, baseOffset, extentOffset);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_Save value) save,
    required TResult Function(_OnEntryTextChanged value) onEntryTextChanged,
    required TResult Function(_OnSelectMention value) onSelectMention,
    required TResult Function(_RemoveMention value) removeMention,
    required TResult Function(_ChangeDate value) changeDate,
    required TResult Function(_ChangeTime value) changeTime,
    required TResult Function(_ChangeAllDay value) changeAllDay,
  }) {
    return removeMention(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_Save value)? save,
    TResult Function(_OnEntryTextChanged value)? onEntryTextChanged,
    TResult Function(_OnSelectMention value)? onSelectMention,
    TResult Function(_RemoveMention value)? removeMention,
    TResult Function(_ChangeDate value)? changeDate,
    TResult Function(_ChangeTime value)? changeTime,
    TResult Function(_ChangeAllDay value)? changeAllDay,
    required TResult orElse(),
  }) {
    if (removeMention != null) {
      return removeMention(this);
    }
    return orElse();
  }
}

abstract class _RemoveMention implements AddDiaryEntryEvent {
  const factory _RemoveMention(
      {required Mention mention,
      required int baseOffset,
      required int extentOffset}) = _$_RemoveMention;

  Mention get mention => throw _privateConstructorUsedError;
  int get baseOffset => throw _privateConstructorUsedError;
  int get extentOffset => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$RemoveMentionCopyWith<_RemoveMention> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangeDateCopyWith<$Res> {
  factory _$ChangeDateCopyWith(
          _ChangeDate value, $Res Function(_ChangeDate) then) =
      __$ChangeDateCopyWithImpl<$Res>;
  $Res call({DateTime dateTime, DatePos datePos});
}

/// @nodoc
class __$ChangeDateCopyWithImpl<$Res>
    extends _$AddDiaryEntryEventCopyWithImpl<$Res>
    implements _$ChangeDateCopyWith<$Res> {
  __$ChangeDateCopyWithImpl(
      _ChangeDate _value, $Res Function(_ChangeDate) _then)
      : super(_value, (v) => _then(v as _ChangeDate));

  @override
  _ChangeDate get _value => super._value as _ChangeDate;

  @override
  $Res call({
    Object? dateTime = freezed,
    Object? datePos = freezed,
  }) {
    return _then(_ChangeDate(
      dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      datePos: datePos == freezed
          ? _value.datePos
          : datePos // ignore: cast_nullable_to_non_nullable
              as DatePos,
    ));
  }
}

/// @nodoc

class _$_ChangeDate implements _ChangeDate {
  const _$_ChangeDate(this.dateTime, {required this.datePos});

  @override
  final DateTime dateTime;
  @override
  final DatePos datePos;

  @override
  String toString() {
    return 'AddDiaryEntryEvent.changeDate(dateTime: $dateTime, datePos: $datePos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeDate &&
            (identical(other.dateTime, dateTime) ||
                const DeepCollectionEquality()
                    .equals(other.dateTime, dateTime)) &&
            (identical(other.datePos, datePos) ||
                const DeepCollectionEquality().equals(other.datePos, datePos)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(dateTime) ^
      const DeepCollectionEquality().hash(datePos);

  @JsonKey(ignore: true)
  @override
  _$ChangeDateCopyWith<_ChangeDate> get copyWith =>
      __$ChangeDateCopyWithImpl<_ChangeDate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            DiaryEntry? diaryEntry, List<IMentionable> mentionableList)
        initialize,
    required TResult Function() save,
    required TResult Function(
            String text, int baseOffset, int extentOffset, String trigger)
        onEntryTextChanged,
    required TResult Function(IMentionable iMentionable) onSelectMention,
    required TResult Function(Mention mention, int baseOffset, int extentOffset)
        removeMention,
    required TResult Function(DateTime dateTime, DatePos datePos) changeDate,
    required TResult Function(TimeOfDay time, DatePos datePos) changeTime,
    required TResult Function(bool isAllDay) changeAllDay,
  }) {
    return changeDate(dateTime, datePos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            DiaryEntry? diaryEntry, List<IMentionable> mentionableList)?
        initialize,
    TResult Function()? save,
    TResult Function(
            String text, int baseOffset, int extentOffset, String trigger)?
        onEntryTextChanged,
    TResult Function(IMentionable iMentionable)? onSelectMention,
    TResult Function(Mention mention, int baseOffset, int extentOffset)?
        removeMention,
    TResult Function(DateTime dateTime, DatePos datePos)? changeDate,
    TResult Function(TimeOfDay time, DatePos datePos)? changeTime,
    TResult Function(bool isAllDay)? changeAllDay,
    required TResult orElse(),
  }) {
    if (changeDate != null) {
      return changeDate(dateTime, datePos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_Save value) save,
    required TResult Function(_OnEntryTextChanged value) onEntryTextChanged,
    required TResult Function(_OnSelectMention value) onSelectMention,
    required TResult Function(_RemoveMention value) removeMention,
    required TResult Function(_ChangeDate value) changeDate,
    required TResult Function(_ChangeTime value) changeTime,
    required TResult Function(_ChangeAllDay value) changeAllDay,
  }) {
    return changeDate(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_Save value)? save,
    TResult Function(_OnEntryTextChanged value)? onEntryTextChanged,
    TResult Function(_OnSelectMention value)? onSelectMention,
    TResult Function(_RemoveMention value)? removeMention,
    TResult Function(_ChangeDate value)? changeDate,
    TResult Function(_ChangeTime value)? changeTime,
    TResult Function(_ChangeAllDay value)? changeAllDay,
    required TResult orElse(),
  }) {
    if (changeDate != null) {
      return changeDate(this);
    }
    return orElse();
  }
}

abstract class _ChangeDate implements AddDiaryEntryEvent {
  const factory _ChangeDate(DateTime dateTime, {required DatePos datePos}) =
      _$_ChangeDate;

  DateTime get dateTime => throw _privateConstructorUsedError;
  DatePos get datePos => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangeDateCopyWith<_ChangeDate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangeTimeCopyWith<$Res> {
  factory _$ChangeTimeCopyWith(
          _ChangeTime value, $Res Function(_ChangeTime) then) =
      __$ChangeTimeCopyWithImpl<$Res>;
  $Res call({TimeOfDay time, DatePos datePos});
}

/// @nodoc
class __$ChangeTimeCopyWithImpl<$Res>
    extends _$AddDiaryEntryEventCopyWithImpl<$Res>
    implements _$ChangeTimeCopyWith<$Res> {
  __$ChangeTimeCopyWithImpl(
      _ChangeTime _value, $Res Function(_ChangeTime) _then)
      : super(_value, (v) => _then(v as _ChangeTime));

  @override
  _ChangeTime get _value => super._value as _ChangeTime;

  @override
  $Res call({
    Object? time = freezed,
    Object? datePos = freezed,
  }) {
    return _then(_ChangeTime(
      time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      datePos: datePos == freezed
          ? _value.datePos
          : datePos // ignore: cast_nullable_to_non_nullable
              as DatePos,
    ));
  }
}

/// @nodoc

class _$_ChangeTime implements _ChangeTime {
  const _$_ChangeTime(this.time, {required this.datePos});

  @override
  final TimeOfDay time;
  @override
  final DatePos datePos;

  @override
  String toString() {
    return 'AddDiaryEntryEvent.changeTime(time: $time, datePos: $datePos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeTime &&
            (identical(other.time, time) ||
                const DeepCollectionEquality().equals(other.time, time)) &&
            (identical(other.datePos, datePos) ||
                const DeepCollectionEquality().equals(other.datePos, datePos)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(time) ^
      const DeepCollectionEquality().hash(datePos);

  @JsonKey(ignore: true)
  @override
  _$ChangeTimeCopyWith<_ChangeTime> get copyWith =>
      __$ChangeTimeCopyWithImpl<_ChangeTime>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            DiaryEntry? diaryEntry, List<IMentionable> mentionableList)
        initialize,
    required TResult Function() save,
    required TResult Function(
            String text, int baseOffset, int extentOffset, String trigger)
        onEntryTextChanged,
    required TResult Function(IMentionable iMentionable) onSelectMention,
    required TResult Function(Mention mention, int baseOffset, int extentOffset)
        removeMention,
    required TResult Function(DateTime dateTime, DatePos datePos) changeDate,
    required TResult Function(TimeOfDay time, DatePos datePos) changeTime,
    required TResult Function(bool isAllDay) changeAllDay,
  }) {
    return changeTime(time, datePos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            DiaryEntry? diaryEntry, List<IMentionable> mentionableList)?
        initialize,
    TResult Function()? save,
    TResult Function(
            String text, int baseOffset, int extentOffset, String trigger)?
        onEntryTextChanged,
    TResult Function(IMentionable iMentionable)? onSelectMention,
    TResult Function(Mention mention, int baseOffset, int extentOffset)?
        removeMention,
    TResult Function(DateTime dateTime, DatePos datePos)? changeDate,
    TResult Function(TimeOfDay time, DatePos datePos)? changeTime,
    TResult Function(bool isAllDay)? changeAllDay,
    required TResult orElse(),
  }) {
    if (changeTime != null) {
      return changeTime(time, datePos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_Save value) save,
    required TResult Function(_OnEntryTextChanged value) onEntryTextChanged,
    required TResult Function(_OnSelectMention value) onSelectMention,
    required TResult Function(_RemoveMention value) removeMention,
    required TResult Function(_ChangeDate value) changeDate,
    required TResult Function(_ChangeTime value) changeTime,
    required TResult Function(_ChangeAllDay value) changeAllDay,
  }) {
    return changeTime(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_Save value)? save,
    TResult Function(_OnEntryTextChanged value)? onEntryTextChanged,
    TResult Function(_OnSelectMention value)? onSelectMention,
    TResult Function(_RemoveMention value)? removeMention,
    TResult Function(_ChangeDate value)? changeDate,
    TResult Function(_ChangeTime value)? changeTime,
    TResult Function(_ChangeAllDay value)? changeAllDay,
    required TResult orElse(),
  }) {
    if (changeTime != null) {
      return changeTime(this);
    }
    return orElse();
  }
}

abstract class _ChangeTime implements AddDiaryEntryEvent {
  const factory _ChangeTime(TimeOfDay time, {required DatePos datePos}) =
      _$_ChangeTime;

  TimeOfDay get time => throw _privateConstructorUsedError;
  DatePos get datePos => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangeTimeCopyWith<_ChangeTime> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangeAllDayCopyWith<$Res> {
  factory _$ChangeAllDayCopyWith(
          _ChangeAllDay value, $Res Function(_ChangeAllDay) then) =
      __$ChangeAllDayCopyWithImpl<$Res>;
  $Res call({bool isAllDay});
}

/// @nodoc
class __$ChangeAllDayCopyWithImpl<$Res>
    extends _$AddDiaryEntryEventCopyWithImpl<$Res>
    implements _$ChangeAllDayCopyWith<$Res> {
  __$ChangeAllDayCopyWithImpl(
      _ChangeAllDay _value, $Res Function(_ChangeAllDay) _then)
      : super(_value, (v) => _then(v as _ChangeAllDay));

  @override
  _ChangeAllDay get _value => super._value as _ChangeAllDay;

  @override
  $Res call({
    Object? isAllDay = freezed,
  }) {
    return _then(_ChangeAllDay(
      isAllDay == freezed
          ? _value.isAllDay
          : isAllDay // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ChangeAllDay implements _ChangeAllDay {
  const _$_ChangeAllDay(this.isAllDay);

  @override
  final bool isAllDay;

  @override
  String toString() {
    return 'AddDiaryEntryEvent.changeAllDay(isAllDay: $isAllDay)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeAllDay &&
            (identical(other.isAllDay, isAllDay) ||
                const DeepCollectionEquality()
                    .equals(other.isAllDay, isAllDay)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isAllDay);

  @JsonKey(ignore: true)
  @override
  _$ChangeAllDayCopyWith<_ChangeAllDay> get copyWith =>
      __$ChangeAllDayCopyWithImpl<_ChangeAllDay>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            DiaryEntry? diaryEntry, List<IMentionable> mentionableList)
        initialize,
    required TResult Function() save,
    required TResult Function(
            String text, int baseOffset, int extentOffset, String trigger)
        onEntryTextChanged,
    required TResult Function(IMentionable iMentionable) onSelectMention,
    required TResult Function(Mention mention, int baseOffset, int extentOffset)
        removeMention,
    required TResult Function(DateTime dateTime, DatePos datePos) changeDate,
    required TResult Function(TimeOfDay time, DatePos datePos) changeTime,
    required TResult Function(bool isAllDay) changeAllDay,
  }) {
    return changeAllDay(isAllDay);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            DiaryEntry? diaryEntry, List<IMentionable> mentionableList)?
        initialize,
    TResult Function()? save,
    TResult Function(
            String text, int baseOffset, int extentOffset, String trigger)?
        onEntryTextChanged,
    TResult Function(IMentionable iMentionable)? onSelectMention,
    TResult Function(Mention mention, int baseOffset, int extentOffset)?
        removeMention,
    TResult Function(DateTime dateTime, DatePos datePos)? changeDate,
    TResult Function(TimeOfDay time, DatePos datePos)? changeTime,
    TResult Function(bool isAllDay)? changeAllDay,
    required TResult orElse(),
  }) {
    if (changeAllDay != null) {
      return changeAllDay(isAllDay);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_Save value) save,
    required TResult Function(_OnEntryTextChanged value) onEntryTextChanged,
    required TResult Function(_OnSelectMention value) onSelectMention,
    required TResult Function(_RemoveMention value) removeMention,
    required TResult Function(_ChangeDate value) changeDate,
    required TResult Function(_ChangeTime value) changeTime,
    required TResult Function(_ChangeAllDay value) changeAllDay,
  }) {
    return changeAllDay(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_Save value)? save,
    TResult Function(_OnEntryTextChanged value)? onEntryTextChanged,
    TResult Function(_OnSelectMention value)? onSelectMention,
    TResult Function(_RemoveMention value)? removeMention,
    TResult Function(_ChangeDate value)? changeDate,
    TResult Function(_ChangeTime value)? changeTime,
    TResult Function(_ChangeAllDay value)? changeAllDay,
    required TResult orElse(),
  }) {
    if (changeAllDay != null) {
      return changeAllDay(this);
    }
    return orElse();
  }
}

abstract class _ChangeAllDay implements AddDiaryEntryEvent {
  const factory _ChangeAllDay(bool isAllDay) = _$_ChangeAllDay;

  bool get isAllDay => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangeAllDayCopyWith<_ChangeAllDay> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AddDiaryEntryStateTearOff {
  const _$AddDiaryEntryStateTearOff();

  _AddDiaryEntryState call(
      {required DiaryEntryApplication entryField,
      required MentionListManager mentionListManager,
      required bool isEditting,
      required bool isSaving,
      required Either<DiaryFailure, Unit>? savingOrFailureOption}) {
    return _AddDiaryEntryState(
      entryField: entryField,
      mentionListManager: mentionListManager,
      isEditting: isEditting,
      isSaving: isSaving,
      savingOrFailureOption: savingOrFailureOption,
    );
  }
}

/// @nodoc
const $AddDiaryEntryState = _$AddDiaryEntryStateTearOff();

/// @nodoc
mixin _$AddDiaryEntryState {
  DiaryEntryApplication get entryField => throw _privateConstructorUsedError;
  MentionListManager get mentionListManager =>
      throw _privateConstructorUsedError;
  bool get isEditting => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  Either<DiaryFailure, Unit>? get savingOrFailureOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddDiaryEntryStateCopyWith<AddDiaryEntryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddDiaryEntryStateCopyWith<$Res> {
  factory $AddDiaryEntryStateCopyWith(
          AddDiaryEntryState value, $Res Function(AddDiaryEntryState) then) =
      _$AddDiaryEntryStateCopyWithImpl<$Res>;
  $Res call(
      {DiaryEntryApplication entryField,
      MentionListManager mentionListManager,
      bool isEditting,
      bool isSaving,
      Either<DiaryFailure, Unit>? savingOrFailureOption});

  $DiaryEntryApplicationCopyWith<$Res> get entryField;
  $MentionListManagerCopyWith<$Res> get mentionListManager;
}

/// @nodoc
class _$AddDiaryEntryStateCopyWithImpl<$Res>
    implements $AddDiaryEntryStateCopyWith<$Res> {
  _$AddDiaryEntryStateCopyWithImpl(this._value, this._then);

  final AddDiaryEntryState _value;
  // ignore: unused_field
  final $Res Function(AddDiaryEntryState) _then;

  @override
  $Res call({
    Object? entryField = freezed,
    Object? mentionListManager = freezed,
    Object? isEditting = freezed,
    Object? isSaving = freezed,
    Object? savingOrFailureOption = freezed,
  }) {
    return _then(_value.copyWith(
      entryField: entryField == freezed
          ? _value.entryField
          : entryField // ignore: cast_nullable_to_non_nullable
              as DiaryEntryApplication,
      mentionListManager: mentionListManager == freezed
          ? _value.mentionListManager
          : mentionListManager // ignore: cast_nullable_to_non_nullable
              as MentionListManager,
      isEditting: isEditting == freezed
          ? _value.isEditting
          : isEditting // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      savingOrFailureOption: savingOrFailureOption == freezed
          ? _value.savingOrFailureOption
          : savingOrFailureOption // ignore: cast_nullable_to_non_nullable
              as Either<DiaryFailure, Unit>?,
    ));
  }

  @override
  $DiaryEntryApplicationCopyWith<$Res> get entryField {
    return $DiaryEntryApplicationCopyWith<$Res>(_value.entryField, (value) {
      return _then(_value.copyWith(entryField: value));
    });
  }

  @override
  $MentionListManagerCopyWith<$Res> get mentionListManager {
    return $MentionListManagerCopyWith<$Res>(_value.mentionListManager,
        (value) {
      return _then(_value.copyWith(mentionListManager: value));
    });
  }
}

/// @nodoc
abstract class _$AddDiaryEntryStateCopyWith<$Res>
    implements $AddDiaryEntryStateCopyWith<$Res> {
  factory _$AddDiaryEntryStateCopyWith(
          _AddDiaryEntryState value, $Res Function(_AddDiaryEntryState) then) =
      __$AddDiaryEntryStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {DiaryEntryApplication entryField,
      MentionListManager mentionListManager,
      bool isEditting,
      bool isSaving,
      Either<DiaryFailure, Unit>? savingOrFailureOption});

  @override
  $DiaryEntryApplicationCopyWith<$Res> get entryField;
  @override
  $MentionListManagerCopyWith<$Res> get mentionListManager;
}

/// @nodoc
class __$AddDiaryEntryStateCopyWithImpl<$Res>
    extends _$AddDiaryEntryStateCopyWithImpl<$Res>
    implements _$AddDiaryEntryStateCopyWith<$Res> {
  __$AddDiaryEntryStateCopyWithImpl(
      _AddDiaryEntryState _value, $Res Function(_AddDiaryEntryState) _then)
      : super(_value, (v) => _then(v as _AddDiaryEntryState));

  @override
  _AddDiaryEntryState get _value => super._value as _AddDiaryEntryState;

  @override
  $Res call({
    Object? entryField = freezed,
    Object? mentionListManager = freezed,
    Object? isEditting = freezed,
    Object? isSaving = freezed,
    Object? savingOrFailureOption = freezed,
  }) {
    return _then(_AddDiaryEntryState(
      entryField: entryField == freezed
          ? _value.entryField
          : entryField // ignore: cast_nullable_to_non_nullable
              as DiaryEntryApplication,
      mentionListManager: mentionListManager == freezed
          ? _value.mentionListManager
          : mentionListManager // ignore: cast_nullable_to_non_nullable
              as MentionListManager,
      isEditting: isEditting == freezed
          ? _value.isEditting
          : isEditting // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      savingOrFailureOption: savingOrFailureOption == freezed
          ? _value.savingOrFailureOption
          : savingOrFailureOption // ignore: cast_nullable_to_non_nullable
              as Either<DiaryFailure, Unit>?,
    ));
  }
}

/// @nodoc

class _$_AddDiaryEntryState extends _AddDiaryEntryState {
  const _$_AddDiaryEntryState(
      {required this.entryField,
      required this.mentionListManager,
      required this.isEditting,
      required this.isSaving,
      required this.savingOrFailureOption})
      : super._();

  @override
  final DiaryEntryApplication entryField;
  @override
  final MentionListManager mentionListManager;
  @override
  final bool isEditting;
  @override
  final bool isSaving;
  @override
  final Either<DiaryFailure, Unit>? savingOrFailureOption;

  @override
  String toString() {
    return 'AddDiaryEntryState(entryField: $entryField, mentionListManager: $mentionListManager, isEditting: $isEditting, isSaving: $isSaving, savingOrFailureOption: $savingOrFailureOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddDiaryEntryState &&
            (identical(other.entryField, entryField) ||
                const DeepCollectionEquality()
                    .equals(other.entryField, entryField)) &&
            (identical(other.mentionListManager, mentionListManager) ||
                const DeepCollectionEquality()
                    .equals(other.mentionListManager, mentionListManager)) &&
            (identical(other.isEditting, isEditting) ||
                const DeepCollectionEquality()
                    .equals(other.isEditting, isEditting)) &&
            (identical(other.isSaving, isSaving) ||
                const DeepCollectionEquality()
                    .equals(other.isSaving, isSaving)) &&
            (identical(other.savingOrFailureOption, savingOrFailureOption) ||
                const DeepCollectionEquality().equals(
                    other.savingOrFailureOption, savingOrFailureOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(entryField) ^
      const DeepCollectionEquality().hash(mentionListManager) ^
      const DeepCollectionEquality().hash(isEditting) ^
      const DeepCollectionEquality().hash(isSaving) ^
      const DeepCollectionEquality().hash(savingOrFailureOption);

  @JsonKey(ignore: true)
  @override
  _$AddDiaryEntryStateCopyWith<_AddDiaryEntryState> get copyWith =>
      __$AddDiaryEntryStateCopyWithImpl<_AddDiaryEntryState>(this, _$identity);
}

abstract class _AddDiaryEntryState extends AddDiaryEntryState {
  const factory _AddDiaryEntryState(
          {required DiaryEntryApplication entryField,
          required MentionListManager mentionListManager,
          required bool isEditting,
          required bool isSaving,
          required Either<DiaryFailure, Unit>? savingOrFailureOption}) =
      _$_AddDiaryEntryState;
  const _AddDiaryEntryState._() : super._();

  @override
  DiaryEntryApplication get entryField => throw _privateConstructorUsedError;
  @override
  MentionListManager get mentionListManager =>
      throw _privateConstructorUsedError;
  @override
  bool get isEditting => throw _privateConstructorUsedError;
  @override
  bool get isSaving => throw _privateConstructorUsedError;
  @override
  Either<DiaryFailure, Unit>? get savingOrFailureOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AddDiaryEntryStateCopyWith<_AddDiaryEntryState> get copyWith =>
      throw _privateConstructorUsedError;
}
