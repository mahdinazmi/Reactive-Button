import 'package:flutter_bloc/flutter_bloc.dart';
import 'button_state.dart';

class ButtonCubit extends Cubit<ButtonState> {
  ButtonCubit() : super(ButtonInitialState());

  Future<void> execute(Function asyncFunction) async {
    emit(ButtonLoadingState());
    try {
      await asyncFunction();
      emit(ButtonSuccessState());
    } catch (e) {
      emit(ButtonFailureState(errorMessage: e.toString()));
    }
  }
}
