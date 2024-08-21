

 import 'package:equatable/equatable.dart';

import '../../../domain/entities/sign_up_user_entitiy.dart';

class SignUpState extends Equatable{
  const SignUpState();

  @override
  List<Object> get props => [];
 }

final class SignUpInitialState extends SignUpState {}

final class SignUpLoadingState extends SignUpState {}

final class SignUpLoadedState extends SignUpState {
 final SignUpUserEntitiy signUpUserEnity;

  const SignUpLoadedState({required this.signUpUserEnity});
  @override
  List<Object> get props => [signUpUserEnity];
}

final class SignUpErrorState extends SignUpState {
  final String message;

  const SignUpErrorState({required this.message});
}
