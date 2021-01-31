// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'contacts_loading.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ContactsLoadingTearOff {
  const _$ContactsLoadingTearOff();

// ignore: unused_element
  _LoadingContacts loadingContacts({int amount}) {
    return _LoadingContacts(
      amount: amount,
    );
  }

// ignore: unused_element
  _DeletingContacts deletingContacts({@required int amount}) {
    return _DeletingContacts(
      amount: amount,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ContactsLoading = _$ContactsLoadingTearOff();

/// @nodoc
mixin _$ContactsLoading {
  int get amount;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadingContacts(int amount),
    @required TResult deletingContacts(int amount),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadingContacts(int amount),
    TResult deletingContacts(int amount),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadingContacts(_LoadingContacts value),
    @required TResult deletingContacts(_DeletingContacts value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadingContacts(_LoadingContacts value),
    TResult deletingContacts(_DeletingContacts value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $ContactsLoadingCopyWith<ContactsLoading> get copyWith;
}

/// @nodoc
abstract class $ContactsLoadingCopyWith<$Res> {
  factory $ContactsLoadingCopyWith(
          ContactsLoading value, $Res Function(ContactsLoading) then) =
      _$ContactsLoadingCopyWithImpl<$Res>;
  $Res call({int amount});
}

/// @nodoc
class _$ContactsLoadingCopyWithImpl<$Res>
    implements $ContactsLoadingCopyWith<$Res> {
  _$ContactsLoadingCopyWithImpl(this._value, this._then);

  final ContactsLoading _value;
  // ignore: unused_field
  final $Res Function(ContactsLoading) _then;

  @override
  $Res call({
    Object amount = freezed,
  }) {
    return _then(_value.copyWith(
      amount: amount == freezed ? _value.amount : amount as int,
    ));
  }
}

/// @nodoc
abstract class _$LoadingContactsCopyWith<$Res>
    implements $ContactsLoadingCopyWith<$Res> {
  factory _$LoadingContactsCopyWith(
          _LoadingContacts value, $Res Function(_LoadingContacts) then) =
      __$LoadingContactsCopyWithImpl<$Res>;
  @override
  $Res call({int amount});
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
    Object amount = freezed,
  }) {
    return _then(_LoadingContacts(
      amount: amount == freezed ? _value.amount : amount as int,
    ));
  }
}

/// @nodoc
class _$_LoadingContacts implements _LoadingContacts {
  const _$_LoadingContacts({this.amount});

  @override
  final int amount;

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
  TResult when<TResult extends Object>({
    @required TResult loadingContacts(int amount),
    @required TResult deletingContacts(int amount),
  }) {
    assert(loadingContacts != null);
    assert(deletingContacts != null);
    return loadingContacts(amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadingContacts(int amount),
    TResult deletingContacts(int amount),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadingContacts != null) {
      return loadingContacts(amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadingContacts(_LoadingContacts value),
    @required TResult deletingContacts(_DeletingContacts value),
  }) {
    assert(loadingContacts != null);
    assert(deletingContacts != null);
    return loadingContacts(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadingContacts(_LoadingContacts value),
    TResult deletingContacts(_DeletingContacts value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadingContacts != null) {
      return loadingContacts(this);
    }
    return orElse();
  }
}

abstract class _LoadingContacts implements ContactsLoading {
  const factory _LoadingContacts({int amount}) = _$_LoadingContacts;

  @override
  int get amount;
  @override
  @JsonKey(ignore: true)
  _$LoadingContactsCopyWith<_LoadingContacts> get copyWith;
}

/// @nodoc
abstract class _$DeletingContactsCopyWith<$Res>
    implements $ContactsLoadingCopyWith<$Res> {
  factory _$DeletingContactsCopyWith(
          _DeletingContacts value, $Res Function(_DeletingContacts) then) =
      __$DeletingContactsCopyWithImpl<$Res>;
  @override
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
    Object amount = freezed,
  }) {
    return _then(_DeletingContacts(
      amount: amount == freezed ? _value.amount : amount as int,
    ));
  }
}

/// @nodoc
class _$_DeletingContacts implements _DeletingContacts {
  const _$_DeletingContacts({@required this.amount}) : assert(amount != null);

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
  TResult when<TResult extends Object>({
    @required TResult loadingContacts(int amount),
    @required TResult deletingContacts(int amount),
  }) {
    assert(loadingContacts != null);
    assert(deletingContacts != null);
    return deletingContacts(amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadingContacts(int amount),
    TResult deletingContacts(int amount),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deletingContacts != null) {
      return deletingContacts(amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadingContacts(_LoadingContacts value),
    @required TResult deletingContacts(_DeletingContacts value),
  }) {
    assert(loadingContacts != null);
    assert(deletingContacts != null);
    return deletingContacts(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadingContacts(_LoadingContacts value),
    TResult deletingContacts(_DeletingContacts value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deletingContacts != null) {
      return deletingContacts(this);
    }
    return orElse();
  }
}

abstract class _DeletingContacts implements ContactsLoading {
  const factory _DeletingContacts({@required int amount}) = _$_DeletingContacts;

  @override
  int get amount;
  @override
  @JsonKey(ignore: true)
  _$DeletingContactsCopyWith<_DeletingContacts> get copyWith;
}
