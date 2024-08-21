

 import 'package:equatable/equatable.dart';

import '../../../domain/entities/user_data_entity.dart';

class SignInState extends Equatable {
  const SignInState();

  @override
  List<Object?> get props => [];
}

final class SignInInitial extends SignInState {}

final class SignInLoadingState extends SignInState {}

final class SignInLoadedState extends SignInState {
  final UserDataEntity userDataEntity;

  const SignInLoadedState({required this.userDataEntity});

  @override
  List<Object?> get props => [userDataEntity];
}


final class SignInErrorState extends SignInState {
  final String message;

  const SignInErrorState({required this.message});

  @override
  List<Object?> get props => [message];
}