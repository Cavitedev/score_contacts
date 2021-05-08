// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'contacts_loading.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ContactsLoadingTearOff {
  const _$ContactsLoadingTearOff();

  _LoadingContacts loadingContacts({int? amount}) {
    return _LoadingContacts(
      amount: amount,
    );
  }

  _DeletingContacts deletingContacts({required int amount}) {
    return _DeletingContacts(
      amount: amount,
    );
  }
}

/// @nodoc
const $ContactsLoading = _$ContactsLoadingTearOff();

/// @nodoc
mixin _$ContactsLoading {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? amount) loadingContacts,
    required TResult Function(int amount) deletingContacts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? amount)? loadingContacts,
    TResult Function(int amount)? deletingContacts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingContacts value) loadingContacts,
    required TResult Function(_DeletingContacts value) deletingContacts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingContacts value)? loadingContacts,
    TResult Function(_DeletingContacts value)? deletingContacts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactsLoadingCopyWith<$Res> {
  factory $ContactsLoadingCopyWith(
          ContactsLoading value, $Res Function(ContactsLoading) then) =
      _$ContactsLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$ContactsLoadingCopyWithImpl<$Res>
    implements $ContactsLoadingCopyWith<$Res> {
  _$ContactsLoadingCopyWithImpl(this._value, this._then);

  final ContactsLoading _value;
  // ignore: unused_field
  final $Res Function(ContactsLoading) _then;
}

/// @nodoc
abstract class _$LoadingContactsCopyWith<$Res> {
  factory _$LoadingContactsCopyWith(
          _LoadingContacts value, $Res Function(_LoadingContacts) then) =
      __$LoadingContactsCopyWithImpl<$Res>;
  $Res call({int? amount});
}

/// @nodoc
class __$LoadingContactsCopyWithImpl<$Res>
    extends _$ContactsLoadingCopyWithImpl<$Res>
    implements _$LoadingContactsCopyWith<$Res> {
  __$LoadingContactsCopyWithImpl(
      _LoadingContacts _value, $Res Function(_LoadingContacts) _then)
      : super(_value, (v) => _then(v as _LoadingContacts));

  @override
  _LoadingContacts get _value => super._value as _LoadingContacts;

  @override
  $Res call({
    Object? amount = freezed,
  }) {
    return _then(_LoadingContacts(
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_LoadingContacts implements _LoadingContacts {
  const _$_LoadingContacts({this.amount});

  @override
  final int? amount;

  @override
  String toString() {
    return 'ContactsLoading.loadingContacts(amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadingContacts &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(amount);

  @JsonKey(ignore: true)
  @override
  _$LoadingContactsCopyWith<_LoadingContacts> get copyWith =>
      __$LoadingContactsCopyWithImpl<_LoadingContacts>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? amount) loadingContacts,
    required TResult Function(int amount) deletingContacts,
  }) {
    return loadingContacts(amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? amount)? loadingContacts,
    TResult Function(int amount)? deletingContacts,
    required TResult orElse(),
  }) {
    if (loadingContacts != null) {
      return loadingContacts(amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingContacts value) loadingContacts,
    required TResult Function(_DeletingContacts value) deletingContacts,
  }) {
    return loadingContacts(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingContacts value)? loadingContacts,
    TResult Function(_DeletingContacts value)? deletingContacts,
    required TResult orElse(),
  }) {
    if (loadingContacts != null) {
      return loadingContacts(this);
    }
    return orElse();
  }
}

abstract class _LoadingContacts implements ContactsLoading {
  const factory _LoadingContacts({int? amount}) = _$_LoadingContacts;

  int? get amount => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadingContactsCopyWith<_LoadingContacts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DeletingContactsCopyWith<$Res> {
  factory _$DeletingContactsCopyWith(
          _DeletingContacts value, $Res Function(_DeletingContacts) then) =
      __$DeletingContactsCopyWithImpl<$Res>;
  $Res call({int amount});
}

/// @nodoc
class __$DeletingContactsCopyWithImpl<$Res>
    extends _$ContactsLoadingCopyWithImpl<$Res>
    implements _$DeletingContactsCopyWith<$Res> {
  __$DeletingContactsCopyWithImpl(
      _DeletingContacts _value, $Res Function(_DeletingContacts) _then)
      : super(_value, (v) => _then(v as _DeletingContacts));

  @override
  _DeletingContacts get _value => super._value as _DeletingContacts;

  @override
  $Res call({
    Object? amount = freezed,
  }) {
    return _then(_DeletingContacts(
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_DeletingContacts implements _DeletingContacts {
  const _$_DeletingContacts({required this.amount});

  @override
  final int amount;

  @override
  String toString() {
    return 'ContactsLoading.deletingContacts(amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeletingContacts &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(amount);

  @JsonKey(ignore: true)
  @override
  _$DeletingContactsCopyWith<_DeletingContacts> get copyWith =>
      __$DeletingContactsCopyWithImpl<_DeletingContacts>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? amount) loadingContacts,
    required TResult Function(int amount) deletingContacts,
  }) {
    return deletingContacts(amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? amount)? loadingContacts,
    TResult Function(int amount)? deletingContacts,
    required TResult orElse(),
  }) {
    if (deletingContacts != null) {
      return deletingContacts(amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingContacts value) loadingContacts,
    required TResult Function(_DeletingContacts value) deletingContacts,
  }) {
    return deletingContacts(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingContacts value)? loadingContacts,
    TResult Function(_DeletingContacts value)? deletingContacts,
    required TResult orElse(),
  }) {
    if (deletingContacts != null) {
      return deletingContacts(this);
    }
    return orElse();
  }
}

abstract class _DeletingContacts implements ContactsLoading {
  const factory _DeletingContacts({required int amount}) = _$_DeletingContacts;

  int get amount => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DeletingContactsCopyWith<_DeletingContacts> get copyWith =>
      throw _privateConstructorUsedError;
}
