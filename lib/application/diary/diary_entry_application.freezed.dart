// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'diary_entry_application.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DiaryEntryApplicationTearOff {
  const _$DiaryEntryApplicationTearOff();

  _DiaryEntryApplication call(
      {required DiaryEntry entry,
      MentionCandidate? selectingMention,
      int? baseOffset,
      int? extentOffset}) {
    return _DiaryEntryApplication(
      entry: entry,
      selectingMention: selectingMention,
      baseOffset: baseOffset,
      extentOffset: extentOffset,
    );
  }
}

/// @nodoc
const $DiaryEntryApplication = _$DiaryEntryApplicationTearOff();

/// @nodoc
mixin _$DiaryEntryApplication {
  DiaryEntry get entry => throw _privateConstructorUsedError;
  MentionCandidate? get selectingMention => throw _privateConstructorUsedError;
  int? get baseOffset => throw _privateConstructorUsedError;
  int? get extentOffset => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DiaryEntryApplicationCopyWith<DiaryEntryApplication> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiaryEntryApplicationCopyWith<$Res> {
  factory $DiaryEntryApplicationCopyWith(DiaryEntryApplication value,
          $Res Function(DiaryEntryApplication) then) =
      _$DiaryEntryApplicationCopyWithImpl<$Res>;
  $Res call(
      {DiaryEntry entry,
      MentionCandidate? selectingMention,
      int? baseOffset,
      int? extentOffset});

  $DiaryEntryCopyWith<$Res> get entry;
  $MentionCandidateCopyWith<$Res>? get selectingMention;
}

/// @nodoc
class _$DiaryEntryApplicationCopyWithImpl<$Res>
    implements $DiaryEntryApplicationCopyWith<$Res> {
  _$DiaryEntryApplicationCopyWithImpl(this._value, this._then);

  final DiaryEntryApplication _value;
  // ignore: unused_field
  final $Res Function(DiaryEntryApplication) _then;

  @override
  $Res call({
    Object? entry = freezed,
    Object? selectingMention = freezed,
    Object? baseOffset = freezed,
    Object? extentOffset = freezed,
  }) {
    return _then(_value.copyWith(
      entry: entry == freezed
          ? _value.entry
          : entry // ignore: cast_nullable_to_non_nullable
              as DiaryEntry,
      selectingMention: selectingMention == freezed
          ? _value.selectingMention
          : selectingMention // ignore: cast_nullable_to_non_nullable
              as MentionCandidate?,
      baseOffset: baseOffset == freezed
          ? _value.baseOffset
          : baseOffset // ignore: cast_nullable_to_non_nullable
              as int?,
      extentOffset: extentOffset == freezed
          ? _value.extentOffset
          : extentOffset // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  @override
  $DiaryEntryCopyWith<$Res> get entry {
    return $DiaryEntryCopyWith<$Res>(_value.entry, (value) {
      return _then(_value.copyWith(entry: value));
    });
  }

  @override
  $MentionCandidateCopyWith<$Res>? get selectingMention {
    if (_value.selectingMention == null) {
      return null;
    }

    return $MentionCandidateCopyWith<$Res>(_value.selectingMention!, (value) {
      return _then(_value.copyWith(selectingMention: value));
    });
  }
}

/// @nodoc
abstract class _$DiaryEntryApplicationCopyWith<$Res>
    implements $DiaryEntryApplicationCopyWith<$Res> {
  factory _$DiaryEntryApplicationCopyWith(_DiaryEntryApplication value,
          $Res Function(_DiaryEntryApplication) then) =
      __$DiaryEntryApplicationCopyWithImpl<$Res>;
  @override
  $Res call(
      {DiaryEntry entry,
      MentionCandidate? selectingMention,
      int? baseOffset,
      int? extentOffset});

  @override
  $DiaryEntryCopyWith<$Res> get entry;
  @override
  $MentionCandidateCopyWith<$Res>? get selectingMention;
}

/// @nodoc
class __$DiaryEntryApplicationCopyWithImpl<$Res>
    extends _$DiaryEntryApplicationCopyWithImpl<$Res>
    implements _$DiaryEntryApplicationCopyWith<$Res> {
  __$DiaryEntryApplicationCopyWithImpl(_DiaryEntryApplication _value,
      $Res Function(_DiaryEntryApplication) _then)
      : super(_value, (v) => _then(v as _DiaryEntryApplication));

  @override
  _DiaryEntryApplication get _value => super._value as _DiaryEntryApplication;

  @override
  $Res call({
    Object? entry = freezed,
    Object? selectingMention = freezed,
    Object? baseOffset = freezed,
    Object? extentOffset = freezed,
  }) {
    return _then(_DiaryEntryApplication(
      entry: entry == freezed
          ? _value.entry
          : entry // ignore: cast_nullable_to_non_nullable
              as DiaryEntry,
      selectingMention: selectingMention == freezed
          ? _value.selectingMention
          : selectingMention // ignore: cast_nullable_to_non_nullable
              as MentionCandidate?,
      baseOffset: baseOffset == freezed
          ? _value.baseOffset
          : baseOffset // ignore: cast_nullable_to_non_nullable
              as int?,
      extentOffset: extentOffset == freezed
          ? _value.extentOffset
          : extentOffset // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_DiaryEntryApplication implements _DiaryEntryApplication {
  const _$_DiaryEntryApplication(
      {required this.entry,
      this.selectingMention,
      this.baseOffset,
      this.extentOffset});

  @override
  final DiaryEntry entry;
  @override
  final MentionCandidate? selectingMention;
  @override
  final int? baseOffset;
  @override
  final int? extentOffset;

  @override
  String toString() {
    return 'DiaryEntryApplication(entry: $entry, selectingMention: $selectingMention, baseOffset: $baseOffset, extentOffset: $extentOffset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DiaryEntryApplication &&
            (identical(other.entry, entry) ||
                const DeepCollectionEquality().equals(other.entry, entry)) &&
            (identical(other.selectingMention, selectingMention) ||
                const DeepCollectionEquality()
                    .equals(other.selectingMention, selectingMention)) &&
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
      const DeepCollectionEquality().hash(entry) ^
      const DeepCollectionEquality().hash(selectingMention) ^
      const DeepCollectionEquality().hash(baseOffset) ^
      const DeepCollectionEquality().hash(extentOffset);

  @JsonKey(ignore: true)
  @override
  _$DiaryEntryApplicationCopyWith<_DiaryEntryApplication> get copyWith =>
      __$DiaryEntryApplicationCopyWithImpl<_DiaryEntryApplication>(
          this, _$identity);
}

abstract class _DiaryEntryApplication implements DiaryEntryApplication {
  const factory _DiaryEntryApplication(
      {required DiaryEntry entry,
      MentionCandidate? selectingMention,
      int? baseOffset,
      int? extentOffset}) = _$_DiaryEntryApplication;

  @override
  DiaryEntry get entry => throw _privateConstructorUsedError;
  @override
  MentionCandidate? get selectingMention => throw _privateConstructorUsedError;
  @override
  int? get baseOffset => throw _privateConstructorUsedError;
  @override
  int? get extentOffset => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DiaryEntryApplicationCopyWith<_DiaryEntryApplication> get copyWith =>
      throw _privateConstructorUsedError;
}
