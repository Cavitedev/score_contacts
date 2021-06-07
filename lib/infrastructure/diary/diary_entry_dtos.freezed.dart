// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'diary_entry_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DiaryEntryDto _$DiaryEntryDtoFromJson(Map<String, dynamic> json) {
  return _DiaryEntryDto.fromJson(json);
}

/// @nodoc
class _$DiaryEntryDtoTearOff {
  const _$DiaryEntryDtoTearOff();

  _DiaryEntryDto call(
      {@JsonKey(ignore: true)
          String? id,
      @JsonKey(name: "text")
          required String text,
      @DateTimeTimeStampConverter()
          required DateTime startDate,
      @DateTimeTimeStampConverter()
          required DateTime endDate,
      @JsonKey(name: "mentions")
          required List<MentionDto> mentionList,
      @JsonKey(name: DiaryEntryDto.mentionIdsName)
          required List<String> mentionIds}) {
    return _DiaryEntryDto(
      id: id,
      text: text,
      startDate: startDate,
      endDate: endDate,
      mentionList: mentionList,
      mentionIds: mentionIds,
    );
  }

  DiaryEntryDto fromJson(Map<String, Object> json) {
    return DiaryEntryDto.fromJson(json);
  }
}

/// @nodoc
const $DiaryEntryDto = _$DiaryEntryDtoTearOff();

/// @nodoc
mixin _$DiaryEntryDto {
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "text")
  String get text => throw _privateConstructorUsedError;
  @DateTimeTimeStampConverter()
  DateTime get startDate => throw _privateConstructorUsedError;
  @DateTimeTimeStampConverter()
  DateTime get endDate => throw _privateConstructorUsedError;
  @JsonKey(name: "mentions")
  List<MentionDto> get mentionList => throw _privateConstructorUsedError;
  @JsonKey(name: DiaryEntryDto.mentionIdsName)
  List<String> get mentionIds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiaryEntryDtoCopyWith<DiaryEntryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiaryEntryDtoCopyWith<$Res> {
  factory $DiaryEntryDtoCopyWith(
          DiaryEntryDto value, $Res Function(DiaryEntryDto) then) =
      _$DiaryEntryDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String? id,
      @JsonKey(name: "text") String text,
      @DateTimeTimeStampConverter() DateTime startDate,
      @DateTimeTimeStampConverter() DateTime endDate,
      @JsonKey(name: "mentions") List<MentionDto> mentionList,
      @JsonKey(name: DiaryEntryDto.mentionIdsName) List<String> mentionIds});
}

/// @nodoc
class _$DiaryEntryDtoCopyWithImpl<$Res>
    implements $DiaryEntryDtoCopyWith<$Res> {
  _$DiaryEntryDtoCopyWithImpl(this._value, this._then);

  final DiaryEntryDto _value;
  // ignore: unused_field
  final $Res Function(DiaryEntryDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? text = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? mentionList = freezed,
    Object? mentionIds = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      mentionList: mentionList == freezed
          ? _value.mentionList
          : mentionList // ignore: cast_nullable_to_non_nullable
              as List<MentionDto>,
      mentionIds: mentionIds == freezed
          ? _value.mentionIds
          : mentionIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$DiaryEntryDtoCopyWith<$Res>
    implements $DiaryEntryDtoCopyWith<$Res> {
  factory _$DiaryEntryDtoCopyWith(
          _DiaryEntryDto value, $Res Function(_DiaryEntryDto) then) =
      __$DiaryEntryDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String? id,
      @JsonKey(name: "text") String text,
      @DateTimeTimeStampConverter() DateTime startDate,
      @DateTimeTimeStampConverter() DateTime endDate,
      @JsonKey(name: "mentions") List<MentionDto> mentionList,
      @JsonKey(name: DiaryEntryDto.mentionIdsName) List<String> mentionIds});
}

/// @nodoc
class __$DiaryEntryDtoCopyWithImpl<$Res>
    extends _$DiaryEntryDtoCopyWithImpl<$Res>
    implements _$DiaryEntryDtoCopyWith<$Res> {
  __$DiaryEntryDtoCopyWithImpl(
      _DiaryEntryDto _value, $Res Function(_DiaryEntryDto) _then)
      : super(_value, (v) => _then(v as _DiaryEntryDto));

  @override
  _DiaryEntryDto get _value => super._value as _DiaryEntryDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? text = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? mentionList = freezed,
    Object? mentionIds = freezed,
  }) {
    return _then(_DiaryEntryDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      mentionList: mentionList == freezed
          ? _value.mentionList
          : mentionList // ignore: cast_nullable_to_non_nullable
              as List<MentionDto>,
      mentionIds: mentionIds == freezed
          ? _value.mentionIds
          : mentionIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DiaryEntryDto extends _DiaryEntryDto {
  const _$_DiaryEntryDto(
      {@JsonKey(ignore: true) this.id,
      @JsonKey(name: "text") required this.text,
      @DateTimeTimeStampConverter() required this.startDate,
      @DateTimeTimeStampConverter() required this.endDate,
      @JsonKey(name: "mentions") required this.mentionList,
      @JsonKey(name: DiaryEntryDto.mentionIdsName) required this.mentionIds})
      : super._();

  factory _$_DiaryEntryDto.fromJson(Map<String, dynamic> json) =>
      _$_$_DiaryEntryDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? id;
  @override
  @JsonKey(name: "text")
  final String text;
  @override
  @DateTimeTimeStampConverter()
  final DateTime startDate;
  @override
  @DateTimeTimeStampConverter()
  final DateTime endDate;
  @override
  @JsonKey(name: "mentions")
  final List<MentionDto> mentionList;
  @override
  @JsonKey(name: DiaryEntryDto.mentionIdsName)
  final List<String> mentionIds;

  @override
  String toString() {
    return 'DiaryEntryDto(id: $id, text: $text, startDate: $startDate, endDate: $endDate, mentionList: $mentionList, mentionIds: $mentionIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DiaryEntryDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)) &&
            (identical(other.startDate, startDate) ||
                const DeepCollectionEquality()
                    .equals(other.startDate, startDate)) &&
            (identical(other.endDate, endDate) ||
                const DeepCollectionEquality()
                    .equals(other.endDate, endDate)) &&
            (identical(other.mentionList, mentionList) ||
                const DeepCollectionEquality()
                    .equals(other.mentionList, mentionList)) &&
            (identical(other.mentionIds, mentionIds) ||
                const DeepCollectionEquality()
                    .equals(other.mentionIds, mentionIds)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(text) ^
      const DeepCollectionEquality().hash(startDate) ^
      const DeepCollectionEquality().hash(endDate) ^
      const DeepCollectionEquality().hash(mentionList) ^
      const DeepCollectionEquality().hash(mentionIds);

  @JsonKey(ignore: true)
  @override
  _$DiaryEntryDtoCopyWith<_DiaryEntryDto> get copyWith =>
      __$DiaryEntryDtoCopyWithImpl<_DiaryEntryDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DiaryEntryDtoToJson(this);
  }
}

abstract class _DiaryEntryDto extends DiaryEntryDto {
  const factory _DiaryEntryDto(
      {@JsonKey(ignore: true)
          String? id,
      @JsonKey(name: "text")
          required String text,
      @DateTimeTimeStampConverter()
          required DateTime startDate,
      @DateTimeTimeStampConverter()
          required DateTime endDate,
      @JsonKey(name: "mentions")
          required List<MentionDto> mentionList,
      @JsonKey(name: DiaryEntryDto.mentionIdsName)
          required List<String> mentionIds}) = _$_DiaryEntryDto;
  const _DiaryEntryDto._() : super._();

  factory _DiaryEntryDto.fromJson(Map<String, dynamic> json) =
      _$_DiaryEntryDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "text")
  String get text => throw _privateConstructorUsedError;
  @override
  @DateTimeTimeStampConverter()
  DateTime get startDate => throw _privateConstructorUsedError;
  @override
  @DateTimeTimeStampConverter()
  DateTime get endDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "mentions")
  List<MentionDto> get mentionList => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: DiaryEntryDto.mentionIdsName)
  List<String> get mentionIds => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DiaryEntryDtoCopyWith<_DiaryEntryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

MentionDto _$MentionDtoFromJson(Map<String, dynamic> json) {
  return _MentionDto.fromJson(json);
}

/// @nodoc
class _$MentionDtoTearOff {
  const _$MentionDtoTearOff();

  _MentionDto call(
      {required String id,
      required int startPos,
      required int endPos,
      @JsonKey(ignore: true) MentionableDto? mentionable}) {
    return _MentionDto(
      id: id,
      startPos: startPos,
      endPos: endPos,
      mentionable: mentionable,
    );
  }

  MentionDto fromJson(Map<String, Object> json) {
    return MentionDto.fromJson(json);
  }
}

/// @nodoc
const $MentionDto = _$MentionDtoTearOff();

/// @nodoc
mixin _$MentionDto {
  String get id => throw _privateConstructorUsedError;
  int get startPos => throw _privateConstructorUsedError;
  int get endPos => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  MentionableDto? get mentionable => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MentionDtoCopyWith<MentionDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MentionDtoCopyWith<$Res> {
  factory $MentionDtoCopyWith(
          MentionDto value, $Res Function(MentionDto) then) =
      _$MentionDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      int startPos,
      int endPos,
      @JsonKey(ignore: true) MentionableDto? mentionable});

  $MentionableDtoCopyWith<$Res>? get mentionable;
}

/// @nodoc
class _$MentionDtoCopyWithImpl<$Res> implements $MentionDtoCopyWith<$Res> {
  _$MentionDtoCopyWithImpl(this._value, this._then);

  final MentionDto _value;
  // ignore: unused_field
  final $Res Function(MentionDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? startPos = freezed,
    Object? endPos = freezed,
    Object? mentionable = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      startPos: startPos == freezed
          ? _value.startPos
          : startPos // ignore: cast_nullable_to_non_nullable
              as int,
      endPos: endPos == freezed
          ? _value.endPos
          : endPos // ignore: cast_nullable_to_non_nullable
              as int,
      mentionable: mentionable == freezed
          ? _value.mentionable
          : mentionable // ignore: cast_nullable_to_non_nullable
              as MentionableDto?,
    ));
  }

  @override
  $MentionableDtoCopyWith<$Res>? get mentionable {
    if (_value.mentionable == null) {
      return null;
    }

    return $MentionableDtoCopyWith<$Res>(_value.mentionable!, (value) {
      return _then(_value.copyWith(mentionable: value));
    });
  }
}

/// @nodoc
abstract class _$MentionDtoCopyWith<$Res> implements $MentionDtoCopyWith<$Res> {
  factory _$MentionDtoCopyWith(
          _MentionDto value, $Res Function(_MentionDto) then) =
      __$MentionDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      int startPos,
      int endPos,
      @JsonKey(ignore: true) MentionableDto? mentionable});

  @override
  $MentionableDtoCopyWith<$Res>? get mentionable;
}

/// @nodoc
class __$MentionDtoCopyWithImpl<$Res> extends _$MentionDtoCopyWithImpl<$Res>
    implements _$MentionDtoCopyWith<$Res> {
  __$MentionDtoCopyWithImpl(
      _MentionDto _value, $Res Function(_MentionDto) _then)
      : super(_value, (v) => _then(v as _MentionDto));

  @override
  _MentionDto get _value => super._value as _MentionDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? startPos = freezed,
    Object? endPos = freezed,
    Object? mentionable = freezed,
  }) {
    return _then(_MentionDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      startPos: startPos == freezed
          ? _value.startPos
          : startPos // ignore: cast_nullable_to_non_nullable
              as int,
      endPos: endPos == freezed
          ? _value.endPos
          : endPos // ignore: cast_nullable_to_non_nullable
              as int,
      mentionable: mentionable == freezed
          ? _value.mentionable
          : mentionable // ignore: cast_nullable_to_non_nullable
              as MentionableDto?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MentionDto extends _MentionDto {
  const _$_MentionDto(
      {required this.id,
      required this.startPos,
      required this.endPos,
      @JsonKey(ignore: true) this.mentionable})
      : super._();

  factory _$_MentionDto.fromJson(Map<String, dynamic> json) =>
      _$_$_MentionDtoFromJson(json);

  @override
  final String id;
  @override
  final int startPos;
  @override
  final int endPos;
  @override
  @JsonKey(ignore: true)
  final MentionableDto? mentionable;

  @override
  String toString() {
    return 'MentionDto(id: $id, startPos: $startPos, endPos: $endPos, mentionable: $mentionable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MentionDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.startPos, startPos) ||
                const DeepCollectionEquality()
                    .equals(other.startPos, startPos)) &&
            (identical(other.endPos, endPos) ||
                const DeepCollectionEquality().equals(other.endPos, endPos)) &&
            (identical(other.mentionable, mentionable) ||
                const DeepCollectionEquality()
                    .equals(other.mentionable, mentionable)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(startPos) ^
      const DeepCollectionEquality().hash(endPos) ^
      const DeepCollectionEquality().hash(mentionable);

  @JsonKey(ignore: true)
  @override
  _$MentionDtoCopyWith<_MentionDto> get copyWith =>
      __$MentionDtoCopyWithImpl<_MentionDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MentionDtoToJson(this);
  }
}

abstract class _MentionDto extends MentionDto {
  const factory _MentionDto(
      {required String id,
      required int startPos,
      required int endPos,
      @JsonKey(ignore: true) MentionableDto? mentionable}) = _$_MentionDto;
  const _MentionDto._() : super._();

  factory _MentionDto.fromJson(Map<String, dynamic> json) =
      _$_MentionDto.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  int get startPos => throw _privateConstructorUsedError;
  @override
  int get endPos => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  MentionableDto? get mentionable => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MentionDtoCopyWith<_MentionDto> get copyWith =>
      throw _privateConstructorUsedError;
}

MentionableDto _$MentionableDtoFromJson(Map<String, dynamic> json) {
  return _MentionableDto.fromJson(json);
}

/// @nodoc
class _$MentionableDtoTearOff {
  const _$MentionableDtoTearOff();

  _MentionableDto call({required String name, String? imageLink}) {
    return _MentionableDto(
      name: name,
      imageLink: imageLink,
    );
  }

  MentionableDto fromJson(Map<String, Object> json) {
    return MentionableDto.fromJson(json);
  }
}

/// @nodoc
const $MentionableDto = _$MentionableDtoTearOff();

/// @nodoc
mixin _$MentionableDto {
  String get name => throw _privateConstructorUsedError;
  String? get imageLink => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MentionableDtoCopyWith<MentionableDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MentionableDtoCopyWith<$Res> {
  factory $MentionableDtoCopyWith(
          MentionableDto value, $Res Function(MentionableDto) then) =
      _$MentionableDtoCopyWithImpl<$Res>;
  $Res call({String name, String? imageLink});
}

/// @nodoc
class _$MentionableDtoCopyWithImpl<$Res>
    implements $MentionableDtoCopyWith<$Res> {
  _$MentionableDtoCopyWithImpl(this._value, this._then);

  final MentionableDto _value;
  // ignore: unused_field
  final $Res Function(MentionableDto) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? imageLink = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageLink: imageLink == freezed
          ? _value.imageLink
          : imageLink // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$MentionableDtoCopyWith<$Res>
    implements $MentionableDtoCopyWith<$Res> {
  factory _$MentionableDtoCopyWith(
          _MentionableDto value, $Res Function(_MentionableDto) then) =
      __$MentionableDtoCopyWithImpl<$Res>;
  @override
  $Res call({String name, String? imageLink});
}

/// @nodoc
class __$MentionableDtoCopyWithImpl<$Res>
    extends _$MentionableDtoCopyWithImpl<$Res>
    implements _$MentionableDtoCopyWith<$Res> {
  __$MentionableDtoCopyWithImpl(
      _MentionableDto _value, $Res Function(_MentionableDto) _then)
      : super(_value, (v) => _then(v as _MentionableDto));

  @override
  _MentionableDto get _value => super._value as _MentionableDto;

  @override
  $Res call({
    Object? name = freezed,
    Object? imageLink = freezed,
  }) {
    return _then(_MentionableDto(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageLink: imageLink == freezed
          ? _value.imageLink
          : imageLink // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MentionableDto extends _MentionableDto {
  const _$_MentionableDto({required this.name, this.imageLink}) : super._();

  factory _$_MentionableDto.fromJson(Map<String, dynamic> json) =>
      _$_$_MentionableDtoFromJson(json);

  @override
  final String name;
  @override
  final String? imageLink;

  @override
  String toString() {
    return 'MentionableDto(name: $name, imageLink: $imageLink)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MentionableDto &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.imageLink, imageLink) ||
                const DeepCollectionEquality()
                    .equals(other.imageLink, imageLink)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(imageLink);

  @JsonKey(ignore: true)
  @override
  _$MentionableDtoCopyWith<_MentionableDto> get copyWith =>
      __$MentionableDtoCopyWithImpl<_MentionableDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MentionableDtoToJson(this);
  }
}

abstract class _MentionableDto extends MentionableDto {
  const factory _MentionableDto({required String name, String? imageLink}) =
      _$_MentionableDto;
  const _MentionableDto._() : super._();

  factory _MentionableDto.fromJson(Map<String, dynamic> json) =
      _$_MentionableDto.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String? get imageLink => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MentionableDtoCopyWith<_MentionableDto> get copyWith =>
      throw _privateConstructorUsedError;
}
