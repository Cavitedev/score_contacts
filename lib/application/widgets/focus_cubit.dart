import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'focus_cubit.freezed.dart';

part 'focus_state.dart';

class FocusCubit extends Cubit<FocusState> {
  FocusCubit() : super(const FocusState.unfocused());

  void focus() {
    emit(const FocusState.focused());
  }

  void unfocus() {
    emit(const FocusState.unfocused());
  }
}
