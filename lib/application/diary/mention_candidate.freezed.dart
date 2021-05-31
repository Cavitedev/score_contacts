// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'mention_candidate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MentionCandidateTearOff {
  const _$MentionCandidateTearOff();

  _MentionCandidate call(
      {required int startPos,
      required int endPos,
      required List<IMentionable> candidates}) {
    return _MentionCandidate(
      startPos: startPos,
      endPos: endPos,
      candidates: candidates,
    );
  }
}

/// @nodoc
const $MentionCandidate = _$MentionCandidateTearOff();

/// @nodoc
mixin _$MentionCandidate {
  int get startPos => throw _privateConstructorUsedError;
  int get endPos => throw _privateConstructorUsedError;
  List<IMentionable> get candidates => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MentionCandidateCopyWith<MentionCandidate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MentionCandidateCopyWith<$Res> {
  factory $MentionCandidateCopyWith(
          MentionCandidate value, $Res Function(MentionCandidate) then) =
      _$MentionCandidateCopyWithImpl<$Res>;
  $Res call({int startPos, int endPos, List<IMentionable> candidates});
}

/// @nodoc
class _$MentionCandidateCopyWithImpl<$Res>
    implements $MentionCandidateCopyWith<$Res> {
  _$MentionCandidateCopyWithImpl(this._value, this._then);

  final MentionCandidate _value;
  // ignore: unused_field
  final $Res Function(MentionCandidate) _then;

  @override
  $Res call({
    Object? startPos = freezed,
    Object? endPos = freezed,
    Object? candidates = freezed,
  }) {
    return _then(_value.copyWith(
      startPos: startPos == freezed
          ? _value.startPos
          : startPos // ignore: cast_nullable_to_non_nullable
              as int,
      endPos: endPos == freezed
          ? _value.endPos
          : endPos // ignore: cast_nullable_to_non_nullable
              as int,
      candidates: candidates == freezed
          ? _value.candidates
          : candidates // ignore: cast_nullable_to_non_nullable
              as List<IMentionable>,
    ));
  }
}

/// @nodoc
abstract class _$MentionCandidateCopyWith<$Res>
    implements $MentionCandidateCopyWith<$Res> {
  factory _$MentionCandidateCopyWith(
          _MentionCandidate value, $Res Function(_MentionCandidate) then) =
      __$MentionCandidateCopyWithImpl<$Res>;
  @override
  $Res call({int startPos, int endPos, List<IMentionable> candidates});
}

/// @nodoc
class __$MentionCandidateCopyWithImpl<$Res>
    extends _$MentionCandidateCopyWithImpl<$Res>
    implements _$MentionCandidateCopyWith<$Res> {
  __$MentionCandidateCopyWithImpl(
      _MentionCandidate _value, $Res Function(_MentionCandidate) _then)
      : super(_value, (v) => _then(v as _MentionCandidate));

  @override
  _MentionCandidate get _value => super._value as _MentionCandidate;

  @override
  $Res call({
    Object? startPos = freezed,
    Object? endPos = freezed,
    Object? candidates = freezed,
  }) {
    return _then(_MentionCandidate(
      startPos: startPos == freezed
          ? _value.startPos
          : startPos // ignore: cast_nullable_to_non_nullable
              as int,
      endPos: endPos == freezed
          ? _value.endPos
          : endPos // ignore: cast_nullable_to_non_nullable
              as int,
      candidates: candidates == freezed
          ? _value.candidates
          : candidates // ignore: cast_nullable_to_non_nullable
              as List<IMentionable>,
    ));
  }
}

/// @nodoc

class _$_MentionCandidate extends _MentionCandidate {
  const _$_MentionCandidate(
      {required this.startPos, required this.endPos, required this.candidates})
      : super._();

  @override
  final int startPos;
  @override
  final int endPos;
  @override
  final List<IMentionable> candidates;

  @override
  String toString() {
    return 'MentionCandidate(startPos: $startPos, endPos: $endPos, candidates: $candidates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MentionCandidate &&
            (identical(other.startPos, startPos) ||
                const DeepCollectionEquality()
                    .equals(other.startPos, startPos)) &&
            (identical(other.endPos, endPos) ||
                const DeepCollectionEquality().equals(other.endPos, endPos)) &&
            (identical(other.candidates, candidates) ||
                const DeepCollectionEquality()
                    .equals(other.candidates, candidates)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(startPos) ^
      const DeepCollectionEquality().hash(endPos) ^
      const DeepCollectionEquality().hash(candidates);

  @JsonKey(ignore: true)
  @override
  _$MentionCandidateCopyWith<_MentionCandidate> get copyWith =>
      __$MentionCandidateCopyWithImpl<_MentionCandidate>(this, _$identity);
}

abstract class _MentionCandidate extends MentionCandidate {
  const factory _MentionCandidate(
      {required int startPos,
      required int endPos,
      required List<IMentionable> candidates}) = _$_MentionCandidate;
  const _MentionCandidate._() : super._();

  @override
  int get startPos => throw _privateConstructorUsedError;
  @override
  int get endPos => throw _privateConstructorUsedError;
  @override
  List<IMentionable> get candidates => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MentionCandidateCopyWith<_MentionCandidate> get copyWith =>
      throw _privateConstructorUsedError;
}
