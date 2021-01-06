part of 'contact_drawer_bloc.dart';

@freezed
abstract class ContactDrawerEvent with _$ContactDrawerEvent{
    const factory ContactDrawerEvent.openDrawer() = _OpenDrawer;
      }
