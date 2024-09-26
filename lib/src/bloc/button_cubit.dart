import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'button_state.dart';

class ButtonCubit extends Cubit<ButtonState> {
  ButtonCubit() : super(ButtonInitialState());

  Future<void> execute(Future asyncFunction) async {
    emit(ButtonLoadingState());
    try {
      Either result = await asyncFunction;
      result.fold(
        (error) {
          emit(ButtonFailureState(errorMessage: error));
        },
        (data) {
          emit(ButtonSuccessState());
        }
      );
      emit(ButtonSuccessState());
    } catch (e) {
      emit(ButtonFailureState(errorMessage: e.toString()));
    }
  }
}
