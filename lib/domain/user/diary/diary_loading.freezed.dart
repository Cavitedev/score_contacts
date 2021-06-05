// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'diary_loading.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DiaryLoadingTearOff {
  const _$DiaryLoadingTearOff();

  _DeletingEntries deletingEntries(int amount) {
    return _DeletingEntries(
      amount,
    );
  }
}

/// @nodoc
const $DiaryLoading = _$DiaryLoadingTearOff();

/// @nodoc
mixin _$DiaryLoading {
  int get amount => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int amount) deletingEntries,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int amount)? deletingEntries,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeletingEntries value) deletingEntries,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeletingEntries value)? deletingEntries,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DiaryLoadingCopyWith<DiaryLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiaryLoadingCopyWith<$Res> {
  factory $DiaryLoadingCopyWith(
          DiaryLoading value, $Res Function(DiaryLoading) then) =
      _$DiaryLoadingCopyWithImpl<$Res>;
  $Res call({int amount});
}

/// @nodoc
class _$DiaryLoadingCopyWithImpl<$Res> implements $DiaryLoadingCopyWith<$Res> {
  _$DiaryLoadingCopyWithImpl(this._value, this._then);

  final DiaryLoading _value;
  // ignore: unused_field
  final $Res Function(DiaryLoading) _then;

  @override
  $Res call({
    Object? amount = freezed,
  }) {
    return _then(_value.copyWith(
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$DeletingEntriesCopyWith<$Res>
    implements $DiaryLoadingCopyWith<$Res> {
  factory _$DeletingEntriesCopyWith(
          _DeletingEntries value, $Res Function(_DeletingEntries) then) =
      __$DeletingEntriesCopyWithImpl<$Res>;
  @override
  $Res call({int amount});
}

/// @nodoc
class __$DeletingEntriesCopyWithImpl<$Res>
    extends _$DiaryLoadingCopyWithImpl<$Res>
    implements _$DeletingEntriesCopyWith<$Res> {
  __$DeletingEntriesCopyWithImpl(
      _DeletingEntries _value, $Res Function(_DeletingEntries) _then)
      : super(_value, (v) => _then(v as _DeletingEntries));

  @override
  _DeletingEntries get _value => super._value as _DeletingEntries;

  @override
  $Res call({
    Object? amount = freezed,
  }) {
    return _then(_DeletingEntries(
      amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_DeletingEntries implements _DeletingEntries {
  const _$_DeletingEntries(this.amount);

  @override
  final int amount;

  @override
  String toString() {
    return 'DiaryLoading.deletingEntries(amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeletingEntries &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(amount);

  @JsonKey(ignore: true)
  @override
  _$DeletingEntriesCopyWith<_DeletingEntries> get copyWith =>
      __$DeletingEntriesCopyWithImpl<_DeletingEntries>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int amount) deletingEntries,
  }) {
    return deletingEntries(amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int amount)? deletingEntries,
    required TResult orElse(),
  }) {
    if (deletingEntries != null) {
      return deletingEntries(amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeletingEntries value) deletingEntries,
  }) {
    return deletingEntries(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeletingEntries value)? deletingEntries,
    required TResult orElse(),
  }) {
    if (deletingEntries != null) {
      return deletingEntries(this);
    }
    return orElse();
  }
}

abstract class _DeletingEntries implements DiaryLoading {
  const factory _DeletingEntries(int amount) = _$_DeletingEntries;

  @override
  int get amount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DeletingEntriesCopyWith<_DeletingEntries> get copyWith =>
      throw _privateConstructorUsedError;
}
