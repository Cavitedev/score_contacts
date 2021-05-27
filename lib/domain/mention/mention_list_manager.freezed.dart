// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'mention_list_manager.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MentionListManagerTearOff {
  const _$MentionListManagerTearOff();

  _MentionListManager call({required List<IMentionable> mentionList}) {
    return _MentionListManager(
      mentionList: mentionList,
    );
  }
}

/// @nodoc
const $MentionListManager = _$MentionListManagerTearOff();

/// @nodoc
mixin _$MentionListManager {
  List<IMentionable> get mentionList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MentionListManagerCopyWith<MentionListManager> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MentionListManagerCopyWith<$Res> {
  factory $MentionListManagerCopyWith(
          MentionListManager value, $Res Function(MentionListManager) then) =
      _$MentionListManagerCopyWithImpl<$Res>;
  $Res call({List<IMentionable> mentionList});
}

/// @nodoc
class _$MentionListManagerCopyWithImpl<$Res>
    implements $MentionListManagerCopyWith<$Res> {
  _$MentionListManagerCopyWithImpl(this._value, this._then);

  final MentionListManager _value;
  // ignore: unused_field
  final $Res Function(MentionListManager) _then;

  @override
  $Res call({
    Object? mentionList = freezed,
  }) {
    return _then(_value.copyWith(
      mentionList: mentionList == freezed
          ? _value.mentionList
          : mentionList // ignore: cast_nullable_to_non_nullable
              as List<IMentionable>,
    ));
  }
}

/// @nodoc
abstract class _$MentionListManagerCopyWith<$Res>
    implements $MentionListManagerCopyWith<$Res> {
  factory _$MentionListManagerCopyWith(
          _MentionListManager value, $Res Function(_MentionListManager) then) =
      __$MentionListManagerCopyWithImpl<$Res>;
  @override
  $Res call({List<IMentionable> mentionList});
}

/// @nodoc
class __$MentionListManagerCopyWithImpl<$Res>
    extends _$MentionListManagerCopyWithImpl<$Res>
    implements _$MentionListManagerCopyWith<$Res> {
  __$MentionListManagerCopyWithImpl(
      _MentionListManager _value, $Res Function(_MentionListManager) _then)
      : super(_value, (v) => _then(v as _MentionListManager));

  @override
  _MentionListManager get _value => super._value as _MentionListManager;

  @override
  $Res call({
    Object? mentionList = freezed,
  }) {
    return _then(_MentionListManager(
      mentionList: mentionList == freezed
          ? _value.mentionList
          : mentionList // ignore: cast_nullable_to_non_nullable
              as List<IMentionable>,
    ));
  }
}

/// @nodoc

class _$_MentionListManager extends _MentionListManager {
  const _$_MentionListManager({required this.mentionList}) : super._();

  @override
  final List<IMentionable> mentionList;

  @override
  String toString() {
    return 'MentionListManager(mentionList: $mentionList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MentionListManager &&
            (identical(other.mentionList, mentionList) ||
                const DeepCollectionEquality()
                    .equals(other.mentionList, mentionList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(mentionList);

  @JsonKey(ignore: true)
  @override
  _$MentionListManagerCopyWith<_MentionListManager> get copyWith =>
      __$MentionListManagerCopyWithImpl<_MentionListManager>(this, _$identity);
}

abstract class _MentionListManager extends MentionListManager {
  const factory _MentionListManager({required List<IMentionable> mentionList}) =
      _$_MentionListManager;
  const _MentionListManager._() : super._();

  @override
  List<IMentionable> get mentionList => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MentionListManagerCopyWith<_MentionListManager> get copyWith =>
      throw _privateConstructorUsedError;
}
