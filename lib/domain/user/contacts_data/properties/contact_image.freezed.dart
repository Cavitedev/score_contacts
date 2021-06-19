// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'contact_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ContactImageTearOff {
  const _$ContactImageTearOff();

  _ContactImage call({String? url, PickedFile? file, bool deleted = false}) {
    return _ContactImage(
      url: url,
      file: file,
      deleted: deleted,
    );
  }
}

/// @nodoc
const $ContactImage = _$ContactImageTearOff();

/// @nodoc
mixin _$ContactImage {
  String? get url => throw _privateConstructorUsedError;
  PickedFile? get file => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContactImageCopyWith<ContactImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactImageCopyWith<$Res> {
  factory $ContactImageCopyWith(
          ContactImage value, $Res Function(ContactImage) then) =
      _$ContactImageCopyWithImpl<$Res>;
  $Res call({String? url, PickedFile? file, bool deleted});
}

/// @nodoc
class _$ContactImageCopyWithImpl<$Res> implements $ContactImageCopyWith<$Res> {
  _$ContactImageCopyWithImpl(this._value, this._then);

  final ContactImage _value;
  // ignore: unused_field
  final $Res Function(ContactImage) _then;

  @override
  $Res call({
    Object? url = freezed,
    Object? file = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_value.copyWith(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      file: file == freezed
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as PickedFile?,
      deleted: deleted == freezed
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$ContactImageCopyWith<$Res>
    implements $ContactImageCopyWith<$Res> {
  factory _$ContactImageCopyWith(
          _ContactImage value, $Res Function(_ContactImage) then) =
      __$ContactImageCopyWithImpl<$Res>;
  @override
  $Res call({String? url, PickedFile? file, bool deleted});
}

/// @nodoc
class __$ContactImageCopyWithImpl<$Res> extends _$ContactImageCopyWithImpl<$Res>
    implements _$ContactImageCopyWith<$Res> {
  __$ContactImageCopyWithImpl(
      _ContactImage _value, $Res Function(_ContactImage) _then)
      : super(_value, (v) => _then(v as _ContactImage));

  @override
  _ContactImage get _value => super._value as _ContactImage;

  @override
  $Res call({
    Object? url = freezed,
    Object? file = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_ContactImage(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      file: file == freezed
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as PickedFile?,
      deleted: deleted == freezed
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ContactImage implements _ContactImage {
  const _$_ContactImage({this.url, this.file, this.deleted = false})
      : assert(url != null || file != null || deleted == true,
            'This class requires either url or File unless it is deleted');

  @override
  final String? url;
  @override
  final PickedFile? file;
  @JsonKey(defaultValue: false)
  @override
  final bool deleted;

  @override
  String toString() {
    return 'ContactImage(url: $url, file: $file, deleted: $deleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ContactImage &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.file, file) ||
                const DeepCollectionEquality().equals(other.file, file)) &&
            (identical(other.deleted, deleted) ||
                const DeepCollectionEquality().equals(other.deleted, deleted)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(file) ^
      const DeepCollectionEquality().hash(deleted);

  @JsonKey(ignore: true)
  @override
  _$ContactImageCopyWith<_ContactImage> get copyWith =>
      __$ContactImageCopyWithImpl<_ContactImage>(this, _$identity);
}

abstract class _ContactImage implements ContactImage {
  const factory _ContactImage({String? url, PickedFile? file, bool deleted}) =
      _$_ContactImage;

  @override
  String? get url => throw _privateConstructorUsedError;
  @override
  PickedFile? get file => throw _privateConstructorUsedError;
  @override
  bool get deleted => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ContactImageCopyWith<_ContactImage> get copyWith =>
      throw _privateConstructorUsedError;
}
