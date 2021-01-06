part of 'contact_drawer_bloc.dart';

@freezed
abstract class ContactDrawerState implements _$ContactDrawerState {
  const ContactDrawerState._();

  const factory ContactDrawerState({
    GlobalKey<ScaffoldState> scaffoldKey,
    bool isOpened,
  }) = _ContactDrawerState;

  factory ContactDrawerState.initial() => ContactDrawerState(
      isOpened: false, scaffoldKey: GlobalKey<ScaffoldState>());
}
