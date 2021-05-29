// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'diary_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DiaryEntryTearOff {
  const _$DiaryEntryTearOff();

  _DiaryEntry call({required String text, required List<Mention> mentionList}) {
    return _DiaryEntry(
      text: text,
      mentionList: mentionList,
    );
  }
}

/// @nodoc
const $DiaryEntry = _$DiaryEntryTearOff();

/// @nodoc
mixin _$DiaryEntry {
  String get text => throw _privateConstructorUsedError;
  List<Mention> get mentionList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DiaryEntryCopyWith<DiaryEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiaryEntryCopyWith<$Res> {
  factory $DiaryEntryCopyWith(
          DiaryEntry value, $Res Function(DiaryEntry) then) =
      _$DiaryEntryCopyWithImpl<$Res>;
  $Res call({String text, List<Mention> mentionList});
}

/// @nodoc
class _$DiaryEntryCopyWithImpl<$Res> implements $DiaryEntryCopyWith<$Res> {
  _$DiaryEntryCopyWithImpl(this._value, this._then);

  final DiaryEntry _value;
  // ignore: unused_field
  final $Res Function(DiaryEntry) _then;

  @override
  $Res call({
    Object? text = freezed,
    Object? mentionList = freezed,
  }) {
    return _then(_value.copyWith(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      mentionList: mentionList == freezed
          ? _value.mentionList
          : mentionList // ignore: cast_nullable_to_non_nullable
              as List<Mention>,
    ));
  }
}

/// @nodoc
abstract class _$DiaryEntryCopyWith<$Res> implements $DiaryEntryCopyWith<$Res> {
  factory _$DiaryEntryCopyWith(
          _DiaryEntry value, $Res Function(_DiaryEntry) then) =
      __$DiaryEntryCopyWithImpl<$Res>;
  @override
  $Res call({String text, List<Mention> mentionList});
}

/// @nodoc
class __$DiaryEntryCopyWithImpl<$Res> extends _$DiaryEntryCopyWithImpl<$Res>
    implements _$DiaryEntryCopyWith<$Res> {
  __$DiaryEntryCopyWithImpl(
      _DiaryEntry _value, $Res Function(_DiaryEntry) _then)
      : super(_value, (v) => _then(v as _DiaryEntry));

  @override
  _DiaryEntry get _value => super._value as _DiaryEntry;

  @override
  $Res call({
    Object? text = freezed,
    Object? mentionList = freezed,
  }) {
    return _then(_DiaryEntry(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      mentionList: mentionList == freezed
          ? _value.mentionList
          : mentionList // ignore: cast_nullable_to_non_nullable
              as List<Mention>,
    ));
  }
}

/// @nodoc

class _$_DiaryEntry implements _DiaryEntry {
  const _$_DiaryEntry({required this.text, required this.mentionList});

  @override
  final String text;
  @override
  final List<Mention> mentionList;

  @override
  String toString() {
    return 'DiaryEntry(text: $text, mentionList: $mentionList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DiaryEntry &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)) &&
            (identical(other.mentionList, mentionList) ||
                const DeepCollectionEquality()
                    .equals(other.mentionList, mentionList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(text) ^
      const DeepCollectionEquality().hash(mentionList);

  @JsonKey(ignore: true)
  @override
  _$DiaryEntryCopyWith<_DiaryEntry> get copyWith =>
      __$DiaryEntryCopyWithImpl<_DiaryEntry>(this, _$identity);
}

abstract class _DiaryEntry implements DiaryEntry {
  const factory _DiaryEntry(
      {required String text,
      required List<Mention> mentionList}) = _$_DiaryEntry;

  @override
  String get text => throw _privateConstructorUsedError;
  @override
  List<Mention> get mentionList => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DiaryEntryCopyWith<_DiaryEntry> get copyWith =>
      throw _privateConstructorUsedError;
}
