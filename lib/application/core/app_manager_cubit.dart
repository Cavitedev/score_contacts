import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'app_manager_cubit.freezed.dart';
part 'app_manager_state.dart';

@injectable
class AppManagerCubit extends Cubit<AppManagerState> {
  AppManagerCubit() : super(AppManagerState.initial());


  void changeThemeData(ThemeMode themeMode){
    emit(state.copyWith(themeMode: themeMode));
  }


  Future<void> getSystemRegion() async {
    const channel = MethodChannel("com.cavitedev.scorecontacts/region");
    final String region = await channel.invokeMethod("getSystemRegion");
    emit(state.copyWith(region:region));
  }

}
