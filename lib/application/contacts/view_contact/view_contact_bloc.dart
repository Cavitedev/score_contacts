import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:scorecontacts/domain/call/call_failure.dart';
import 'package:scorecontacts/domain/user/contacts_data/contact.dart';
import 'package:scorecontacts/domain/user/contacts_data/contacts_loading.dart';
import 'package:url_launcher/url_launcher.dart';

part 'view_contact_bloc.freezed.dart';
part 'view_contact_event.dart';
part 'view_contact_state.dart';

@injectable
class ViewContactBloc extends Bloc<ViewContactEvent, ViewContactState> {
  ViewContactBloc() : super(ViewContactState.initial());

  @override
  Stream<ViewContactState> mapEventToState(ViewContactEvent event) async* {
    yield* event.map(initialize: (e) async* {
      yield state.copyWith(contact: e.contact.fromDatabase(e.countryCode));
    }, callNumber: (e) async* {
      final String num = e.number;
      yield state.copyWith(
          unionState: ViewContactUnionState.actionInProgress(
              ContactsLoading.callingNumber(number: num)));

      final String callNumUrlLaunch = "tel:$num";

      if (await canLaunch(callNumUrlLaunch)) {
        yield state.copyWith(
            unionState: ViewContactUnionState.callSuccesful(num));
        await launch(callNumUrlLaunch);
      } else {
        yield state
            .copyWith(unionState: ViewContactUnionState.callFailure(CallFailure.errorOnCall(num)));
    }
    });
  }
}
