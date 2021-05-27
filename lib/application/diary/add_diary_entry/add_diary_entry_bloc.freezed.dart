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

  _ initialize() {
    return const _();
  }
}

/// @nodoc
const $AddDiaryEntryEvent = _$AddDiaryEntryEventTearOff();

/// @nodoc
mixin _$AddDiaryEntryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ value) initialize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ value)? initialize,
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
abstract class _$CopyWith<$Res> {
  factory _$CopyWith(_ value, $Res Function(_) then) = __$CopyWithImpl<$Res>;
}

/// @nodoc
class __$CopyWithImpl<$Res> extends _$AddDiaryEntryEventCopyWithImpl<$Res>
    implements _$CopyWith<$Res> {
  __$CopyWithImpl(_ _value, $Res Function(_) _then)
      : super(_value, (v) => _then(v as _));

  @override
  _ get _value => super._value as _;
}

/// @nodoc

class _$_ implements _ {
  const _$_();

  @override
  String toString() {
    return 'AddDiaryEntryEvent.initialize()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ value) initialize,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ value)? initialize,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class _ implements AddDiaryEntryEvent {
  const factory _() = _$_;
}

/// @nodoc
class _$AddDiaryEntryStateTearOff {
  const _$AddDiaryEntryStateTearOff();

  _AddDiaryEntryState call({DiaryEntry? entry}) {
    return _AddDiaryEntryState(
      entry: entry,
    );
  }
}

/// @nodoc
const $AddDiaryEntryState = _$AddDiaryEntryStateTearOff();

/// @nodoc
mixin _$AddDiaryEntryState {
  DiaryEntry? get entry => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddDiaryEntryStateCopyWith<AddDiaryEntryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddDiaryEntryStateCopyWith<$Res> {
  factory $AddDiaryEntryStateCopyWith(
          AddDiaryEntryState value, $Res Function(AddDiaryEntryState) then) =
      _$AddDiaryEntryStateCopyWithImpl<$Res>;
  $Res call({DiaryEntry? entry});

  $DiaryEntryCopyWith<$Res>? get entry;
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
    Object? entry = freezed,
  }) {
    return _then(_value.copyWith(
      entry: entry == freezed
          ? _value.entry
          : entry // ignore: cast_nullable_to_non_nullable
              as DiaryEntry?,
    ));
  }

  @override
  $DiaryEntryCopyWith<$Res>? get entry {
    if (_value.entry == null) {
      return null;
    }

    return $DiaryEntryCopyWith<$Res>(_value.entry!, (value) {
      return _then(_value.copyWith(entry: value));
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
  $Res call({DiaryEntry? entry});

  @override
  $DiaryEntryCopyWith<$Res>? get entry;
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
    Object? entry = freezed,
  }) {
    return _then(_AddDiaryEntryState(
      entry: entry == freezed
          ? _value.entry
          : entry // ignore: cast_nullable_to_non_nullable
              as DiaryEntry?,
    ));
  }
}

/// @nodoc

class _$_AddDiaryEntryState implements _AddDiaryEntryState {
  const _$_AddDiaryEntryState({this.entry});

  @override
  final DiaryEntry? entry;

  @override
  String toString() {
    return 'AddDiaryEntryState(entry: $entry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddDiaryEntryState &&
            (identical(other.entry, entry) ||
                const DeepCollectionEquality().equals(other.entry, entry)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(entry);

  @JsonKey(ignore: true)
  @override
  _$AddDiaryEntryStateCopyWith<_AddDiaryEntryState> get copyWith =>
      __$AddDiaryEntryStateCopyWithImpl<_AddDiaryEntryState>(this, _$identity);
}

abstract class _AddDiaryEntryState implements AddDiaryEntryState {
  const factory _AddDiaryEntryState({DiaryEntry? entry}) =
      _$_AddDiaryEntryState;

  @override
  DiaryEntry? get entry => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AddDiaryEntryStateCopyWith<_AddDiaryEntryState> get copyWith =>
      throw _privateConstructorUsedError;
}
