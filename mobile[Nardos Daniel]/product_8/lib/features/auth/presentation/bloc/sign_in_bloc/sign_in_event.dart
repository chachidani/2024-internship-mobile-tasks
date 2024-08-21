import 'package:equatable/equatable.dart';

import '../../../domain/entities/sign_in_user_entitiy.dart';

class SignInEvent extends Equatable {
  const SignInEvent();

  @override
  List<Object?> get props => [];
}

class OnLogInButtonPressedEvent extends SignInEvent {
  final SignInUserEntitiy signInUserEntitiy;

  const OnLogInButtonPressedEvent({required this.signInUserEntitiy});
}
