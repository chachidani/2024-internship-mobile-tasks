// ignore_for_file: constant_identifier_names, type_literal_in_constant_pattern

import 'package:bloc/bloc.dart';

import '../../../../../core/failure/failure.dart';
import '../../../domain/use_case/sign_in_use_case.dart';
import 'sign_in_event.dart';
import 'sign_in_state.dart';

const String INVALID_INPUT_FAILURE_MESSAGE =
    'Invalid input - the number must be a positive integer or zero';
const String SERVER_FAILURE_MESSAGE = 'Server Failure';
const String CACHE_FAILURE_MESSAGE = 'Cache Failure';
const String DATA_BASE_FAILURE_MESSAGE = 'Database Failure';
const String LOCATION_FAILURE_MESSAGE = 'Location Failure';
const String CONNECTION_FAILURE_MESSAGE = 'Connection Failure';
const String PERMISSION_FAILURE_MESSAGE = 'Permission Failure';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final SignInUseCase signInUseCase;
  SignInBloc({required this.signInUseCase}) : super(SignInInitial()) {
    on<OnLogInButtonPressedEvent>(_onLogInButtonPressed);
  }

  Future<void> _onLogInButtonPressed(
    OnLogInButtonPressedEvent event,
    Emitter<SignInState> emit,
  ) async {
    emit(SignInLoadingState());
    final result = await signInUseCase(event.signInUserEntitiy);
    result.fold(
      (failure) =>
          emit(SignInErrorState(message: _mapFailureToMessage(failure))),
      (userDataEntity) =>
          emit(SignInLoadedState(userDataEntity: userDataEntity)),
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
