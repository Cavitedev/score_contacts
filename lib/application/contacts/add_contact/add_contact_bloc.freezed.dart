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
  _Initialize initialize(Option<Contact> contactOption, BuildContext context) {
    return _Initialize(
      contactOption,
      context,
    );
  }

// ignore: unused_element
  _Saved saved(BuildContext context) {
    return _Saved(
      context,
    );
  }

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
  _UpdateCompany updateCompany(Company company, int index) {
    return _UpdateCompany(
      company,
      index,
    );
  }

// ignore: unused_element
  _AddCompany addCompany() {
    return const _AddCompany();
  }

// ignore: unused_element
  _DeleteCompany deleteCompany(int index) {
    return _DeleteCompany(
      index,
    );
  }
}

// ignore: unused_element
const $AddContactEvent = _$AddContactEventTearOff();

mixin _$AddContactEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result initialize(Option<Contact> contactOption, BuildContext context),
    @required Result saved(BuildContext context),
    @required Result labelObjectChanged(ILabelObject labelObject, int pos),
    @required Result addLabelObject(ILabelObject labelObject),
    @required Result removeLabelObject(Type labelObjectType, int pos),
    @required Result updateNameData(NameData nameData),
    @required Result updateCompany(Company company, int index),
    @required Result addCompany(),
    @required Result deleteCompany(int index),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialize(Option<Contact> contactOption, BuildContext context),
    Result saved(BuildContext context),
    Result labelObjectChanged(ILabelObject labelObject, int pos),
    Result addLabelObject(ILabelObject labelObject),
    Result removeLabelObject(Type labelObjectType, int pos),
    Result updateNameData(NameData nameData),
    Result updateCompany(Company company, int index),
    Result addCompany(),
    Result deleteCompany(int index),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialize(_Initialize value),
    @required Result saved(_Saved value),
    @required Result labelObjectChanged(_LabelObjectChanged value),
    @required Result addLabelObject(_AddLabelObject value),
    @required Result removeLabelObject(_RemoveLabelObject value),
    @required Result updateNameData(_UpdateNameData value),
    @required Result updateCompany(_UpdateCompany value),
    @required Result addCompany(_AddCompany value),
    @required Result deleteCompany(_DeleteCompany value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialize(_Initialize value),
    Result saved(_Saved value),
    Result labelObjectChanged(_LabelObjectChanged value),
    Result addLabelObject(_AddLabelObject value),
    Result removeLabelObject(_RemoveLabelObject value),
    Result updateNameData(_UpdateNameData value),
    Result updateCompany(_UpdateCompany value),
    Result addCompany(_AddCompany value),
    Result deleteCompany(_DeleteCompany value),
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

abstract class _$InitializeCopyWith<$Res> {
  factory _$InitializeCopyWith(
          _Initialize value, $Res Function(_Initialize) then) =
      __$InitializeCopyWithImpl<$Res>;
  $Res call({Option<Contact> contactOption, BuildContext context});
}

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
    Object contactOption = freezed,
    Object context = freezed,
  }) {
    return _then(_Initialize(
      contactOption == freezed
          ? _value.contactOption
          : contactOption as Option<Contact>,
      context == freezed ? _value.context : context as BuildContext,
    ));
  }
}

class _$_Initialize with DiagnosticableTreeMixin implements _Initialize {
  const _$_Initialize(this.contactOption, this.context)
      : assert(contactOption != null),
        assert(context != null);

  @override
  final Option<Contact> contactOption;
  @override
  final BuildContext context;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddContactEvent.initialize(contactOption: $contactOption, context: $context)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddContactEvent.initialize'))
      ..add(DiagnosticsProperty('contactOption', contactOption))
      ..add(DiagnosticsProperty('context', context));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialize &&
            (identical(other.contactOption, contactOption) ||
                const DeepCollectionEquality()
                    .equals(other.contactOption, contactOption)) &&
            (identical(other.context, context) ||
                const DeepCollectionEquality().equals(other.context, context)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(contactOption) ^
      const DeepCollectionEquality().hash(context);

  @override
  _$InitializeCopyWith<_Initialize> get copyWith =>
      __$InitializeCopyWithImpl<_Initialize>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result initialize(Option<Contact> contactOption, BuildContext context),
    @required Result saved(BuildContext context),
    @required Result labelObjectChanged(ILabelObject labelObject, int pos),
    @required Result addLabelObject(ILabelObject labelObject),
    @required Result removeLabelObject(Type labelObjectType, int pos),
    @required Result updateNameData(NameData nameData),
    @required Result updateCompany(Company company, int index),
    @required Result addCompany(),
    @required Result deleteCompany(int index),
  }) {
    assert(initialize != null);
    assert(saved != null);
    assert(labelObjectChanged != null);
    assert(addLabelObject != null);
    assert(removeLabelObject != null);
    assert(updateNameData != null);
    assert(updateCompany != null);
    assert(addCompany != null);
    assert(deleteCompany != null);
    return initialize(contactOption, context);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialize(Option<Contact> contactOption, BuildContext context),
    Result saved(BuildContext context),
    Result labelObjectChanged(ILabelObject labelObject, int pos),
    Result addLabelObject(ILabelObject labelObject),
    Result removeLabelObject(Type labelObjectType, int pos),
    Result updateNameData(NameData nameData),
    Result updateCompany(Company company, int index),
    Result addCompany(),
    Result deleteCompany(int index),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialize != null) {
      return initialize(contactOption, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialize(_Initialize value),
    @required Result saved(_Saved value),
    @required Result labelObjectChanged(_LabelObjectChanged value),
    @required Result addLabelObject(_AddLabelObject value),
    @required Result removeLabelObject(_RemoveLabelObject value),
    @required Result updateNameData(_UpdateNameData value),
    @required Result updateCompany(_UpdateCompany value),
    @required Result addCompany(_AddCompany value),
    @required Result deleteCompany(_DeleteCompany value),
  }) {
    assert(initialize != null);
    assert(saved != null);
    assert(labelObjectChanged != null);
    assert(addLabelObject != null);
    assert(removeLabelObject != null);
    assert(updateNameData != null);
    assert(updateCompany != null);
    assert(addCompany != null);
    assert(deleteCompany != null);
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialize(_Initialize value),
    Result saved(_Saved value),
    Result labelObjectChanged(_LabelObjectChanged value),
    Result addLabelObject(_AddLabelObject value),
    Result removeLabelObject(_RemoveLabelObject value),
    Result updateNameData(_UpdateNameData value),
    Result updateCompany(_UpdateCompany value),
    Result addCompany(_AddCompany value),
    Result deleteCompany(_DeleteCompany value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class _Initialize implements AddContactEvent {
  const factory _Initialize(
      Option<Contact> contactOption, BuildContext context) = _$_Initialize;

  Option<Contact> get contactOption;
  BuildContext get context;
  _$InitializeCopyWith<_Initialize> get copyWith;
}

abstract class _$SavedCopyWith<$Res> {
  factory _$SavedCopyWith(_Saved value, $Res Function(_Saved) then) =
      __$SavedCopyWithImpl<$Res>;
  $Res call({BuildContext context});
}

class __$SavedCopyWithImpl<$Res> extends _$AddContactEventCopyWithImpl<$Res>
    implements _$SavedCopyWith<$Res> {
  __$SavedCopyWithImpl(_Saved _value, $Res Function(_Saved) _then)
      : super(_value, (v) => _then(v as _Saved));

  @override
  _Saved get _value => super._value as _Saved;

  @override
  $Res call({
    Object context = freezed,
  }) {
    return _then(_Saved(
      context == freezed ? _value.context : context as BuildContext,
    ));
  }
}

class _$_Saved with DiagnosticableTreeMixin implements _Saved {
  const _$_Saved(this.context) : assert(context != null);

  @override
  final BuildContext context;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddContactEvent.saved(context: $context)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddContactEvent.saved'))
      ..add(DiagnosticsProperty('context', context));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Saved &&
            (identical(other.context, context) ||
                const DeepCollectionEquality().equals(other.context, context)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(context);

  @override
  _$SavedCopyWith<_Saved> get copyWith =>
      __$SavedCopyWithImpl<_Saved>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result initialize(Option<Contact> contactOption, BuildContext context),
    @required Result saved(BuildContext context),
    @required Result labelObjectChanged(ILabelObject labelObject, int pos),
    @required Result addLabelObject(ILabelObject labelObject),
    @required Result removeLabelObject(Type labelObjectType, int pos),
    @required Result updateNameData(NameData nameData),
    @required Result updateCompany(Company company, int index),
    @required Result addCompany(),
    @required Result deleteCompany(int index),
  }) {
    assert(initialize != null);
    assert(saved != null);
    assert(labelObjectChanged != null);
    assert(addLabelObject != null);
    assert(removeLabelObject != null);
    assert(updateNameData != null);
    assert(updateCompany != null);
    assert(addCompany != null);
    assert(deleteCompany != null);
    return saved(context);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialize(Option<Contact> contactOption, BuildContext context),
    Result saved(BuildContext context),
    Result labelObjectChanged(ILabelObject labelObject, int pos),
    Result addLabelObject(ILabelObject labelObject),
    Result removeLabelObject(Type labelObjectType, int pos),
    Result updateNameData(NameData nameData),
    Result updateCompany(Company company, int index),
    Result addCompany(),
    Result deleteCompany(int index),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialize(_Initialize value),
    @required Result saved(_Saved value),
    @required Result labelObjectChanged(_LabelObjectChanged value),
    @required Result addLabelObject(_AddLabelObject value),
    @required Result removeLabelObject(_RemoveLabelObject value),
    @required Result updateNameData(_UpdateNameData value),
    @required Result updateCompany(_UpdateCompany value),
    @required Result addCompany(_AddCompany value),
    @required Result deleteCompany(_DeleteCompany value),
  }) {
    assert(initialize != null);
    assert(saved != null);
    assert(labelObjectChanged != null);
    assert(addLabelObject != null);
    assert(removeLabelObject != null);
    assert(updateNameData != null);
    assert(updateCompany != null);
    assert(addCompany != null);
    assert(deleteCompany != null);
    return saved(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialize(_Initialize value),
    Result saved(_Saved value),
    Result labelObjectChanged(_LabelObjectChanged value),
    Result addLabelObject(_AddLabelObject value),
    Result removeLabelObject(_RemoveLabelObject value),
    Result updateNameData(_UpdateNameData value),
    Result updateCompany(_UpdateCompany value),
    Result addCompany(_AddCompany value),
    Result deleteCompany(_DeleteCompany value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements AddContactEvent {
  const factory _Saved(BuildContext context) = _$_Saved;

  BuildContext get context;
  _$SavedCopyWith<_Saved> get copyWith;
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
    @required
        Result initialize(Option<Contact> contactOption, BuildContext context),
    @required Result saved(BuildContext context),
    @required Result labelObjectChanged(ILabelObject labelObject, int pos),
    @required Result addLabelObject(ILabelObject labelObject),
    @required Result removeLabelObject(Type labelObjectType, int pos),
    @required Result updateNameData(NameData nameData),
    @required Result updateCompany(Company company, int index),
    @required Result addCompany(),
    @required Result deleteCompany(int index),
  }) {
    assert(initialize != null);
    assert(saved != null);
    assert(labelObjectChanged != null);
    assert(addLabelObject != null);
    assert(removeLabelObject != null);
    assert(updateNameData != null);
    assert(updateCompany != null);
    assert(addCompany != null);
    assert(deleteCompany != null);
    return labelObjectChanged(labelObject, pos);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialize(Option<Contact> contactOption, BuildContext context),
    Result saved(BuildContext context),
    Result labelObjectChanged(ILabelObject labelObject, int pos),
    Result addLabelObject(ILabelObject labelObject),
    Result removeLabelObject(Type labelObjectType, int pos),
    Result updateNameData(NameData nameData),
    Result updateCompany(Company company, int index),
    Result addCompany(),
    Result deleteCompany(int index),
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
    @required Result initialize(_Initialize value),
    @required Result saved(_Saved value),
    @required Result labelObjectChanged(_LabelObjectChanged value),
    @required Result addLabelObject(_AddLabelObject value),
    @required Result removeLabelObject(_RemoveLabelObject value),
    @required Result updateNameData(_UpdateNameData value),
    @required Result updateCompany(_UpdateCompany value),
    @required Result addCompany(_AddCompany value),
    @required Result deleteCompany(_DeleteCompany value),
  }) {
    assert(initialize != null);
    assert(saved != null);
    assert(labelObjectChanged != null);
    assert(addLabelObject != null);
    assert(removeLabelObject != null);
    assert(updateNameData != null);
    assert(updateCompany != null);
    assert(addCompany != null);
    assert(deleteCompany != null);
    return labelObjectChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialize(_Initialize value),
    Result saved(_Saved value),
    Result labelObjectChanged(_LabelObjectChanged value),
    Result addLabelObject(_AddLabelObject value),
    Result removeLabelObject(_RemoveLabelObject value),
    Result updateNameData(_UpdateNameData value),
    Result updateCompany(_UpdateCompany value),
    Result addCompany(_AddCompany value),
    Result deleteCompany(_DeleteCompany value),
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
    @required
        Result initialize(Option<Contact> contactOption, BuildContext context),
    @required Result saved(BuildContext context),
    @required Result labelObjectChanged(ILabelObject labelObject, int pos),
    @required Result addLabelObject(ILabelObject labelObject),
    @required Result removeLabelObject(Type labelObjectType, int pos),
    @required Result updateNameData(NameData nameData),
    @required Result updateCompany(Company company, int index),
    @required Result addCompany(),
    @required Result deleteCompany(int index),
  }) {
    assert(initialize != null);
    assert(saved != null);
    assert(labelObjectChanged != null);
    assert(addLabelObject != null);
    assert(removeLabelObject != null);
    assert(updateNameData != null);
    assert(updateCompany != null);
    assert(addCompany != null);
    assert(deleteCompany != null);
    return addLabelObject(labelObject);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialize(Option<Contact> contactOption, BuildContext context),
    Result saved(BuildContext context),
    Result labelObjectChanged(ILabelObject labelObject, int pos),
    Result addLabelObject(ILabelObject labelObject),
    Result removeLabelObject(Type labelObjectType, int pos),
    Result updateNameData(NameData nameData),
    Result updateCompany(Company company, int index),
    Result addCompany(),
    Result deleteCompany(int index),
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
    @required Result initialize(_Initialize value),
    @required Result saved(_Saved value),
    @required Result labelObjectChanged(_LabelObjectChanged value),
    @required Result addLabelObject(_AddLabelObject value),
    @required Result removeLabelObject(_RemoveLabelObject value),
    @required Result updateNameData(_UpdateNameData value),
    @required Result updateCompany(_UpdateCompany value),
    @required Result addCompany(_AddCompany value),
    @required Result deleteCompany(_DeleteCompany value),
  }) {
    assert(initialize != null);
    assert(saved != null);
    assert(labelObjectChanged != null);
    assert(addLabelObject != null);
    assert(removeLabelObject != null);
    assert(updateNameData != null);
    assert(updateCompany != null);
    assert(addCompany != null);
    assert(deleteCompany != null);
    return addLabelObject(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialize(_Initialize value),
    Result saved(_Saved value),
    Result labelObjectChanged(_LabelObjectChanged value),
    Result addLabelObject(_AddLabelObject value),
    Result removeLabelObject(_RemoveLabelObject value),
    Result updateNameData(_UpdateNameData value),
    Result updateCompany(_UpdateCompany value),
    Result addCompany(_AddCompany value),
    Result deleteCompany(_DeleteCompany value),
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
    @required
        Result initialize(Option<Contact> contactOption, BuildContext context),
    @required Result saved(BuildContext context),
    @required Result labelObjectChanged(ILabelObject labelObject, int pos),
    @required Result addLabelObject(ILabelObject labelObject),
    @required Result removeLabelObject(Type labelObjectType, int pos),
    @required Result updateNameData(NameData nameData),
    @required Result updateCompany(Company company, int index),
    @required Result addCompany(),
    @required Result deleteCompany(int index),
  }) {
    assert(initialize != null);
    assert(saved != null);
    assert(labelObjectChanged != null);
    assert(addLabelObject != null);
    assert(removeLabelObject != null);
    assert(updateNameData != null);
    assert(updateCompany != null);
    assert(addCompany != null);
    assert(deleteCompany != null);
    return removeLabelObject(labelObjectType, pos);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialize(Option<Contact> contactOption, BuildContext context),
    Result saved(BuildContext context),
    Result labelObjectChanged(ILabelObject labelObject, int pos),
    Result addLabelObject(ILabelObject labelObject),
    Result removeLabelObject(Type labelObjectType, int pos),
    Result updateNameData(NameData nameData),
    Result updateCompany(Company company, int index),
    Result addCompany(),
    Result deleteCompany(int index),
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
    @required Result initialize(_Initialize value),
    @required Result saved(_Saved value),
    @required Result labelObjectChanged(_LabelObjectChanged value),
    @required Result addLabelObject(_AddLabelObject value),
    @required Result removeLabelObject(_RemoveLabelObject value),
    @required Result updateNameData(_UpdateNameData value),
    @required Result updateCompany(_UpdateCompany value),
    @required Result addCompany(_AddCompany value),
    @required Result deleteCompany(_DeleteCompany value),
  }) {
    assert(initialize != null);
    assert(saved != null);
    assert(labelObjectChanged != null);
    assert(addLabelObject != null);
    assert(removeLabelObject != null);
    assert(updateNameData != null);
    assert(updateCompany != null);
    assert(addCompany != null);
    assert(deleteCompany != null);
    return removeLabelObject(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialize(_Initialize value),
    Result saved(_Saved value),
    Result labelObjectChanged(_LabelObjectChanged value),
    Result addLabelObject(_AddLabelObject value),
    Result removeLabelObject(_RemoveLabelObject value),
    Result updateNameData(_UpdateNameData value),
    Result updateCompany(_UpdateCompany value),
    Result addCompany(_AddCompany value),
    Result deleteCompany(_DeleteCompany value),
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
    @required
        Result initialize(Option<Contact> contactOption, BuildContext context),
    @required Result saved(BuildContext context),
    @required Result labelObjectChanged(ILabelObject labelObject, int pos),
    @required Result addLabelObject(ILabelObject labelObject),
    @required Result removeLabelObject(Type labelObjectType, int pos),
    @required Result updateNameData(NameData nameData),
    @required Result updateCompany(Company company, int index),
    @required Result addCompany(),
    @required Result deleteCompany(int index),
  }) {
    assert(initialize != null);
    assert(saved != null);
    assert(labelObjectChanged != null);
    assert(addLabelObject != null);
    assert(removeLabelObject != null);
    assert(updateNameData != null);
    assert(updateCompany != null);
    assert(addCompany != null);
    assert(deleteCompany != null);
    return updateNameData(nameData);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialize(Option<Contact> contactOption, BuildContext context),
    Result saved(BuildContext context),
    Result labelObjectChanged(ILabelObject labelObject, int pos),
    Result addLabelObject(ILabelObject labelObject),
    Result removeLabelObject(Type labelObjectType, int pos),
    Result updateNameData(NameData nameData),
    Result updateCompany(Company company, int index),
    Result addCompany(),
    Result deleteCompany(int index),
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
    @required Result initialize(_Initialize value),
    @required Result saved(_Saved value),
    @required Result labelObjectChanged(_LabelObjectChanged value),
    @required Result addLabelObject(_AddLabelObject value),
    @required Result removeLabelObject(_RemoveLabelObject value),
    @required Result updateNameData(_UpdateNameData value),
    @required Result updateCompany(_UpdateCompany value),
    @required Result addCompany(_AddCompany value),
    @required Result deleteCompany(_DeleteCompany value),
  }) {
    assert(initialize != null);
    assert(saved != null);
    assert(labelObjectChanged != null);
    assert(addLabelObject != null);
    assert(removeLabelObject != null);
    assert(updateNameData != null);
    assert(updateCompany != null);
    assert(addCompany != null);
    assert(deleteCompany != null);
    return updateNameData(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialize(_Initialize value),
    Result saved(_Saved value),
    Result labelObjectChanged(_LabelObjectChanged value),
    Result addLabelObject(_AddLabelObject value),
    Result removeLabelObject(_RemoveLabelObject value),
    Result updateNameData(_UpdateNameData value),
    Result updateCompany(_UpdateCompany value),
    Result addCompany(_AddCompany value),
    Result deleteCompany(_DeleteCompany value),
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

abstract class _$UpdateCompanyCopyWith<$Res> {
  factory _$UpdateCompanyCopyWith(
          _UpdateCompany value, $Res Function(_UpdateCompany) then) =
      __$UpdateCompanyCopyWithImpl<$Res>;
  $Res call({Company company, int index});

  $CompanyCopyWith<$Res> get company;
}

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
    Object company = freezed,
    Object index = freezed,
  }) {
    return _then(_UpdateCompany(
      company == freezed ? _value.company : company as Company,
      index == freezed ? _value.index : index as int,
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

class _$_UpdateCompany with DiagnosticableTreeMixin implements _UpdateCompany {
  const _$_UpdateCompany(this.company, this.index)
      : assert(company != null),
        assert(index != null);

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

  @override
  _$UpdateCompanyCopyWith<_UpdateCompany> get copyWith =>
      __$UpdateCompanyCopyWithImpl<_UpdateCompany>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result initialize(Option<Contact> contactOption, BuildContext context),
    @required Result saved(BuildContext context),
    @required Result labelObjectChanged(ILabelObject labelObject, int pos),
    @required Result addLabelObject(ILabelObject labelObject),
    @required Result removeLabelObject(Type labelObjectType, int pos),
    @required Result updateNameData(NameData nameData),
    @required Result updateCompany(Company company, int index),
    @required Result addCompany(),
    @required Result deleteCompany(int index),
  }) {
    assert(initialize != null);
    assert(saved != null);
    assert(labelObjectChanged != null);
    assert(addLabelObject != null);
    assert(removeLabelObject != null);
    assert(updateNameData != null);
    assert(updateCompany != null);
    assert(addCompany != null);
    assert(deleteCompany != null);
    return updateCompany(company, index);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialize(Option<Contact> contactOption, BuildContext context),
    Result saved(BuildContext context),
    Result labelObjectChanged(ILabelObject labelObject, int pos),
    Result addLabelObject(ILabelObject labelObject),
    Result removeLabelObject(Type labelObjectType, int pos),
    Result updateNameData(NameData nameData),
    Result updateCompany(Company company, int index),
    Result addCompany(),
    Result deleteCompany(int index),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateCompany != null) {
      return updateCompany(company, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialize(_Initialize value),
    @required Result saved(_Saved value),
    @required Result labelObjectChanged(_LabelObjectChanged value),
    @required Result addLabelObject(_AddLabelObject value),
    @required Result removeLabelObject(_RemoveLabelObject value),
    @required Result updateNameData(_UpdateNameData value),
    @required Result updateCompany(_UpdateCompany value),
    @required Result addCompany(_AddCompany value),
    @required Result deleteCompany(_DeleteCompany value),
  }) {
    assert(initialize != null);
    assert(saved != null);
    assert(labelObjectChanged != null);
    assert(addLabelObject != null);
    assert(removeLabelObject != null);
    assert(updateNameData != null);
    assert(updateCompany != null);
    assert(addCompany != null);
    assert(deleteCompany != null);
    return updateCompany(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialize(_Initialize value),
    Result saved(_Saved value),
    Result labelObjectChanged(_LabelObjectChanged value),
    Result addLabelObject(_AddLabelObject value),
    Result removeLabelObject(_RemoveLabelObject value),
    Result updateNameData(_UpdateNameData value),
    Result updateCompany(_UpdateCompany value),
    Result addCompany(_AddCompany value),
    Result deleteCompany(_DeleteCompany value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateCompany != null) {
      return updateCompany(this);
    }
    return orElse();
  }
}

abstract class _UpdateCompany implements AddContactEvent {
  const factory _UpdateCompany(Company company, int index) = _$_UpdateCompany;

  Company get company;
  int get index;
  _$UpdateCompanyCopyWith<_UpdateCompany> get copyWith;
}

abstract class _$AddCompanyCopyWith<$Res> {
  factory _$AddCompanyCopyWith(
          _AddCompany value, $Res Function(_AddCompany) then) =
      __$AddCompanyCopyWithImpl<$Res>;
}

class __$AddCompanyCopyWithImpl<$Res>
    extends _$AddContactEventCopyWithImpl<$Res>
    implements _$AddCompanyCopyWith<$Res> {
  __$AddCompanyCopyWithImpl(
      _AddCompany _value, $Res Function(_AddCompany) _then)
      : super(_value, (v) => _then(v as _AddCompany));

  @override
  _AddCompany get _value => super._value as _AddCompany;
}

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
  Result when<Result extends Object>({
    @required
        Result initialize(Option<Contact> contactOption, BuildContext context),
    @required Result saved(BuildContext context),
    @required Result labelObjectChanged(ILabelObject labelObject, int pos),
    @required Result addLabelObject(ILabelObject labelObject),
    @required Result removeLabelObject(Type labelObjectType, int pos),
    @required Result updateNameData(NameData nameData),
    @required Result updateCompany(Company company, int index),
    @required Result addCompany(),
    @required Result deleteCompany(int index),
  }) {
    assert(initialize != null);
    assert(saved != null);
    assert(labelObjectChanged != null);
    assert(addLabelObject != null);
    assert(removeLabelObject != null);
    assert(updateNameData != null);
    assert(updateCompany != null);
    assert(addCompany != null);
    assert(deleteCompany != null);
    return addCompany();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialize(Option<Contact> contactOption, BuildContext context),
    Result saved(BuildContext context),
    Result labelObjectChanged(ILabelObject labelObject, int pos),
    Result addLabelObject(ILabelObject labelObject),
    Result removeLabelObject(Type labelObjectType, int pos),
    Result updateNameData(NameData nameData),
    Result updateCompany(Company company, int index),
    Result addCompany(),
    Result deleteCompany(int index),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addCompany != null) {
      return addCompany();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialize(_Initialize value),
    @required Result saved(_Saved value),
    @required Result labelObjectChanged(_LabelObjectChanged value),
    @required Result addLabelObject(_AddLabelObject value),
    @required Result removeLabelObject(_RemoveLabelObject value),
    @required Result updateNameData(_UpdateNameData value),
    @required Result updateCompany(_UpdateCompany value),
    @required Result addCompany(_AddCompany value),
    @required Result deleteCompany(_DeleteCompany value),
  }) {
    assert(initialize != null);
    assert(saved != null);
    assert(labelObjectChanged != null);
    assert(addLabelObject != null);
    assert(removeLabelObject != null);
    assert(updateNameData != null);
    assert(updateCompany != null);
    assert(addCompany != null);
    assert(deleteCompany != null);
    return addCompany(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialize(_Initialize value),
    Result saved(_Saved value),
    Result labelObjectChanged(_LabelObjectChanged value),
    Result addLabelObject(_AddLabelObject value),
    Result removeLabelObject(_RemoveLabelObject value),
    Result updateNameData(_UpdateNameData value),
    Result updateCompany(_UpdateCompany value),
    Result addCompany(_AddCompany value),
    Result deleteCompany(_DeleteCompany value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addCompany != null) {
      return addCompany(this);
    }
    return orElse();
  }
}

abstract class _AddCompany implements AddContactEvent {
  const factory _AddCompany() = _$_AddCompany;
}

abstract class _$DeleteCompanyCopyWith<$Res> {
  factory _$DeleteCompanyCopyWith(
          _DeleteCompany value, $Res Function(_DeleteCompany) then) =
      __$DeleteCompanyCopyWithImpl<$Res>;
  $Res call({int index});
}

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
    Object index = freezed,
  }) {
    return _then(_DeleteCompany(
      index == freezed ? _value.index : index as int,
    ));
  }
}

class _$_DeleteCompany with DiagnosticableTreeMixin implements _DeleteCompany {
  const _$_DeleteCompany(this.index) : assert(index != null);

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

  @override
  _$DeleteCompanyCopyWith<_DeleteCompany> get copyWith =>
      __$DeleteCompanyCopyWithImpl<_DeleteCompany>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result initialize(Option<Contact> contactOption, BuildContext context),
    @required Result saved(BuildContext context),
    @required Result labelObjectChanged(ILabelObject labelObject, int pos),
    @required Result addLabelObject(ILabelObject labelObject),
    @required Result removeLabelObject(Type labelObjectType, int pos),
    @required Result updateNameData(NameData nameData),
    @required Result updateCompany(Company company, int index),
    @required Result addCompany(),
    @required Result deleteCompany(int index),
  }) {
    assert(initialize != null);
    assert(saved != null);
    assert(labelObjectChanged != null);
    assert(addLabelObject != null);
    assert(removeLabelObject != null);
    assert(updateNameData != null);
    assert(updateCompany != null);
    assert(addCompany != null);
    assert(deleteCompany != null);
    return deleteCompany(index);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialize(Option<Contact> contactOption, BuildContext context),
    Result saved(BuildContext context),
    Result labelObjectChanged(ILabelObject labelObject, int pos),
    Result addLabelObject(ILabelObject labelObject),
    Result removeLabelObject(Type labelObjectType, int pos),
    Result updateNameData(NameData nameData),
    Result updateCompany(Company company, int index),
    Result addCompany(),
    Result deleteCompany(int index),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteCompany != null) {
      return deleteCompany(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialize(_Initialize value),
    @required Result saved(_Saved value),
    @required Result labelObjectChanged(_LabelObjectChanged value),
    @required Result addLabelObject(_AddLabelObject value),
    @required Result removeLabelObject(_RemoveLabelObject value),
    @required Result updateNameData(_UpdateNameData value),
    @required Result updateCompany(_UpdateCompany value),
    @required Result addCompany(_AddCompany value),
    @required Result deleteCompany(_DeleteCompany value),
  }) {
    assert(initialize != null);
    assert(saved != null);
    assert(labelObjectChanged != null);
    assert(addLabelObject != null);
    assert(removeLabelObject != null);
    assert(updateNameData != null);
    assert(updateCompany != null);
    assert(addCompany != null);
    assert(deleteCompany != null);
    return deleteCompany(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialize(_Initialize value),
    Result saved(_Saved value),
    Result labelObjectChanged(_LabelObjectChanged value),
    Result addLabelObject(_AddLabelObject value),
    Result removeLabelObject(_RemoveLabelObject value),
    Result updateNameData(_UpdateNameData value),
    Result updateCompany(_UpdateCompany value),
    Result addCompany(_AddCompany value),
    Result deleteCompany(_DeleteCompany value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteCompany != null) {
      return deleteCompany(this);
    }
    return orElse();
  }
}

abstract class _DeleteCompany implements AddContactEvent {
  const factory _DeleteCompany(int index) = _$_DeleteCompany;

  int get index;
  _$DeleteCompanyCopyWith<_DeleteCompany> get copyWith;
}

class _$AddContactStateTearOff {
  const _$AddContactStateTearOff();

// ignore: unused_element
  _AddContactState call(
      {@required Contact contact,
      @required bool isEditting,
      @required bool isSaving,
      @required Option<Either<ContactsFailure, Unit>> savingOrFailureOption}) {
    return _AddContactState(
      contact: contact,
      isEditting: isEditting,
      isSaving: isSaving,
      savingOrFailureOption: savingOrFailureOption,
    );
  }
}

// ignore: unused_element
const $AddContactState = _$AddContactStateTearOff();

mixin _$AddContactState {
  Contact get contact;
  bool get isEditting;
  bool get isSaving;
  Option<Either<ContactsFailure, Unit>> get savingOrFailureOption;

  $AddContactStateCopyWith<AddContactState> get copyWith;
}

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

class _$AddContactStateCopyWithImpl<$Res>
    implements $AddContactStateCopyWith<$Res> {
  _$AddContactStateCopyWithImpl(this._value, this._then);

  final AddContactState _value;
  // ignore: unused_field
  final $Res Function(AddContactState) _then;

  @override
  $Res call({
    Object contact = freezed,
    Object isEditting = freezed,
    Object isSaving = freezed,
    Object savingOrFailureOption = freezed,
  }) {
    return _then(_value.copyWith(
      contact: contact == freezed ? _value.contact : contact as Contact,
      isEditting:
          isEditting == freezed ? _value.isEditting : isEditting as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      savingOrFailureOption: savingOrFailureOption == freezed
          ? _value.savingOrFailureOption
          : savingOrFailureOption as Option<Either<ContactsFailure, Unit>>,
    ));
  }

  @override
  $ContactCopyWith<$Res> get contact {
    if (_value.contact == null) {
      return null;
    }
    return $ContactCopyWith<$Res>(_value.contact, (value) {
      return _then(_value.copyWith(contact: value));
    });
  }
}

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
    Object contact = freezed,
    Object isEditting = freezed,
    Object isSaving = freezed,
    Object savingOrFailureOption = freezed,
  }) {
    return _then(_AddContactState(
      contact: contact == freezed ? _value.contact : contact as Contact,
      isEditting:
          isEditting == freezed ? _value.isEditting : isEditting as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      savingOrFailureOption: savingOrFailureOption == freezed
          ? _value.savingOrFailureOption
          : savingOrFailureOption as Option<Either<ContactsFailure, Unit>>,
    ));
  }
}

class _$_AddContactState extends _AddContactState with DiagnosticableTreeMixin {
  const _$_AddContactState(
      {@required this.contact,
      @required this.isEditting,
      @required this.isSaving,
      @required this.savingOrFailureOption})
      : assert(contact != null),
        assert(isEditting != null),
        assert(isSaving != null),
        assert(savingOrFailureOption != null),
        super._();

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

  @override
  _$AddContactStateCopyWith<_AddContactState> get copyWith =>
      __$AddContactStateCopyWithImpl<_AddContactState>(this, _$identity);
}

abstract class _AddContactState extends AddContactState {
  const _AddContactState._() : super._();
  const factory _AddContactState(
          {@required
              Contact contact,
          @required
              bool isEditting,
          @required
              bool isSaving,
          @required
              Option<Either<ContactsFailure, Unit>> savingOrFailureOption}) =
      _$_AddContactState;

  @override
  Contact get contact;
  @override
  bool get isEditting;
  @override
  bool get isSaving;
  @override
  Option<Either<ContactsFailure, Unit>> get savingOrFailureOption;
  @override
  _$AddContactStateCopyWith<_AddContactState> get copyWith;
}
