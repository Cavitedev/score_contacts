// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FilterTearOff {
  const _$FilterTearOff();

// ignore: unused_element
  _Filter call({String filterSearch}) {
    return _Filter(
      filterSearch: filterSearch,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Filter = _$FilterTearOff();

/// @nodoc
mixin _$Filter {
  String get filterSearch;

  @JsonKey(ignore: true)
  $FilterCopyWith<Filter> get copyWith;
}

/// @nodoc
abstract class $FilterCopyWith<$Res> {
  factory $FilterCopyWith(Filter value, $Res Function(Filter) then) =
      _$FilterCopyWithImpl<$Res>;
  $Res call({String filterSearch});
}

/// @nodoc
class _$FilterCopyWithImpl<$Res> implements $FilterCopyWith<$Res> {
  _$FilterCopyWithImpl(this._value, this._then);

  final Filter _value;
  // ignore: unused_field
  final $Res Function(Filter) _then;

  @override
  $Res call({
    Object filterSearch = freezed,
  }) {
    return _then(_value.copyWith(
      filterSearch: filterSearch == freezed
          ? _value.filterSearch
          : filterSearch as String,
    ));
  }
}

/// @nodoc
abstract class _$FilterCopyWith<$Res> implements $FilterCopyWith<$Res> {
  factory _$FilterCopyWith(_Filter value, $Res Function(_Filter) then) =
      __$FilterCopyWithImpl<$Res>;
  @override
  $Res call({String filterSearch});
}

/// @nodoc
class __$FilterCopyWithImpl<$Res> extends _$FilterCopyWithImpl<$Res>
    implements _$FilterCopyWith<$Res> {
  __$FilterCopyWithImpl(_Filter _value, $Res Function(_Filter) _then)
      : super(_value, (v) => _then(v as _Filter));

  @override
  _Filter get _value => super._value as _Filter;

  @override
  $Res call({
    Object filterSearch = freezed,
  }) {
    return _then(_Filter(
      filterSearch: filterSearch == freezed
          ? _value.filterSearch
          : filterSearch as String,
    ));
  }
}

/// @nodoc
class _$_Filter extends _Filter {
  const _$_Filter({this.filterSearch}) : super._();

  @override
  final String filterSearch;

  @override
  String toString() {
    return 'Filter(filterSearch: $filterSearch)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Filter &&
            (identical(other.filterSearch, filterSearch) ||
                const DeepCollectionEquality()
                    .equals(other.filterSearch, filterSearch)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(filterSearch);

  @JsonKey(ignore: true)
  @override
  _$FilterCopyWith<_Filter> get copyWith =>
      __$FilterCopyWithImpl<_Filter>(this, _$identity);
}

abstract class _Filter extends Filter {
  const _Filter._() : super._();
  const factory _Filter({String filterSearch}) = _$_Filter;

  @override
  String get filterSearch;
  @override
  @JsonKey(ignore: true)
  _$FilterCopyWith<_Filter> get copyWith;
}
