import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'contact_drawer_bloc.freezed.dart';
part 'contact_drawer_event.dart';
part 'contact_drawer_state.dart';

@injectable
class ContactDrawerBloc extends Bloc<ContactDrawerEvent, ContactDrawerState> {
  ContactDrawerBloc() : super(ContactDrawerState.initial());

  @override
  Stream<ContactDrawerState> mapEventToState(
    ContactDrawerEvent event,
  ) async* {
    yield* event.map(openDrawer: (e) async*{
      yield state.copyWith(isOpened:true);
    });
  }
}
