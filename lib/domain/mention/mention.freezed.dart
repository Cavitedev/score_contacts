// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'mention.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MentionTearOff {
  const _$MentionTearOff();

  _Mention call(
      {required IMentionable iMentionable,
      required int startPos,
      required int endPos}) {
    return _Mention(
      iMentionable: iMentionable,
      startPos: startPos,
      endPos: endPos,
    );
  }
}

/// @nodoc
const $Mention = _$MentionTearOff();

/// @nodoc
mixin _$Mention {
  IMentionable get iMentionable => throw _privateConstructorUsedError;
  int get startPos => throw _privateConstructorUsedError;
  int get endPos => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MentionCopyWith<Mention> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MentionCopyWith<$Res> {
  factory $MentionCopyWith(Mention value, $Res Function(Mention) then) =
      _$MentionCopyWithImpl<$Res>;
  $Res call({IMentionable iMentionable, int startPos, int endPos});
}

/// @nodoc
class _$MentionCopyWithImpl<$Res> implements $MentionCopyWith<$Res> {
  _$MentionCopyWithImpl(this._value, this._then);

  final Mention _value;
  // ignore: unused_field
  final $Res Function(Mention) _then;

  @override
  $Res call({
    Object? iMentionable = freezed,
    Object? startPos = freezed,
    Object? endPos = freezed,
  }) {
    return _then(_value.copyWith(
      iMentionable: iMentionable == freezed
          ? _value.iMentionable
          : iMentionable // ignore: cast_nullable_to_non_nullable
              as IMentionable,
      startPos: startPos == freezed
          ? _value.startPos
          : startPos // ignore: cast_nullable_to_non_nullable
              as int,
      endPos: endPos == freezed
          ? _value.endPos
          : endPos // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$MentionCopyWith<$Res> implements $MentionCopyWith<$Res> {
  factory _$MentionCopyWith(_Mention value, $Res Function(_Mention) then) =
      __$MentionCopyWithImpl<$Res>;
  @override
  $Res call({IMentionable iMentionable, int startPos, int endPos});
}

/// @nodoc
class __$MentionCopyWithImpl<$Res> extends _$MentionCopyWithImpl<$Res>
    implements _$MentionCopyWith<$Res> {
  __$MentionCopyWithImpl(_Mention _value, $Res Function(_Mention) _then)
      : super(_value, (v) => _then(v as _Mention));

  @override
  _Mention get _value => super._value as _Mention;

  @override
  $Res call({
    Object? iMentionable = freezed,
    Object? startPos = freezed,
    Object? endPos = freezed,
  }) {
    return _then(_Mention(
      iMentionable: iMentionable == freezed
          ? _value.iMentionable
          : iMentionable // ignore: cast_nullable_to_non_nullable
              as IMentionable,
      startPos: startPos == freezed
          ? _value.startPos
          : startPos // ignore: cast_nullable_to_non_nullable
              as int,
      endPos: endPos == freezed
          ? _value.endPos
          : endPos // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Mention extends _Mention {
  const _$_Mention(
      {required this.iMentionable,
      required this.startPos,
      required this.endPos})
      : super._();

  @override
  final IMentionable iMentionable;
  @override
  final int startPos;
  @override
  final int endPos;

  @override
  String toString() {
    return 'Mention(iMentionable: $iMentionable, startPos: $startPos, endPos: $endPos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Mention &&
            (identical(other.iMentionable, iMentionable) ||
                const DeepCollectionEquality()
                    .equals(other.iMentionable, iMentionable)) &&
            (identical(other.startPos, startPos) ||
                const DeepCollectionEquality()
                    .equals(other.startPos, startPos)) &&
            (identical(other.endPos, endPos) ||
                const DeepCollectionEquality().equals(other.endPos, endPos)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(iMentionable) ^
      const DeepCollectionEquality().hash(startPos) ^
      const DeepCollectionEquality().hash(endPos);

  @JsonKey(ignore: true)
  @override
  _$MentionCopyWith<_Mention> get copyWith =>
      __$MentionCopyWithImpl<_Mention>(this, _$identity);
}

abstract class _Mention extends Mention {
  const factory _Mention(
      {required IMentionable iMentionable,
      required int startPos,
      required int endPos}) = _$_Mention;
  const _Mention._() : super._();

  @override
  IMentionable get iMentionable => throw _privateConstructorUsedError;
  @override
  int get startPos => throw _privateConstructorUsedError;
  @override
  int get endPos => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MentionCopyWith<_Mention> get copyWith =>
      throw _privateConstructorUsedError;
}
