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

  _Mention call({required String id, required String name}) {
    return _Mention(
      id: id,
      name: name,
    );
  }
}

/// @nodoc
const $Mention = _$MentionTearOff();

/// @nodoc
mixin _$Mention {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MentionCopyWith<Mention> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MentionCopyWith<$Res> {
  factory $MentionCopyWith(Mention value, $Res Function(Mention) then) =
      _$MentionCopyWithImpl<$Res>;
  $Res call({String id, String name});
}

/// @nodoc
class _$MentionCopyWithImpl<$Res> implements $MentionCopyWith<$Res> {
  _$MentionCopyWithImpl(this._value, this._then);

  final Mention _value;
  // ignore: unused_field
  final $Res Function(Mention) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$MentionCopyWith<$Res> implements $MentionCopyWith<$Res> {
  factory _$MentionCopyWith(_Mention value, $Res Function(_Mention) then) =
      __$MentionCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name});
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
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_Mention(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Mention extends _Mention {
  const _$_Mention({required this.id, required this.name}) : super._();

  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'Mention(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Mention &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$MentionCopyWith<_Mention> get copyWith =>
      __$MentionCopyWithImpl<_Mention>(this, _$identity);
}

abstract class _Mention extends Mention {
  const factory _Mention({required String id, required String name}) =
      _$_Mention;
  const _Mention._() : super._();

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MentionCopyWith<_Mention> get copyWith =>
      throw _privateConstructorUsedError;
}
