import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'focus_cubit.freezed.dart';
part 'focus_state.dart';

@injectable
class FocusCubit extends Cubit<FocusState> {
  FocusCubit() : super(const FocusState.unfocused());

  void focus() {
    emit(const FocusState.focused());
  }

  void unfocus() {
    emit(const FocusState.unfocused());
  }

  void switchFocus() {
    state.map(
      focused: (_) => emit(const FocusState.unfocused()),
      unfocused: (_) => emit(const FocusState.focused()),
    );
  }
}
