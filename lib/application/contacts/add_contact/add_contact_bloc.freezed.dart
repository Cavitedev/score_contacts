// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'add_contact_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AddContactEventTearOff {
  const _$AddContactEventTearOff();

// ignore: unused_element
  _LabelObjectChanged labelObjectChanged(ILabelObject labelObject, int pos) {
    return _LabelObjectChanged(
      labelObject,
      pos,
    );
  }

// ignore: unused_element
  _AddLabelObject addLabelObject(ILabelObject labelObject) {
    return _AddLabelObject(
      labelObject,
    );
  }

// ignore: unused_element
  _RemoveLabelObject removeLabelObject(Type labelObjectType, int pos) {
    return _RemoveLabelObject(
      labelObjectType,
      pos,
    );
  }

// ignore: unused_element
  _UpdateNameData updateNameData(NameData nameData) {
    return _UpdateNameData(
      nameData,
    );
  }

// ignore: unused_element
  _UpdateCompanyNameData updateCompany(Company company) {
    return _UpdateCompanyNameData(
      company,
    );
  }
}

// ignore: unused_element
const $AddContactEvent = _$AddContactEventTearOff();

mixin _$AddContactEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result labelObjectChanged(ILabelObject labelObject, int pos),
    @required Result addLabelObject(ILabelObject labelObject),
    @required Result removeLabelObject(Type labelObjectType, int pos),
    @required Result updateNameData(NameData nameData),
    @required Result updateCompany(Company company),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result labelObjectChanged(ILabelObject labelObject, int pos),
    Result addLabelObject(ILabelObject labelObject),
    Result removeLabelObject(Type labelObjectType, int pos),
    Result updateNameData(NameData nameData),
    Result updateCompany(Company company),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result labelObjectChanged(_LabelObjectChanged value),
    @required Result addLabelObject(_AddLabelObject value),
    @required Result removeLabelObject(_RemoveLabelObject value),
    @required Result updateNameData(_UpdateNameData value),
    @required Result updateCompany(_UpdateCompanyNameData value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result labelObjectChanged(_LabelObjectChanged value),
    Result addLabelObject(_AddLabelObject value),
    Result removeLabelObject(_RemoveLabelObject value),
    Result updateNameData(_UpdateNameData value),
    Result updateCompany(_UpdateCompanyNameData value),
    @required Result orElse(),
  });
}

abstract class $AddContactEventCopyWith<$Res> {
  factory $AddContactEventCopyWith(
          AddContactEvent value, $Res Function(AddContactEvent) then) =
      _$AddContactEventCopyWithImpl<$Res>;
}

class _$AddContactEventCopyWithImpl<$Res>
    implements $AddContactEventCopyWith<$Res> {
  _$AddContactEventCopyWithImpl(this._value, this._then);

  final AddContactEvent _value;
  // ignore: unused_field
  final $Res Function(AddContactEvent) _then;
}

abstract class _$LabelObjectChangedCopyWith<$Res> {
  factory _$LabelObjectChangedCopyWith(
          _LabelObjectChanged value, $Res Function(_LabelObjectChanged) then) =
      __$LabelObjectChangedCopyWithImpl<$Res>;
  $Res call({ILabelObject labelObject, int pos});
}

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
    Object labelObject = freezed,
    Object pos = freezed,
  }) {
    return _then(_LabelObjectChanged(
      labelObject == freezed ? _value.labelObject : labelObject as ILabelObject,
      pos == freezed ? _value.pos : pos as int,
    ));
  }
}

class _$_LabelObjectChanged
    with DiagnosticableTreeMixin
    implements _LabelObjectChanged {
  const _$_LabelObjectChanged(this.labelObject, this.pos)
      : assert(labelObject != null),
        assert(pos != null);

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

  @override
  _$LabelObjectChangedCopyWith<_LabelObjectChanged> get copyWith =>
      __$LabelObjectChangedCopyWithImpl<_LabelObjectChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result labelObjectChanged(ILabelObject labelObject, int pos),
    @required Result addLabelObject(ILabelObject labelObject),
    @required Result removeLabelObject(Type labelObjectType, int pos),
    @required Result updateNameData(NameData nameData),
    @required Result updateCompany(Company company),
  }) {
    assert(labelObjectChanged != null);
    assert(addLabelObject != null);
    assert(removeLabelObject != null);
    assert(updateNameData != null);
    assert(updateCompany != null);
    return labelObjectChanged(labelObject, pos);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result labelObjectChanged(ILabelObject labelObject, int pos),
    Result addLabelObject(ILabelObject labelObject),
    Result removeLabelObject(Type labelObjectType, int pos),
    Result updateNameData(NameData nameData),
    Result updateCompany(Company company),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (labelObjectChanged != null) {
      return labelObjectChanged(labelObject, pos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result labelObjectChanged(_LabelObjectChanged value),
    @required Result addLabelObject(_AddLabelObject value),
    @required Result removeLabelObject(_RemoveLabelObject value),
    @required Result updateNameData(_UpdateNameData value),
    @required Result updateCompany(_UpdateCompanyNameData value),
  }) {
    assert(labelObjectChanged != null);
    assert(addLabelObject != null);
    assert(removeLabelObject != null);
    assert(updateNameData != null);
    assert(updateCompany != null);
    return labelObjectChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result labelObjectChanged(_LabelObjectChanged value),
    Result addLabelObject(_AddLabelObject value),
    Result removeLabelObject(_RemoveLabelObject value),
    Result updateNameData(_UpdateNameData value),
    Result updateCompany(_UpdateCompanyNameData value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (labelObjectChanged != null) {
      return labelObjectChanged(this);
    }
    return orElse();
  }
}

abstract class _LabelObjectChanged implements AddContactEvent {
  const factory _LabelObjectChanged(ILabelObject labelObject, int pos) =
      _$_LabelObjectChanged;

  ILabelObject get labelObject;
  int get pos;
  _$LabelObjectChangedCopyWith<_LabelObjectChanged> get copyWith;
}

abstract class _$AddLabelObjectCopyWith<$Res> {
  factory _$AddLabelObjectCopyWith(
          _AddLabelObject value, $Res Function(_AddLabelObject) then) =
      __$AddLabelObjectCopyWithImpl<$Res>;
  $Res call({ILabelObject labelObject});
}

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
    Object labelObject = freezed,
  }) {
    return _then(_AddLabelObject(
      labelObject == freezed ? _value.labelObject : labelObject as ILabelObject,
    ));
  }
}

class _$_AddLabelObject
    with DiagnosticableTreeMixin
    implements _AddLabelObject {
  const _$_AddLabelObject(this.labelObject) : assert(labelObject != null);

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

  @override
  _$AddLabelObjectCopyWith<_AddLabelObject> get copyWith =>
      __$AddLabelObjectCopyWithImpl<_AddLabelObject>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result labelObjectChanged(ILabelObject labelObject, int pos),
    @required Result addLabelObject(ILabelObject labelObject),
    @required Result removeLabelObject(Type labelObjectType, int pos),
    @required Result updateNameData(NameData nameData),
    @required Result updateCompany(Company company),
  }) {
    assert(labelObjectChanged != null);
    assert(addLabelObject != null);
    assert(removeLabelObject != null);
    assert(updateNameData != null);
    assert(updateCompany != null);
    return addLabelObject(labelObject);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result labelObjectChanged(ILabelObject labelObject, int pos),
    Result addLabelObject(ILabelObject labelObject),
    Result removeLabelObject(Type labelObjectType, int pos),
    Result updateNameData(NameData nameData),
    Result updateCompany(Company company),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addLabelObject != null) {
      return addLabelObject(labelObject);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result labelObjectChanged(_LabelObjectChanged value),
    @required Result addLabelObject(_AddLabelObject value),
    @required Result removeLabelObject(_RemoveLabelObject value),
    @required Result updateNameData(_UpdateNameData value),
    @required Result updateCompany(_UpdateCompanyNameData value),
  }) {
    assert(labelObjectChanged != null);
    assert(addLabelObject != null);
    assert(removeLabelObject != null);
    assert(updateNameData != null);
    assert(updateCompany != null);
    return addLabelObject(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result labelObjectChanged(_LabelObjectChanged value),
    Result addLabelObject(_AddLabelObject value),
    Result removeLabelObject(_RemoveLabelObject value),
    Result updateNameData(_UpdateNameData value),
    Result updateCompany(_UpdateCompanyNameData value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addLabelObject != null) {
      return addLabelObject(this);
    }
    return orElse();
  }
}

abstract class _AddLabelObject implements AddContactEvent {
  const factory _AddLabelObject(ILabelObject labelObject) = _$_AddLabelObject;

  ILabelObject get labelObject;
  _$AddLabelObjectCopyWith<_AddLabelObject> get copyWith;
}

abstract class _$RemoveLabelObjectCopyWith<$Res> {
  factory _$RemoveLabelObjectCopyWith(
          _RemoveLabelObject value, $Res Function(_RemoveLabelObject) then) =
      __$RemoveLabelObjectCopyWithImpl<$Res>;
  $Res call({Type labelObjectType, int pos});
}

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
    Object labelObjectType = freezed,
    Object pos = freezed,
  }) {
    return _then(_RemoveLabelObject(
      labelObjectType == freezed
          ? _value.labelObjectType
          : labelObjectType as Type,
      pos == freezed ? _value.pos : pos as int,
    ));
  }
}

class _$_RemoveLabelObject
    with DiagnosticableTreeMixin
    implements _RemoveLabelObject {
  const _$_RemoveLabelObject(this.labelObjectType, this.pos)
      : assert(labelObjectType != null),
        assert(pos != null);

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

  @override
  _$RemoveLabelObjectCopyWith<_RemoveLabelObject> get copyWith =>
      __$RemoveLabelObjectCopyWithImpl<_RemoveLabelObject>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result labelObjectChanged(ILabelObject labelObject, int pos),
    @required Result addLabelObject(ILabelObject labelObject),
    @required Result removeLabelObject(Type labelObjectType, int pos),
    @required Result updateNameData(NameData nameData),
    @required Result updateCompany(Company company),
  }) {
    assert(labelObjectChanged != null);
    assert(addLabelObject != null);
    assert(removeLabelObject != null);
    assert(updateNameData != null);
    assert(updateCompany != null);
    return removeLabelObject(labelObjectType, pos);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result labelObjectChanged(ILabelObject labelObject, int pos),
    Result addLabelObject(ILabelObject labelObject),
    Result removeLabelObject(Type labelObjectType, int pos),
    Result updateNameData(NameData nameData),
    Result updateCompany(Company company),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (removeLabelObject != null) {
      return removeLabelObject(labelObjectType, pos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result labelObjectChanged(_LabelObjectChanged value),
    @required Result addLabelObject(_AddLabelObject value),
    @required Result removeLabelObject(_RemoveLabelObject value),
    @required Result updateNameData(_UpdateNameData value),
    @required Result updateCompany(_UpdateCompanyNameData value),
  }) {
    assert(labelObjectChanged != null);
    assert(addLabelObject != null);
    assert(removeLabelObject != null);
    assert(updateNameData != null);
    assert(updateCompany != null);
    return removeLabelObject(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result labelObjectChanged(_LabelObjectChanged value),
    Result addLabelObject(_AddLabelObject value),
    Result removeLabelObject(_RemoveLabelObject value),
    Result updateNameData(_UpdateNameData value),
    Result updateCompany(_UpdateCompanyNameData value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (removeLabelObject != null) {
      return removeLabelObject(this);
    }
    return orElse();
  }
}

abstract class _RemoveLabelObject implements AddContactEvent {
  const factory _RemoveLabelObject(Type labelObjectType, int pos) =
      _$_RemoveLabelObject;

  Type get labelObjectType;
  int get pos;
  _$RemoveLabelObjectCopyWith<_RemoveLabelObject> get copyWith;
}

abstract class _$UpdateNameDataCopyWith<$Res> {
  factory _$UpdateNameDataCopyWith(
          _UpdateNameData value, $Res Function(_UpdateNameData) then) =
      __$UpdateNameDataCopyWithImpl<$Res>;

  $Res call({NameData nameData});

  $NameDataCopyWith<$Res> get nameData;
}

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
    Object nameData = freezed,
  }) {
    return _then(_UpdateNameData(
      nameData == freezed ? _value.nameData : nameData as NameData,
    ));
  }

  @override
  $NameDataCopyWith<$Res> get nameData {
    if (_value.nameData == null) {
      return null;
    }
    return $NameDataCopyWith<$Res>(_value.nameData, (value) {
      return _then(_value.copyWith(nameData: value));
    });
  }
}

class _$_UpdateNameData
    with DiagnosticableTreeMixin
    implements _UpdateNameData {
  const _$_UpdateNameData(this.nameData) : assert(nameData != null);

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

  @override
  _$UpdateNameDataCopyWith<_UpdateNameData> get copyWith =>
      __$UpdateNameDataCopyWithImpl<_UpdateNameData>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result labelObjectChanged(ILabelObject labelObject, int pos),
    @required Result addLabelObject(ILabelObject labelObject),
    @required Result removeLabelObject(Type labelObjectType, int pos),
    @required Result updateNameData(NameData nameData),
    @required Result updateCompany(Company company),
  }) {
    assert(labelObjectChanged != null);
    assert(addLabelObject != null);
    assert(removeLabelObject != null);
    assert(updateNameData != null);
    assert(updateCompany != null);
    return updateNameData(nameData);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result labelObjectChanged(ILabelObject labelObject, int pos),
    Result addLabelObject(ILabelObject labelObject),
    Result removeLabelObject(Type labelObjectType, int pos),
    Result updateNameData(NameData nameData),
    Result updateCompany(Company company),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateNameData != null) {
      return updateNameData(nameData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result labelObjectChanged(_LabelObjectChanged value),
    @required Result addLabelObject(_AddLabelObject value),
    @required Result removeLabelObject(_RemoveLabelObject value),
    @required Result updateNameData(_UpdateNameData value),
    @required Result updateCompany(_UpdateCompanyNameData value),
  }) {
    assert(labelObjectChanged != null);
    assert(addLabelObject != null);
    assert(removeLabelObject != null);
    assert(updateNameData != null);
    assert(updateCompany != null);
    return updateNameData(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result labelObjectChanged(_LabelObjectChanged value),
    Result addLabelObject(_AddLabelObject value),
    Result removeLabelObject(_RemoveLabelObject value),
    Result updateNameData(_UpdateNameData value),
    Result updateCompany(_UpdateCompanyNameData value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateNameData != null) {
      return updateNameData(this);
    }
    return orElse();
  }
}

abstract class _UpdateNameData implements AddContactEvent {
  const factory _UpdateNameData(NameData nameData) = _$_UpdateNameData;

  NameData get nameData;
  _$UpdateNameDataCopyWith<_UpdateNameData> get copyWith;
}

abstract class _$UpdateCompanyNameDataCopyWith<$Res> {
  factory _$UpdateCompanyNameDataCopyWith(_UpdateCompanyNameData value,
          $Res Function(_UpdateCompanyNameData) then) =
      __$UpdateCompanyNameDataCopyWithImpl<$Res>;
  $Res call({Company company});

  $CompanyCopyWith<$Res> get company;
}

class __$UpdateCompanyNameDataCopyWithImpl<$Res>
    extends _$AddContactEventCopyWithImpl<$Res>
    implements _$UpdateCompanyNameDataCopyWith<$Res> {
  __$UpdateCompanyNameDataCopyWithImpl(_UpdateCompanyNameData _value,
      $Res Function(_UpdateCompanyNameData) _then)
      : super(_value, (v) => _then(v as _UpdateCompanyNameData));

  @override
  _UpdateCompanyNameData get _value => super._value as _UpdateCompanyNameData;

  @override
  $Res call({
    Object company = freezed,
  }) {
    return _then(_UpdateCompanyNameData(
      company == freezed ? _value.company : company as Company,
    ));
  }

  @override
  $CompanyCopyWith<$Res> get company {
    if (_value.company == null) {
      return null;
    }
    return $CompanyCopyWith<$Res>(_value.company, (value) {
      return _then(_value.copyWith(company: value));
    });
  }
}

class _$_UpdateCompanyNameData
    with DiagnosticableTreeMixin
    implements _UpdateCompanyNameData {
  const _$_UpdateCompanyNameData(this.company) : assert(company != null);

  @override
  final Company company;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddContactEvent.updateCompany(company: $company)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddContactEvent.updateCompany'))
      ..add(DiagnosticsProperty('company', company));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateCompanyNameData &&
            (identical(other.company, company) ||
                const DeepCollectionEquality().equals(other.company, company)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(company);

  @override
  _$UpdateCompanyNameDataCopyWith<_UpdateCompanyNameData> get copyWith =>
      __$UpdateCompanyNameDataCopyWithImpl<_UpdateCompanyNameData>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result labelObjectChanged(ILabelObject labelObject, int pos),
    @required Result addLabelObject(ILabelObject labelObject),
    @required Result removeLabelObject(Type labelObjectType, int pos),
    @required Result updateNameData(NameData nameData),
    @required Result updateCompany(Company company),
  }) {
    assert(labelObjectChanged != null);
    assert(addLabelObject != null);
    assert(removeLabelObject != null);
    assert(updateNameData != null);
    assert(updateCompany != null);
    return updateCompany(company);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result labelObjectChanged(ILabelObject labelObject, int pos),
    Result addLabelObject(ILabelObject labelObject),
    Result removeLabelObject(Type labelObjectType, int pos),
    Result updateNameData(NameData nameData),
    Result updateCompany(Company company),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateCompany != null) {
      return updateCompany(company);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result labelObjectChanged(_LabelObjectChanged value),
    @required Result addLabelObject(_AddLabelObject value),
    @required Result removeLabelObject(_RemoveLabelObject value),
    @required Result updateNameData(_UpdateNameData value),
    @required Result updateCompany(_UpdateCompanyNameData value),
  }) {
    assert(labelObjectChanged != null);
    assert(addLabelObject != null);
    assert(removeLabelObject != null);
    assert(updateNameData != null);
    assert(updateCompany != null);
    return updateCompany(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result labelObjectChanged(_LabelObjectChanged value),
    Result addLabelObject(_AddLabelObject value),
    Result removeLabelObject(_RemoveLabelObject value),
    Result updateNameData(_UpdateNameData value),
    Result updateCompany(_UpdateCompanyNameData value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateCompany != null) {
      return updateCompany(this);
    }
    return orElse();
  }
}

abstract class _UpdateCompanyNameData implements AddContactEvent {
  const factory _UpdateCompanyNameData(Company company) =
      _$_UpdateCompanyNameData;

  Company get company;
  _$UpdateCompanyNameDataCopyWith<_UpdateCompanyNameData> get copyWith;
}

class _$AddContactStateTearOff {
  const _$AddContactStateTearOff();

// ignore: unused_element
  _AddContactState call(
      {@required Map<Type, List<ILabelObject>> labelObjects,
      NameData nameData,
      Company company}) {
    return _AddContactState(
      labelObjects: labelObjects,
      nameData: nameData,
      company: company,
    );
  }
}

// ignore: unused_element
const $AddContactState = _$AddContactStateTearOff();

mixin _$AddContactState {
  Map<Type, List<ILabelObject>> get labelObjects;
  NameData get nameData;
  Company get company;

  $AddContactStateCopyWith<AddContactState> get copyWith;
}

abstract class $AddContactStateCopyWith<$Res> {
  factory $AddContactStateCopyWith(AddContactState value,
      $Res Function(AddContactState) then) =
  _$AddContactStateCopyWithImpl<$Res>;

  $Res call({Map<Type, List<ILabelObject>> labelObjects,
    NameData nameData,
    Company company});

  $NameDataCopyWith<$Res> get nameData;

  $CompanyCopyWith<$Res> get company;
}

class _$AddContactStateCopyWithImpl<$Res>
    implements $AddContactStateCopyWith<$Res> {
  _$AddContactStateCopyWithImpl(this._value, this._then);

  final AddContactState _value;
  // ignore: unused_field
  final $Res Function(AddContactState) _then;

  @override
  $Res call({
    Object labelObjects = freezed,
    Object nameData = freezed,
    Object company = freezed,
  }) {
    return _then(_value.copyWith(
      labelObjects: labelObjects == freezed
          ? _value.labelObjects
          : labelObjects as Map<Type, List<ILabelObject>>,
      nameData: nameData == freezed ? _value.nameData : nameData as NameData,
      company: company == freezed ? _value.company : company as Company,
    ));
  }

  @override
  $NameDataCopyWith<$Res> get nameData {
    if (_value.nameData == null) {
      return null;
    }
    return $NameDataCopyWith<$Res>(_value.nameData, (value) {
      return _then(_value.copyWith(nameData: value));
    });
  }

  @override
  $CompanyCopyWith<$Res> get company {
    if (_value.company == null) {
      return null;
    }
    return $CompanyCopyWith<$Res>(_value.company, (value) {
      return _then(_value.copyWith(company: value));
    });
  }
}

abstract class _$AddContactStateCopyWith<$Res>
    implements $AddContactStateCopyWith<$Res> {
  factory _$AddContactStateCopyWith(_AddContactState value,
      $Res Function(_AddContactState) then) =
  __$AddContactStateCopyWithImpl<$Res>;

  @override
  $Res call({Map<Type, List<ILabelObject>> labelObjects,
    NameData nameData,
    Company company});

  @override
  $NameDataCopyWith<$Res> get nameData;

  @override
  $CompanyCopyWith<$Res> get company;
}

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
    Object labelObjects = freezed,
    Object nameData = freezed,
    Object company = freezed,
  }) {
    return _then(_AddContactState(
      labelObjects: labelObjects == freezed
          ? _value.labelObjects
          : labelObjects as Map<Type, List<ILabelObject>>,
      nameData: nameData == freezed ? _value.nameData : nameData as NameData,
      company: company == freezed ? _value.company : company as Company,
    ));
  }
}

class _$_AddContactState extends _AddContactState with DiagnosticableTreeMixin {
  const _$_AddContactState(
      {@required this.labelObjects, this.nameData, this.company})
      : assert(labelObjects != null),
        super._();

  @override
  final Map<Type, List<ILabelObject>> labelObjects;
  @override
  final NameData nameData;
  @override
  final Company company;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddContactState(labelObjects: $labelObjects, nameData: $nameData, company: $company)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddContactState'))
      ..add(DiagnosticsProperty('labelObjects', labelObjects))
      ..add(DiagnosticsProperty('nameData', nameData))
      ..add(DiagnosticsProperty('company', company));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddContactState &&
            (identical(other.labelObjects, labelObjects) ||
                const DeepCollectionEquality()
                    .equals(other.labelObjects, labelObjects)) &&
            (identical(other.nameData, nameData) ||
                const DeepCollectionEquality()
                    .equals(other.nameData, nameData)) &&
            (identical(other.company, company) ||
                const DeepCollectionEquality().equals(other.company, company)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(labelObjects) ^
      const DeepCollectionEquality().hash(nameData) ^
      const DeepCollectionEquality().hash(company);

  @override
  _$AddContactStateCopyWith<_AddContactState> get copyWith =>
      __$AddContactStateCopyWithImpl<_AddContactState>(this, _$identity);
}

abstract class _AddContactState extends AddContactState {
  const _AddContactState._() : super._();
  const factory _AddContactState(
      {@required Map<Type, List<ILabelObject>> labelObjects,
      NameData nameData,
      Company company}) = _$_AddContactState;

  @override
  Map<Type, List<ILabelObject>> get labelObjects;
  @override
  NameData get nameData;
  @override
  Company get company;
  @override
  _$AddContactStateCopyWith<_AddContactState> get copyWith;
}
