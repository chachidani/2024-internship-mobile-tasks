import 'package:equatable/equatable.dart';

import '../../../domain/entities/sign_up_user_entitiy.dart';

class SignUpEvent extends Equatable {
  const SignUpEvent();

  @override
  List<Object?> get props => [];
}

class OnSignUpButtonPressedEvent extends SignUpEvent {
  final SignUpUserEntitiy signUpUserEntitiy;

  const OnSignUpButtonPressedEvent({required this.signUpUserEntitiy});
}
