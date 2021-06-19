// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'add_contact_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AddContactEventTearOff {
  const _$AddContactEventTearOff();

  _Initialize initialize(Option<Contact> contactOption, String countryCode) {
    return _Initialize(
      contactOption,
      countryCode,
    );
  }

  _Saved saved(String countryCode) {
    return _Saved(
      countryCode,
    );
  }

  _LabelObjectChanged labelObjectChanged(ILabelObject labelObject, int pos) {
    return _LabelObjectChanged(
      labelObject,
      pos,
    );
  }

  _AddLabelObject addLabelObject(ILabelObject labelObject) {
    return _AddLabelObject(
      labelObject,
    );
  }

  _RemoveLabelObject removeLabelObject(Type labelObjectType, int pos) {
    return _RemoveLabelObject(
      labelObjectType,
      pos,
    );
  }

  _UpdateNameData updateNameData(NameData nameData) {
    return _UpdateNameData(
      nameData,
    );
  }

  _UpdateCompany updateCompany(Company company, int index) {
    return _UpdateCompany(
      company,
      index,
    );
  }

  _AddCompany addCompany() {
    return const _AddCompany();
  }

  _DeleteCompany deleteCompany(int index) {
    return _DeleteCompany(
      index,
    );
  }

  _UpdateImage updateImage(PickedFile? file) {
    return _UpdateImage(
      file,
    );
  }
}

/// @nodoc
const $AddContactEvent = _$AddContactEventTearOff();

/// @nodoc
mixin _$AddContactEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Contact> contactOption, String countryCode)
        initialize,
    required TResult Function(String countryCode) saved,
    required TResult Function(ILabelObject labelObject, int pos)
        labelObjectChanged,
    required TResult Function(ILabelObject labelObject) addLabelObject,
    required TResult Function(Type labelObjectType, int pos) removeLabelObject,
    required TResult Function(NameData nameData) updateNameData,
    required TResult Function(Company company, int index) updateCompany,
    required TResult Function() addCompany,
    required TResult Function(int index) deleteCompany,
    required TResult Function(PickedFile? file) updateImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Contact> contactOption, String countryCode)?
        initialize,
    TResult Function(String countryCode)? saved,
    TResult Function(ILabelObject labelObject, int pos)? labelObjectChanged,
    TResult Function(ILabelObject labelObject)? addLabelObject,
    TResult Function(Type labelObjectType, int pos)? removeLabelObject,
    TResult Function(NameData nameData)? updateNameData,
    TResult Function(Company company, int index)? updateCompany,
    TResult Function()? addCompany,
    TResult Function(int index)? deleteCompany,
    TResult Function(PickedFile? file)? updateImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_Saved value) saved,
    required TResult Function(_LabelObjectChanged value) labelObjectChanged,
    required TResult Function(_AddLabelObject value) addLabelObject,
    required TResult Function(_RemoveLabelObject value) removeLabelObject,
    required TResult Function(_UpdateNameData value) updateNameData,
    required TResult Function(_UpdateCompany value) updateCompany,
    required TResult Function(_AddCompany value) addCompany,
    required TResult Function(_DeleteCompany value) deleteCompany,
    required TResult Function(_UpdateImage value) updateImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_Saved value)? saved,
    TResult Function(_LabelObjectChanged value)? labelObjectChanged,
    TResult Function(_AddLabelObject value)? addLabelObject,
    TResult Function(_RemoveLabelObject value)? removeLabelObject,
    TResult Function(_UpdateNameData value)? updateNameData,
    TResult Function(_UpdateCompany value)? updateCompany,
    TResult Function(_AddCompany value)? addCompany,
    TResult Function(_DeleteCompany value)? deleteCompany,
    TResult Function(_UpdateImage value)? updateImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddContactEventCopyWith<$Res> {
  factory $AddContactEventCopyWith(
          AddContactEvent value, $Res Function(AddContactEvent) then) =
      _$AddContactEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddContactEventCopyWithImpl<$Res>
    implements $AddContactEventCopyWith<$Res> {
  _$AddContactEventCopyWithImpl(this._value, this._then);

  final AddContactEvent _value;
  // ignore: unused_field
  final $Res Function(AddContactEvent) _then;
}

/// @nodoc
abstract class _$InitializeCopyWith<$Res> {
  factory _$InitializeCopyWith(
          _Initialize value, $Res Function(_Initialize) then) =
      __$InitializeCopyWithImpl<$Res>;
  $Res call({Option<Contact> contactOption, String countryCode});
}

/// @nodoc
class __$InitializeCopyWithImpl<$Res>
    extends _$AddContactEventCopyWithImpl<$Res>
    implements _$InitializeCopyWith<$Res> {
  __$InitializeCopyWithImpl(
      _Initialize _value, $Res Function(_Initialize) _then)
      : super(_value, (v) => _then(v as _Initialize));

  @override
  _Initialize get _value => super._value as _Initialize;

  @override
  $Res call({
    Object? contactOption = freezed,
    Object? countryCode = freezed,
  }) {
    return _then(_Initialize(
      contactOption == freezed
          ? _value.contactOption
          : contactOption // ignore: cast_nullable_to_non_nullable
              as Option<Contact>,
      countryCode == freezed
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Initialize with DiagnosticableTreeMixin implements _Initialize {
  const _$_Initialize(this.contactOption, this.countryCode);

  @override
  final Option<Contact> contactOption;
  @override
  final String countryCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddContactEvent.initialize(contactOption: $contactOption, countryCode: $countryCode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddContactEvent.initialize'))
      ..add(DiagnosticsProperty('contactOption', contactOption))
      ..add(DiagnosticsProperty('countryCode', countryCode));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialize &&
            (identical(other.contactOption, contactOption) ||
                const DeepCollectionEquality()
                    .equals(other.contactOption, contactOption)) &&
            (identical(other.countryCode, countryCode) ||
                const DeepCollectionEquality()
                    .equals(other.countryCode, countryCode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(contactOption) ^
      const DeepCollectionEquality().hash(countryCode);

  @JsonKey(ignore: true)
  @override
  _$InitializeCopyWith<_Initialize> get copyWith =>
      __$InitializeCopyWithImpl<_Initialize>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Contact> contactOption, String countryCode)
        initialize,
    required TResult Function(String countryCode) saved,
    required TResult Function(ILabelObject labelObject, int pos)
        labelObjectChanged,
    required TResult Function(ILabelObject labelObject) addLabelObject,
    required TResult Function(Type labelObjectType, int pos) removeLabelObject,
    required TResult Function(NameData nameData) updateNameData,
    required TResult Function(Company company, int index) updateCompany,
    required TResult Function() addCompany,
    required TResult Function(int index) deleteCompany,
    required TResult Function(PickedFile? file) updateImage,
  }) {
    return initialize(contactOption, countryCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Contact> contactOption, String countryCode)?
        initialize,
    TResult Function(String countryCode)? saved,
    TResult Function(ILabelObject labelObject, int pos)? labelObjectChanged,
    TResult Function(ILabelObject labelObject)? addLabelObject,
    TResult Function(Type labelObjectType, int pos)? removeLabelObject,
    TResult Function(NameData nameData)? updateNameData,
    TResult Function(Company company, int index)? updateCompany,
    TResult Function()? addCompany,
    TResult Function(int index)? deleteCompany,
    TResult Function(PickedFile? file)? updateImage,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(contactOption, countryCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_Saved value) saved,
    required TResult Function(_LabelObjectChanged value) labelObjectChanged,
    required TResult Function(_AddLabelObject value) addLabelObject,
    required TResult Function(_RemoveLabelObject value) removeLabelObject,
    required TResult Function(_UpdateNameData value) updateNameData,
    required TResult Function(_UpdateCompany value) updateCompany,
    required TResult Function(_AddCompany value) addCompany,
    required TResult Function(_DeleteCompany value) deleteCompany,
    required TResult Function(_UpdateImage value) updateImage,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_Saved value)? saved,
    TResult Function(_LabelObjectChanged value)? labelObjectChanged,
    TResult Function(_AddLabelObject value)? addLabelObject,
    TResult Function(_RemoveLabelObject value)? removeLabelObject,
    TResult Function(_UpdateNameData value)? updateNameData,
    TResult Function(_UpdateCompany value)? updateCompany,
    TResult Function(_AddCompany value)? addCompany,
    TResult Function(_DeleteCompany value)? deleteCompany,
    TResult Function(_UpdateImage value)? updateImage,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class _Initialize implements AddContactEvent {
  const factory _Initialize(Option<Contact> contactOption, String countryCode) =
      _$_Initialize;

  Option<Contact> get contactOption => throw _privateConstructorUsedError;
  String get countryCode => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$InitializeCopyWith<_Initialize> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SavedCopyWith<$Res> {
  factory _$SavedCopyWith(_Saved value, $Res Function(_Saved) then) =
      __$SavedCopyWithImpl<$Res>;
  $Res call({String countryCode});
}

/// @nodoc
class __$SavedCopyWithImpl<$Res> extends _$AddContactEventCopyWithImpl<$Res>
    implements _$SavedCopyWith<$Res> {
  __$SavedCopyWithImpl(_Saved _value, $Res Function(_Saved) _then)
      : super(_value, (v) => _then(v as _Saved));

  @override
  _Saved get _value => super._value as _Saved;

  @override
  $Res call({
    Object? countryCode = freezed,
  }) {
    return _then(_Saved(
      countryCode == freezed
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Saved with DiagnosticableTreeMixin implements _Saved {
  const _$_Saved(this.countryCode);

  @override
  final String countryCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddContactEvent.saved(countryCode: $countryCode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddContactEvent.saved'))
      ..add(DiagnosticsProperty('countryCode', countryCode));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Saved &&
            (identical(other.countryCode, countryCode) ||
                const DeepCollectionEquality()
                    .equals(other.countryCode, countryCode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(countryCode);

  @JsonKey(ignore: true)
  @override
  _$SavedCopyWith<_Saved> get copyWith =>
      __$SavedCopyWithImpl<_Saved>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Contact> contactOption, String countryCode)
        initialize,
    required TResult Function(String countryCode) saved,
    required TResult Function(ILabelObject labelObject, int pos)
        labelObjectChanged,
    required TResult Function(ILabelObject labelObject) addLabelObject,
    required TResult Function(Type labelObjectType, int pos) removeLabelObject,
    required TResult Function(NameData nameData) updateNameData,
    required TResult Function(Company company, int index) updateCompany,
    required TResult Function() addCompany,
    required TResult Function(int index) deleteCompany,
    required TResult Function(PickedFile? file) updateImage,
  }) {
    return saved(countryCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Contact> contactOption, String countryCode)?
        initialize,
    TResult Function(String countryCode)? saved,
    TResult Function(ILabelObject labelObject, int pos)? labelObjectChanged,
    TResult Function(ILabelObject labelObject)? addLabelObject,
    TResult Function(Type labelObjectType, int pos)? removeLabelObject,
    TResult Function(NameData nameData)? updateNameData,
    TResult Function(Company company, int index)? updateCompany,
    TResult Function()? addCompany,
    TResult Function(int index)? deleteCompany,
    TResult Function(PickedFile? file)? updateImage,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(countryCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_Saved value) saved,
    required TResult Function(_LabelObjectChanged value) labelObjectChanged,
    required TResult Function(_AddLabelObject value) addLabelObject,
    required TResult Function(_RemoveLabelObject value) removeLabelObject,
    required TResult Function(_UpdateNameData value) updateNameData,
    required TResult Function(_UpdateCompany value) updateCompany,
    required TResult Function(_AddCompany value) addCompany,
    required TResult Function(_DeleteCompany value) deleteCompany,
    required TResult Function(_UpdateImage value) updateImage,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_Saved value)? saved,
    TResult Function(_LabelObjectChanged value)? labelObjectChanged,
    TResult Function(_AddLabelObject value)? addLabelObject,
    TResult Function(_RemoveLabelObject value)? removeLabelObject,
    TResult Function(_UpdateNameData value)? updateNameData,
    TResult Function(_UpdateCompany value)? updateCompany,
    TResult Function(_AddCompany value)? addCompany,
    TResult Function(_DeleteCompany value)? deleteCompany,
    TResult Function(_UpdateImage value)? updateImage,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements AddContactEvent {
  const factory _Saved(String countryCode) = _$_Saved;

  String get countryCode => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SavedCopyWith<_Saved> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LabelObjectChangedCopyWith<$Res> {
  factory _$LabelObjectChangedCopyWith(
          _LabelObjectChanged value, $Res Function(_LabelObjectChanged) then) =
      __$LabelObjectChangedCopyWithImpl<$Res>;
  $Res call({ILabelObject labelObject, int pos});
}

/// @nodoc
class __$LabelObjectChangedCopyWithImpl<$Res>
    extends _$AddContactEventCopyWithImpl<$Res>
    implements _$LabelObjectChangedCopyWith<$Res> {
  __$LabelObjectChangedCopyWithImpl(
      _LabelObjectChanged _value, $Res Function(_LabelObjectChanged) _then)
      : super(_value, (v) => _then(v as _LabelObjectChanged));

  @override
  _LabelObjectChanged get _value => super._value as _LabelObjectChanged;

  @override
  $Res call({
    Object? labelObject = freezed,
    Object? pos = freezed,
  }) {
    return _then(_LabelObjectChanged(
      labelObject == freezed
          ? _value.labelObject
          : labelObject // ignore: cast_nullable_to_non_nullable
              as ILabelObject,
      pos == freezed
          ? _value.pos
          : pos // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_LabelObjectChanged
    with DiagnosticableTreeMixin
    implements _LabelObjectChanged {
  const _$_LabelObjectChanged(this.labelObject, this.pos);

  @override
  final ILabelObject labelObject;
  @override
  final int pos;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddContactEvent.labelObjectChanged(labelObject: $labelObject, pos: $pos)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddContactEvent.labelObjectChanged'))
      ..add(DiagnosticsProperty('labelObject', labelObject))
      ..add(DiagnosticsProperty('pos', pos));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LabelObjectChanged &&
            (identical(other.labelObject, labelObject) ||
                const DeepCollectionEquality()
                    .equals(other.labelObject, labelObject)) &&
            (identical(other.pos, pos) ||
                const DeepCollectionEquality().equals(other.pos, pos)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(labelObject) ^
      const DeepCollectionEquality().hash(pos);

  @JsonKey(ignore: true)
  @override
  _$LabelObjectChangedCopyWith<_LabelObjectChanged> get copyWith =>
      __$LabelObjectChangedCopyWithImpl<_LabelObjectChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Contact> contactOption, String countryCode)
        initialize,
    required TResult Function(String countryCode) saved,
    required TResult Function(ILabelObject labelObject, int pos)
        labelObjectChanged,
    required TResult Function(ILabelObject labelObject) addLabelObject,
    required TResult Function(Type labelObjectType, int pos) removeLabelObject,
    required TResult Function(NameData nameData) updateNameData,
    required TResult Function(Company company, int index) updateCompany,
    required TResult Function() addCompany,
    required TResult Function(int index) deleteCompany,
    required TResult Function(PickedFile? file) updateImage,
  }) {
    return labelObjectChanged(labelObject, pos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Contact> contactOption, String countryCode)?
        initialize,
    TResult Function(String countryCode)? saved,
    TResult Function(ILabelObject labelObject, int pos)? labelObjectChanged,
    TResult Function(ILabelObject labelObject)? addLabelObject,
    TResult Function(Type labelObjectType, int pos)? removeLabelObject,
    TResult Function(NameData nameData)? updateNameData,
    TResult Function(Company company, int index)? updateCompany,
    TResult Function()? addCompany,
    TResult Function(int index)? deleteCompany,
    TResult Function(PickedFile? file)? updateImage,
    required TResult orElse(),
  }) {
    if (labelObjectChanged != null) {
      return labelObjectChanged(labelObject, pos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_Saved value) saved,
    required TResult Function(_LabelObjectChanged value) labelObjectChanged,
    required TResult Function(_AddLabelObject value) addLabelObject,
    required TResult Function(_RemoveLabelObject value) removeLabelObject,
    required TResult Function(_UpdateNameData value) updateNameData,
    required TResult Function(_UpdateCompany value) updateCompany,
    required TResult Function(_AddCompany value) addCompany,
    required TResult Function(_DeleteCompany value) deleteCompany,
    required TResult Function(_UpdateImage value) updateImage,
  }) {
    return labelObjectChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_Saved value)? saved,
    TResult Function(_LabelObjectChanged value)? labelObjectChanged,
    TResult Function(_AddLabelObject value)? addLabelObject,
    TResult Function(_RemoveLabelObject value)? removeLabelObject,
    TResult Function(_UpdateNameData value)? updateNameData,
    TResult Function(_UpdateCompany value)? updateCompany,
    TResult Function(_AddCompany value)? addCompany,
    TResult Function(_DeleteCompany value)? deleteCompany,
    TResult Function(_UpdateImage value)? updateImage,
    required TResult orElse(),
  }) {
    if (labelObjectChanged != null) {
      return labelObjectChanged(this);
    }
    return orElse();
  }
}

abstract class _LabelObjectChanged implements AddContactEvent {
  const factory _LabelObjectChanged(ILabelObject labelObject, int pos) =
      _$_LabelObjectChanged;

  ILabelObject get labelObject => throw _privateConstructorUsedError;
  int get pos => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LabelObjectChangedCopyWith<_LabelObjectChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AddLabelObjectCopyWith<$Res> {
  factory _$AddLabelObjectCopyWith(
          _AddLabelObject value, $Res Function(_AddLabelObject) then) =
      __$AddLabelObjectCopyWithImpl<$Res>;
  $Res call({ILabelObject labelObject});
}

/// @nodoc
class __$AddLabelObjectCopyWithImpl<$Res>
    extends _$AddContactEventCopyWithImpl<$Res>
    implements _$AddLabelObjectCopyWith<$Res> {
  __$AddLabelObjectCopyWithImpl(
      _AddLabelObject _value, $Res Function(_AddLabelObject) _then)
      : super(_value, (v) => _then(v as _AddLabelObject));

  @override
  _AddLabelObject get _value => super._value as _AddLabelObject;

  @override
  $Res call({
    Object? labelObject = freezed,
  }) {
    return _then(_AddLabelObject(
      labelObject == freezed
          ? _value.labelObject
          : labelObject // ignore: cast_nullable_to_non_nullable
              as ILabelObject,
    ));
  }
}

/// @nodoc

class _$_AddLabelObject
    with DiagnosticableTreeMixin
    implements _AddLabelObject {
  const _$_AddLabelObject(this.labelObject);

  @override
  final ILabelObject labelObject;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddContactEvent.addLabelObject(labelObject: $labelObject)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddContactEvent.addLabelObject'))
      ..add(DiagnosticsProperty('labelObject', labelObject));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddLabelObject &&
            (identical(other.labelObject, labelObject) ||
                const DeepCollectionEquality()
                    .equals(other.labelObject, labelObject)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(labelObject);

  @JsonKey(ignore: true)
  @override
  _$AddLabelObjectCopyWith<_AddLabelObject> get copyWith =>
      __$AddLabelObjectCopyWithImpl<_AddLabelObject>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Contact> contactOption, String countryCode)
        initialize,
    required TResult Function(String countryCode) saved,
    required TResult Function(ILabelObject labelObject, int pos)
        labelObjectChanged,
    required TResult Function(ILabelObject labelObject) addLabelObject,
    required TResult Function(Type labelObjectType, int pos) removeLabelObject,
    required TResult Function(NameData nameData) updateNameData,
    required TResult Function(Company company, int index) updateCompany,
    required TResult Function() addCompany,
    required TResult Function(int index) deleteCompany,
    required TResult Function(PickedFile? file) updateImage,
  }) {
    return addLabelObject(labelObject);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Contact> contactOption, String countryCode)?
        initialize,
    TResult Function(String countryCode)? saved,
    TResult Function(ILabelObject labelObject, int pos)? labelObjectChanged,
    TResult Function(ILabelObject labelObject)? addLabelObject,
    TResult Function(Type labelObjectType, int pos)? removeLabelObject,
    TResult Function(NameData nameData)? updateNameData,
    TResult Function(Company company, int index)? updateCompany,
    TResult Function()? addCompany,
    TResult Function(int index)? deleteCompany,
    TResult Function(PickedFile? file)? updateImage,
    required TResult orElse(),
  }) {
    if (addLabelObject != null) {
      return addLabelObject(labelObject);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_Saved value) saved,
    required TResult Function(_LabelObjectChanged value) labelObjectChanged,
    required TResult Function(_AddLabelObject value) addLabelObject,
    required TResult Function(_RemoveLabelObject value) removeLabelObject,
    required TResult Function(_UpdateNameData value) updateNameData,
    required TResult Function(_UpdateCompany value) updateCompany,
    required TResult Function(_AddCompany value) addCompany,
    required TResult Function(_DeleteCompany value) deleteCompany,
    required TResult Function(_UpdateImage value) updateImage,
  }) {
    return addLabelObject(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_Saved value)? saved,
    TResult Function(_LabelObjectChanged value)? labelObjectChanged,
    TResult Function(_AddLabelObject value)? addLabelObject,
    TResult Function(_RemoveLabelObject value)? removeLabelObject,
    TResult Function(_UpdateNameData value)? updateNameData,
    TResult Function(_UpdateCompany value)? updateCompany,
    TResult Function(_AddCompany value)? addCompany,
    TResult Function(_DeleteCompany value)? deleteCompany,
    TResult Function(_UpdateImage value)? updateImage,
    required TResult orElse(),
  }) {
    if (addLabelObject != null) {
      return addLabelObject(this);
    }
    return orElse();
  }
}

abstract class _AddLabelObject implements AddContactEvent {
  const factory _AddLabelObject(ILabelObject labelObject) = _$_AddLabelObject;

  ILabelObject get labelObject => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AddLabelObjectCopyWith<_AddLabelObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RemoveLabelObjectCopyWith<$Res> {
  factory _$RemoveLabelObjectCopyWith(
          _RemoveLabelObject value, $Res Function(_RemoveLabelObject) then) =
      __$RemoveLabelObjectCopyWithImpl<$Res>;
  $Res call({Type labelObjectType, int pos});
}

/// @nodoc
class __$RemoveLabelObjectCopyWithImpl<$Res>
    extends _$AddContactEventCopyWithImpl<$Res>
    implements _$RemoveLabelObjectCopyWith<$Res> {
  __$RemoveLabelObjectCopyWithImpl(
      _RemoveLabelObject _value, $Res Function(_RemoveLabelObject) _then)
      : super(_value, (v) => _then(v as _RemoveLabelObject));

  @override
  _RemoveLabelObject get _value => super._value as _RemoveLabelObject;

  @override
  $Res call({
    Object? labelObjectType = freezed,
    Object? pos = freezed,
  }) {
    return _then(_RemoveLabelObject(
      labelObjectType == freezed
          ? _value.labelObjectType
          : labelObjectType // ignore: cast_nullable_to_non_nullable
              as Type,
      pos == freezed
          ? _value.pos
          : pos // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_RemoveLabelObject
    with DiagnosticableTreeMixin
    implements _RemoveLabelObject {
  const _$_RemoveLabelObject(this.labelObjectType, this.pos);

  @override
  final Type labelObjectType;
  @override
  final int pos;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddContactEvent.removeLabelObject(labelObjectType: $labelObjectType, pos: $pos)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddContactEvent.removeLabelObject'))
      ..add(DiagnosticsProperty('labelObjectType', labelObjectType))
      ..add(DiagnosticsProperty('pos', pos));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RemoveLabelObject &&
            (identical(other.labelObjectType, labelObjectType) ||
                const DeepCollectionEquality()
                    .equals(other.labelObjectType, labelObjectType)) &&
            (identical(other.pos, pos) ||
                const DeepCollectionEquality().equals(other.pos, pos)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(labelObjectType) ^
      const DeepCollectionEquality().hash(pos);

  @JsonKey(ignore: true)
  @override
  _$RemoveLabelObjectCopyWith<_RemoveLabelObject> get copyWith =>
      __$RemoveLabelObjectCopyWithImpl<_RemoveLabelObject>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Contact> contactOption, String countryCode)
        initialize,
    required TResult Function(String countryCode) saved,
    required TResult Function(ILabelObject labelObject, int pos)
        labelObjectChanged,
    required TResult Function(ILabelObject labelObject) addLabelObject,
    required TResult Function(Type labelObjectType, int pos) removeLabelObject,
    required TResult Function(NameData nameData) updateNameData,
    required TResult Function(Company company, int index) updateCompany,
    required TResult Function() addCompany,
    required TResult Function(int index) deleteCompany,
    required TResult Function(PickedFile? file) updateImage,
  }) {
    return removeLabelObject(labelObjectType, pos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Contact> contactOption, String countryCode)?
        initialize,
    TResult Function(String countryCode)? saved,
    TResult Function(ILabelObject labelObject, int pos)? labelObjectChanged,
    TResult Function(ILabelObject labelObject)? addLabelObject,
    TResult Function(Type labelObjectType, int pos)? removeLabelObject,
    TResult Function(NameData nameData)? updateNameData,
    TResult Function(Company company, int index)? updateCompany,
    TResult Function()? addCompany,
    TResult Function(int index)? deleteCompany,
    TResult Function(PickedFile? file)? updateImage,
    required TResult orElse(),
  }) {
    if (removeLabelObject != null) {
      return removeLabelObject(labelObjectType, pos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_Saved value) saved,
    required TResult Function(_LabelObjectChanged value) labelObjectChanged,
    required TResult Function(_AddLabelObject value) addLabelObject,
    required TResult Function(_RemoveLabelObject value) removeLabelObject,
    required TResult Function(_UpdateNameData value) updateNameData,
    required TResult Function(_UpdateCompany value) updateCompany,
    required TResult Function(_AddCompany value) addCompany,
    required TResult Function(_DeleteCompany value) deleteCompany,
    required TResult Function(_UpdateImage value) updateImage,
  }) {
    return removeLabelObject(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_Saved value)? saved,
    TResult Function(_LabelObjectChanged value)? labelObjectChanged,
    TResult Function(_AddLabelObject value)? addLabelObject,
    TResult Function(_RemoveLabelObject value)? removeLabelObject,
    TResult Function(_UpdateNameData value)? updateNameData,
    TResult Function(_UpdateCompany value)? updateCompany,
    TResult Function(_AddCompany value)? addCompany,
    TResult Function(_DeleteCompany value)? deleteCompany,
    TResult Function(_UpdateImage value)? updateImage,
    required TResult orElse(),
  }) {
    if (removeLabelObject != null) {
      return removeLabelObject(this);
    }
    return orElse();
  }
}

abstract class _RemoveLabelObject implements AddContactEvent {
  const factory _RemoveLabelObject(Type labelObjectType, int pos) =
      _$_RemoveLabelObject;

  Type get labelObjectType => throw _privateConstructorUsedError;
  int get pos => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$RemoveLabelObjectCopyWith<_RemoveLabelObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateNameDataCopyWith<$Res> {
  factory _$UpdateNameDataCopyWith(
          _UpdateNameData value, $Res Function(_UpdateNameData) then) =
      __$UpdateNameDataCopyWithImpl<$Res>;
  $Res call({NameData nameData});

  $NameDataCopyWith<$Res> get nameData;
}

/// @nodoc
class __$UpdateNameDataCopyWithImpl<$Res>
    extends _$AddContactEventCopyWithImpl<$Res>
    implements _$UpdateNameDataCopyWith<$Res> {
  __$UpdateNameDataCopyWithImpl(
      _UpdateNameData _value, $Res Function(_UpdateNameData) _then)
      : super(_value, (v) => _then(v as _UpdateNameData));

  @override
  _UpdateNameData get _value => super._value as _UpdateNameData;

  @override
  $Res call({
    Object? nameData = freezed,
  }) {
    return _then(_UpdateNameData(
      nameData == freezed
          ? _value.nameData
          : nameData // ignore: cast_nullable_to_non_nullable
              as NameData,
    ));
  }

  @override
  $NameDataCopyWith<$Res> get nameData {
    return $NameDataCopyWith<$Res>(_value.nameData, (value) {
      return _then(_value.copyWith(nameData: value));
    });
  }
}

/// @nodoc

class _$_UpdateNameData
    with DiagnosticableTreeMixin
    implements _UpdateNameData {
  const _$_UpdateNameData(this.nameData);

  @override
  final NameData nameData;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddContactEvent.updateNameData(nameData: $nameData)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddContactEvent.updateNameData'))
      ..add(DiagnosticsProperty('nameData', nameData));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateNameData &&
            (identical(other.nameData, nameData) ||
                const DeepCollectionEquality()
                    .equals(other.nameData, nameData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(nameData);

  @JsonKey(ignore: true)
  @override
  _$UpdateNameDataCopyWith<_UpdateNameData> get copyWith =>
      __$UpdateNameDataCopyWithImpl<_UpdateNameData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Contact> contactOption, String countryCode)
        initialize,
    required TResult Function(String countryCode) saved,
    required TResult Function(ILabelObject labelObject, int pos)
        labelObjectChanged,
    required TResult Function(ILabelObject labelObject) addLabelObject,
    required TResult Function(Type labelObjectType, int pos) removeLabelObject,
    required TResult Function(NameData nameData) updateNameData,
    required TResult Function(Company company, int index) updateCompany,
    required TResult Function() addCompany,
    required TResult Function(int index) deleteCompany,
    required TResult Function(PickedFile? file) updateImage,
  }) {
    return updateNameData(nameData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Contact> contactOption, String countryCode)?
        initialize,
    TResult Function(String countryCode)? saved,
    TResult Function(ILabelObject labelObject, int pos)? labelObjectChanged,
    TResult Function(ILabelObject labelObject)? addLabelObject,
    TResult Function(Type labelObjectType, int pos)? removeLabelObject,
    TResult Function(NameData nameData)? updateNameData,
    TResult Function(Company company, int index)? updateCompany,
    TResult Function()? addCompany,
    TResult Function(int index)? deleteCompany,
    TResult Function(PickedFile? file)? updateImage,
    required TResult orElse(),
  }) {
    if (updateNameData != null) {
      return updateNameData(nameData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_Saved value) saved,
    required TResult Function(_LabelObjectChanged value) labelObjectChanged,
    required TResult Function(_AddLabelObject value) addLabelObject,
    required TResult Function(_RemoveLabelObject value) removeLabelObject,
    required TResult Function(_UpdateNameData value) updateNameData,
    required TResult Function(_UpdateCompany value) updateCompany,
    required TResult Function(_AddCompany value) addCompany,
    required TResult Function(_DeleteCompany value) deleteCompany,
    required TResult Function(_UpdateImage value) updateImage,
  }) {
    return updateNameData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_Saved value)? saved,
    TResult Function(_LabelObjectChanged value)? labelObjectChanged,
    TResult Function(_AddLabelObject value)? addLabelObject,
    TResult Function(_RemoveLabelObject value)? removeLabelObject,
    TResult Function(_UpdateNameData value)? updateNameData,
    TResult Function(_UpdateCompany value)? updateCompany,
    TResult Function(_AddCompany value)? addCompany,
    TResult Function(_DeleteCompany value)? deleteCompany,
    TResult Function(_UpdateImage value)? updateImage,
    required TResult orElse(),
  }) {
    if (updateNameData != null) {
      return updateNameData(this);
    }
    return orElse();
  }
}

abstract class _UpdateNameData implements AddContactEvent {
  const factory _UpdateNameData(NameData nameData) = _$_UpdateNameData;

  NameData get nameData => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UpdateNameDataCopyWith<_UpdateNameData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateCompanyCopyWith<$Res> {
  factory _$UpdateCompanyCopyWith(
          _UpdateCompany value, $Res Function(_UpdateCompany) then) =
      __$UpdateCompanyCopyWithImpl<$Res>;
  $Res call({Company company, int index});

  $CompanyCopyWith<$Res> get company;
}

/// @nodoc
class __$UpdateCompanyCopyWithImpl<$Res>
    extends _$AddContactEventCopyWithImpl<$Res>
    implements _$UpdateCompanyCopyWith<$Res> {
  __$UpdateCompanyCopyWithImpl(
      _UpdateCompany _value, $Res Function(_UpdateCompany) _then)
      : super(_value, (v) => _then(v as _UpdateCompany));

  @override
  _UpdateCompany get _value => super._value as _UpdateCompany;

  @override
  $Res call({
    Object? company = freezed,
    Object? index = freezed,
  }) {
    return _then(_UpdateCompany(
      company == freezed
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as Company,
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $CompanyCopyWith<$Res> get company {
    return $CompanyCopyWith<$Res>(_value.company, (value) {
      return _then(_value.copyWith(company: value));
    });
  }
}

/// @nodoc

class _$_UpdateCompany with DiagnosticableTreeMixin implements _UpdateCompany {
  const _$_UpdateCompany(this.company, this.index);

  @override
  final Company company;
  @override
  final int index;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddContactEvent.updateCompany(company: $company, index: $index)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddContactEvent.updateCompany'))
      ..add(DiagnosticsProperty('company', company))
      ..add(DiagnosticsProperty('index', index));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateCompany &&
            (identical(other.company, company) ||
                const DeepCollectionEquality()
                    .equals(other.company, company)) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(company) ^
      const DeepCollectionEquality().hash(index);

  @JsonKey(ignore: true)
  @override
  _$UpdateCompanyCopyWith<_UpdateCompany> get copyWith =>
      __$UpdateCompanyCopyWithImpl<_UpdateCompany>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Contact> contactOption, String countryCode)
        initialize,
    required TResult Function(String countryCode) saved,
    required TResult Function(ILabelObject labelObject, int pos)
        labelObjectChanged,
    required TResult Function(ILabelObject labelObject) addLabelObject,
    required TResult Function(Type labelObjectType, int pos) removeLabelObject,
    required TResult Function(NameData nameData) updateNameData,
    required TResult Function(Company company, int index) updateCompany,
    required TResult Function() addCompany,
    required TResult Function(int index) deleteCompany,
    required TResult Function(PickedFile? file) updateImage,
  }) {
    return updateCompany(company, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Contact> contactOption, String countryCode)?
        initialize,
    TResult Function(String countryCode)? saved,
    TResult Function(ILabelObject labelObject, int pos)? labelObjectChanged,
    TResult Function(ILabelObject labelObject)? addLabelObject,
    TResult Function(Type labelObjectType, int pos)? removeLabelObject,
    TResult Function(NameData nameData)? updateNameData,
    TResult Function(Company company, int index)? updateCompany,
    TResult Function()? addCompany,
    TResult Function(int index)? deleteCompany,
    TResult Function(PickedFile? file)? updateImage,
    required TResult orElse(),
  }) {
    if (updateCompany != null) {
      return updateCompany(company, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_Saved value) saved,
    required TResult Function(_LabelObjectChanged value) labelObjectChanged,
    required TResult Function(_AddLabelObject value) addLabelObject,
    required TResult Function(_RemoveLabelObject value) removeLabelObject,
    required TResult Function(_UpdateNameData value) updateNameData,
    required TResult Function(_UpdateCompany value) updateCompany,
    required TResult Function(_AddCompany value) addCompany,
    required TResult Function(_DeleteCompany value) deleteCompany,
    required TResult Function(_UpdateImage value) updateImage,
  }) {
    return updateCompany(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_Saved value)? saved,
    TResult Function(_LabelObjectChanged value)? labelObjectChanged,
    TResult Function(_AddLabelObject value)? addLabelObject,
    TResult Function(_RemoveLabelObject value)? removeLabelObject,
    TResult Function(_UpdateNameData value)? updateNameData,
    TResult Function(_UpdateCompany value)? updateCompany,
    TResult Function(_AddCompany value)? addCompany,
    TResult Function(_DeleteCompany value)? deleteCompany,
    TResult Function(_UpdateImage value)? updateImage,
    required TResult orElse(),
  }) {
    if (updateCompany != null) {
      return updateCompany(this);
    }
    return orElse();
  }
}

abstract class _UpdateCompany implements AddContactEvent {
  const factory _UpdateCompany(Company company, int index) = _$_UpdateCompany;

  Company get company => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UpdateCompanyCopyWith<_UpdateCompany> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AddCompanyCopyWith<$Res> {
  factory _$AddCompanyCopyWith(
          _AddCompany value, $Res Function(_AddCompany) then) =
      __$AddCompanyCopyWithImpl<$Res>;
}

/// @nodoc
class __$AddCompanyCopyWithImpl<$Res>
    extends _$AddContactEventCopyWithImpl<$Res>
    implements _$AddCompanyCopyWith<$Res> {
  __$AddCompanyCopyWithImpl(
      _AddCompany _value, $Res Function(_AddCompany) _then)
      : super(_value, (v) => _then(v as _AddCompany));

  @override
  _AddCompany get _value => super._value as _AddCompany;
}

/// @nodoc

class _$_AddCompany with DiagnosticableTreeMixin implements _AddCompany {
  const _$_AddCompany();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddContactEvent.addCompany()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AddContactEvent.addCompany'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AddCompany);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Contact> contactOption, String countryCode)
        initialize,
    required TResult Function(String countryCode) saved,
    required TResult Function(ILabelObject labelObject, int pos)
        labelObjectChanged,
    required TResult Function(ILabelObject labelObject) addLabelObject,
    required TResult Function(Type labelObjectType, int pos) removeLabelObject,
    required TResult Function(NameData nameData) updateNameData,
    required TResult Function(Company company, int index) updateCompany,
    required TResult Function() addCompany,
    required TResult Function(int index) deleteCompany,
    required TResult Function(PickedFile? file) updateImage,
  }) {
    return addCompany();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Contact> contactOption, String countryCode)?
        initialize,
    TResult Function(String countryCode)? saved,
    TResult Function(ILabelObject labelObject, int pos)? labelObjectChanged,
    TResult Function(ILabelObject labelObject)? addLabelObject,
    TResult Function(Type labelObjectType, int pos)? removeLabelObject,
    TResult Function(NameData nameData)? updateNameData,
    TResult Function(Company company, int index)? updateCompany,
    TResult Function()? addCompany,
    TResult Function(int index)? deleteCompany,
    TResult Function(PickedFile? file)? updateImage,
    required TResult orElse(),
  }) {
    if (addCompany != null) {
      return addCompany();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_Saved value) saved,
    required TResult Function(_LabelObjectChanged value) labelObjectChanged,
    required TResult Function(_AddLabelObject value) addLabelObject,
    required TResult Function(_RemoveLabelObject value) removeLabelObject,
    required TResult Function(_UpdateNameData value) updateNameData,
    required TResult Function(_UpdateCompany value) updateCompany,
    required TResult Function(_AddCompany value) addCompany,
    required TResult Function(_DeleteCompany value) deleteCompany,
    required TResult Function(_UpdateImage value) updateImage,
  }) {
    return addCompany(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_Saved value)? saved,
    TResult Function(_LabelObjectChanged value)? labelObjectChanged,
    TResult Function(_AddLabelObject value)? addLabelObject,
    TResult Function(_RemoveLabelObject value)? removeLabelObject,
    TResult Function(_UpdateNameData value)? updateNameData,
    TResult Function(_UpdateCompany value)? updateCompany,
    TResult Function(_AddCompany value)? addCompany,
    TResult Function(_DeleteCompany value)? deleteCompany,
    TResult Function(_UpdateImage value)? updateImage,
    required TResult orElse(),
  }) {
    if (addCompany != null) {
      return addCompany(this);
    }
    return orElse();
  }
}

abstract class _AddCompany implements AddContactEvent {
  const factory _AddCompany() = _$_AddCompany;
}

/// @nodoc
abstract class _$DeleteCompanyCopyWith<$Res> {
  factory _$DeleteCompanyCopyWith(
          _DeleteCompany value, $Res Function(_DeleteCompany) then) =
      __$DeleteCompanyCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class __$DeleteCompanyCopyWithImpl<$Res>
    extends _$AddContactEventCopyWithImpl<$Res>
    implements _$DeleteCompanyCopyWith<$Res> {
  __$DeleteCompanyCopyWithImpl(
      _DeleteCompany _value, $Res Function(_DeleteCompany) _then)
      : super(_value, (v) => _then(v as _DeleteCompany));

  @override
  _DeleteCompany get _value => super._value as _DeleteCompany;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_DeleteCompany(
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_DeleteCompany with DiagnosticableTreeMixin implements _DeleteCompany {
  const _$_DeleteCompany(this.index);

  @override
  final int index;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddContactEvent.deleteCompany(index: $index)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddContactEvent.deleteCompany'))
      ..add(DiagnosticsProperty('index', index));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeleteCompany &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @JsonKey(ignore: true)
  @override
  _$DeleteCompanyCopyWith<_DeleteCompany> get copyWith =>
      __$DeleteCompanyCopyWithImpl<_DeleteCompany>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Contact> contactOption, String countryCode)
        initialize,
    required TResult Function(String countryCode) saved,
    required TResult Function(ILabelObject labelObject, int pos)
        labelObjectChanged,
    required TResult Function(ILabelObject labelObject) addLabelObject,
    required TResult Function(Type labelObjectType, int pos) removeLabelObject,
    required TResult Function(NameData nameData) updateNameData,
    required TResult Function(Company company, int index) updateCompany,
    required TResult Function() addCompany,
    required TResult Function(int index) deleteCompany,
    required TResult Function(PickedFile? file) updateImage,
  }) {
    return deleteCompany(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Contact> contactOption, String countryCode)?
        initialize,
    TResult Function(String countryCode)? saved,
    TResult Function(ILabelObject labelObject, int pos)? labelObjectChanged,
    TResult Function(ILabelObject labelObject)? addLabelObject,
    TResult Function(Type labelObjectType, int pos)? removeLabelObject,
    TResult Function(NameData nameData)? updateNameData,
    TResult Function(Company company, int index)? updateCompany,
    TResult Function()? addCompany,
    TResult Function(int index)? deleteCompany,
    TResult Function(PickedFile? file)? updateImage,
    required TResult orElse(),
  }) {
    if (deleteCompany != null) {
      return deleteCompany(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_Saved value) saved,
    required TResult Function(_LabelObjectChanged value) labelObjectChanged,
    required TResult Function(_AddLabelObject value) addLabelObject,
    required TResult Function(_RemoveLabelObject value) removeLabelObject,
    required TResult Function(_UpdateNameData value) updateNameData,
    required TResult Function(_UpdateCompany value) updateCompany,
    required TResult Function(_AddCompany value) addCompany,
    required TResult Function(_DeleteCompany value) deleteCompany,
    required TResult Function(_UpdateImage value) updateImage,
  }) {
    return deleteCompany(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_Saved value)? saved,
    TResult Function(_LabelObjectChanged value)? labelObjectChanged,
    TResult Function(_AddLabelObject value)? addLabelObject,
    TResult Function(_RemoveLabelObject value)? removeLabelObject,
    TResult Function(_UpdateNameData value)? updateNameData,
    TResult Function(_UpdateCompany value)? updateCompany,
    TResult Function(_AddCompany value)? addCompany,
    TResult Function(_DeleteCompany value)? deleteCompany,
    TResult Function(_UpdateImage value)? updateImage,
    required TResult orElse(),
  }) {
    if (deleteCompany != null) {
      return deleteCompany(this);
    }
    return orElse();
  }
}

abstract class _DeleteCompany implements AddContactEvent {
  const factory _DeleteCompany(int index) = _$_DeleteCompany;

  int get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DeleteCompanyCopyWith<_DeleteCompany> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateImageCopyWith<$Res> {
  factory _$UpdateImageCopyWith(
          _UpdateImage value, $Res Function(_UpdateImage) then) =
      __$UpdateImageCopyWithImpl<$Res>;
  $Res call({PickedFile? file});
}

/// @nodoc
class __$UpdateImageCopyWithImpl<$Res>
    extends _$AddContactEventCopyWithImpl<$Res>
    implements _$UpdateImageCopyWith<$Res> {
  __$UpdateImageCopyWithImpl(
      _UpdateImage _value, $Res Function(_UpdateImage) _then)
      : super(_value, (v) => _then(v as _UpdateImage));

  @override
  _UpdateImage get _value => super._value as _UpdateImage;

  @override
  $Res call({
    Object? file = freezed,
  }) {
    return _then(_UpdateImage(
      file == freezed
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as PickedFile?,
    ));
  }
}

/// @nodoc

class _$_UpdateImage with DiagnosticableTreeMixin implements _UpdateImage {
  const _$_UpdateImage(this.file);

  @override
  final PickedFile? file;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddContactEvent.updateImage(file: $file)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddContactEvent.updateImage'))
      ..add(DiagnosticsProperty('file', file));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateImage &&
            (identical(other.file, file) ||
                const DeepCollectionEquality().equals(other.file, file)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(file);

  @JsonKey(ignore: true)
  @override
  _$UpdateImageCopyWith<_UpdateImage> get copyWith =>
      __$UpdateImageCopyWithImpl<_UpdateImage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Contact> contactOption, String countryCode)
        initialize,
    required TResult Function(String countryCode) saved,
    required TResult Function(ILabelObject labelObject, int pos)
        labelObjectChanged,
    required TResult Function(ILabelObject labelObject) addLabelObject,
    required TResult Function(Type labelObjectType, int pos) removeLabelObject,
    required TResult Function(NameData nameData) updateNameData,
    required TResult Function(Company company, int index) updateCompany,
    required TResult Function() addCompany,
    required TResult Function(int index) deleteCompany,
    required TResult Function(PickedFile? file) updateImage,
  }) {
    return updateImage(file);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Contact> contactOption, String countryCode)?
        initialize,
    TResult Function(String countryCode)? saved,
    TResult Function(ILabelObject labelObject, int pos)? labelObjectChanged,
    TResult Function(ILabelObject labelObject)? addLabelObject,
    TResult Function(Type labelObjectType, int pos)? removeLabelObject,
    TResult Function(NameData nameData)? updateNameData,
    TResult Function(Company company, int index)? updateCompany,
    TResult Function()? addCompany,
    TResult Function(int index)? deleteCompany,
    TResult Function(PickedFile? file)? updateImage,
    required TResult orElse(),
  }) {
    if (updateImage != null) {
      return updateImage(file);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_Saved value) saved,
    required TResult Function(_LabelObjectChanged value) labelObjectChanged,
    required TResult Function(_AddLabelObject value) addLabelObject,
    required TResult Function(_RemoveLabelObject value) removeLabelObject,
    required TResult Function(_UpdateNameData value) updateNameData,
    required TResult Function(_UpdateCompany value) updateCompany,
    required TResult Function(_AddCompany value) addCompany,
    required TResult Function(_DeleteCompany value) deleteCompany,
    required TResult Function(_UpdateImage value) updateImage,
  }) {
    return updateImage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_Saved value)? saved,
    TResult Function(_LabelObjectChanged value)? labelObjectChanged,
    TResult Function(_AddLabelObject value)? addLabelObject,
    TResult Function(_RemoveLabelObject value)? removeLabelObject,
    TResult Function(_UpdateNameData value)? updateNameData,
    TResult Function(_UpdateCompany value)? updateCompany,
    TResult Function(_AddCompany value)? addCompany,
    TResult Function(_DeleteCompany value)? deleteCompany,
    TResult Function(_UpdateImage value)? updateImage,
    required TResult orElse(),
  }) {
    if (updateImage != null) {
      return updateImage(this);
    }
    return orElse();
  }
}

abstract class _UpdateImage implements AddContactEvent {
  const factory _UpdateImage(PickedFile? file) = _$_UpdateImage;

  PickedFile? get file => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UpdateImageCopyWith<_UpdateImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AddContactStateTearOff {
  const _$AddContactStateTearOff();

  _AddContactState call(
      {required Contact contact,
      required bool isEditting,
      required bool isSaving,
      required Option<Either<ContactsFailure, Unit>> savingOrFailureOption}) {
    return _AddContactState(
      contact: contact,
      isEditting: isEditting,
      isSaving: isSaving,
      savingOrFailureOption: savingOrFailureOption,
    );
  }
}

/// @nodoc
const $AddContactState = _$AddContactStateTearOff();

/// @nodoc
mixin _$AddContactState {
  Contact get contact => throw _privateConstructorUsedError;
  bool get isEditting => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  Option<Either<ContactsFailure, Unit>> get savingOrFailureOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddContactStateCopyWith<AddContactState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddContactStateCopyWith<$Res> {
  factory $AddContactStateCopyWith(
          AddContactState value, $Res Function(AddContactState) then) =
      _$AddContactStateCopyWithImpl<$Res>;
  $Res call(
      {Contact contact,
      bool isEditting,
      bool isSaving,
      Option<Either<ContactsFailure, Unit>> savingOrFailureOption});

  $ContactCopyWith<$Res> get contact;
}

/// @nodoc
class _$AddContactStateCopyWithImpl<$Res>
    implements $AddContactStateCopyWith<$Res> {
  _$AddContactStateCopyWithImpl(this._value, this._then);

  final AddContactState _value;
  // ignore: unused_field
  final $Res Function(AddContactState) _then;

  @override
  $Res call({
    Object? contact = freezed,
    Object? isEditting = freezed,
    Object? isSaving = freezed,
    Object? savingOrFailureOption = freezed,
  }) {
    return _then(_value.copyWith(
      contact: contact == freezed
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Contact,
      isEditting: isEditting == freezed
          ? _value.isEditting
          : isEditting // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      savingOrFailureOption: savingOrFailureOption == freezed
          ? _value.savingOrFailureOption
          : savingOrFailureOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ContactsFailure, Unit>>,
    ));
  }

  @override
  $ContactCopyWith<$Res> get contact {
    return $ContactCopyWith<$Res>(_value.contact, (value) {
      return _then(_value.copyWith(contact: value));
    });
  }
}

/// @nodoc
abstract class _$AddContactStateCopyWith<$Res>
    implements $AddContactStateCopyWith<$Res> {
  factory _$AddContactStateCopyWith(
          _AddContactState value, $Res Function(_AddContactState) then) =
      __$AddContactStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Contact contact,
      bool isEditting,
      bool isSaving,
      Option<Either<ContactsFailure, Unit>> savingOrFailureOption});

  @override
  $ContactCopyWith<$Res> get contact;
}

/// @nodoc
class __$AddContactStateCopyWithImpl<$Res>
    extends _$AddContactStateCopyWithImpl<$Res>
    implements _$AddContactStateCopyWith<$Res> {
  __$AddContactStateCopyWithImpl(
      _AddContactState _value, $Res Function(_AddContactState) _then)
      : super(_value, (v) => _then(v as _AddContactState));

  @override
  _AddContactState get _value => super._value as _AddContactState;

  @override
  $Res call({
    Object? contact = freezed,
    Object? isEditting = freezed,
    Object? isSaving = freezed,
    Object? savingOrFailureOption = freezed,
  }) {
    return _then(_AddContactState(
      contact: contact == freezed
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Contact,
      isEditting: isEditting == freezed
          ? _value.isEditting
          : isEditting // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      savingOrFailureOption: savingOrFailureOption == freezed
          ? _value.savingOrFailureOption
          : savingOrFailureOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ContactsFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_AddContactState extends _AddContactState with DiagnosticableTreeMixin {
  const _$_AddContactState(
      {required this.contact,
      required this.isEditting,
      required this.isSaving,
      required this.savingOrFailureOption})
      : super._();

  @override
  final Contact contact;
  @override
  final bool isEditting;
  @override
  final bool isSaving;
  @override
  final Option<Either<ContactsFailure, Unit>> savingOrFailureOption;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddContactState(contact: $contact, isEditting: $isEditting, isSaving: $isSaving, savingOrFailureOption: $savingOrFailureOption)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddContactState'))
      ..add(DiagnosticsProperty('contact', contact))
      ..add(DiagnosticsProperty('isEditting', isEditting))
      ..add(DiagnosticsProperty('isSaving', isSaving))
      ..add(
          DiagnosticsProperty('savingOrFailureOption', savingOrFailureOption));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddContactState &&
            (identical(other.contact, contact) ||
                const DeepCollectionEquality()
                    .equals(other.contact, contact)) &&
            (identical(other.isEditting, isEditting) ||
                const DeepCollectionEquality()
                    .equals(other.isEditting, isEditting)) &&
            (identical(other.isSaving, isSaving) ||
                const DeepCollectionEquality()
                    .equals(other.isSaving, isSaving)) &&
            (identical(other.savingOrFailureOption, savingOrFailureOption) ||
                const DeepCollectionEquality().equals(
                    other.savingOrFailureOption, savingOrFailureOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(contact) ^
      const DeepCollectionEquality().hash(isEditting) ^
      const DeepCollectionEquality().hash(isSaving) ^
      const DeepCollectionEquality().hash(savingOrFailureOption);

  @JsonKey(ignore: true)
  @override
  _$AddContactStateCopyWith<_AddContactState> get copyWith =>
      __$AddContactStateCopyWithImpl<_AddContactState>(this, _$identity);
}

abstract class _AddContactState extends AddContactState {
  const factory _AddContactState(
      {required Contact contact,
      required bool isEditting,
      required bool isSaving,
      required Option<Either<ContactsFailure, Unit>>
          savingOrFailureOption}) = _$_AddContactState;
  const _AddContactState._() : super._();

  @override
  Contact get contact => throw _privateConstructorUsedError;
  @override
  bool get isEditting => throw _privateConstructorUsedError;
  @override
  bool get isSaving => throw _privateConstructorUsedError;
  @override
  Option<Either<ContactsFailure, Unit>> get savingOrFailureOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AddContactStateCopyWith<_AddContactState> get copyWith =>
      throw _privateConstructorUsedError;
}
