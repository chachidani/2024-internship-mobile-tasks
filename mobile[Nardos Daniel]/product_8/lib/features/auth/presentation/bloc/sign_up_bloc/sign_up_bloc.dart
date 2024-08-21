// ignore_for_file: constant_identifier_names, type_literal_in_constant_pattern

import 'package:bloc/bloc.dart';

import '../../../../../core/failure/failure.dart';
import '../../../domain/use_case/sign_in_use_case.dart';
import '../../../domain/use_case/sign_up_use_case.dart';
import 'sign_up_event.dart';
import 'sign_up_state.dart';

const String INVALID_INPUT_FAILURE_MESSAGE =
    'Invalid input - the number must be a positive integer or zero';
const String SERVER_FAILURE_MESSAGE = 'Server Failure';
const String CACHE_FAILURE_MESSAGE = 'Cache Failure';
const String DATA_BASE_FAILURE_MESSAGE = 'Database Failure';
const String LOCATION_FAILURE_MESSAGE = 'Location Failure';
const String CONNECTION_FAILURE_MESSAGE = 'Connection Failure';
const String PERMISSION_FAILURE_MESSAGE = 'Permission Failure';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final SignUpUseCase signUpUseCase;
  final SignInUseCase signInUseCase;
  SignUpBloc({required this.signInUseCase, required this.signUpUseCase})
      : super(SignUpInitialState()) {
    on<OnSignUpButtonPressedEvent>(_onSignUpButtonPressed);
  }

  Future<void> _onSignUpButtonPressed(
    OnSignUpButtonPressedEvent event,
    Emitter<SignUpState> emit,
  ) async {
    emit(SignUpLoadingState());
    final result = await signUpUseCase(event.signUpUserEntitiy);
    result.fold(
      (failure) => emit(SignUpErrorState(message: _mapFailureToMessage(failure))),
      (user) {
        emit(SignUpLoadedState(signUpUserEnity: user));
       



      },
    );
  }


  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return SERVER_FAILURE_MESSAGE;
      case CacheFailure:
        return CACHE_FAILURE_MESSAGE;
      case InvalidInputFailure:
        return INVALID_INPUT_FAILURE_MESSAGE;

      case ConnectionFailure:
        return CONNECTION_FAILURE_MESSAGE;
      case DatabaseFailure:
        return DATA_BASE_FAILURE_MESSAGE;
      case LocationFailure:
        return LOCATION_FAILURE_MESSAGE;
      case PermissionFailure:
        return PERMISSION_FAILURE_MESSAGE;

      default:
        return 'Unexpected error';
    }
  }
}
