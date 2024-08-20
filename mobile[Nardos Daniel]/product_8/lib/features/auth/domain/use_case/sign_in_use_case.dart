import 'package:dartz/dartz.dart';

import '../../../../core/failure/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/sign_in_user_entitiy.dart';
import '../entities/sign_up_user_entitiy.dart';
import '../repositories/auth_repository.dart';

class SignInUseCase implements UseCase<SignUpUserEntitiy, SignInUserEntitiy> {
  final AuthRepository authRepository;

  SignInUseCase({required this.authRepository});

  @override
  Future<Either<Failure, SignUpUserEntitiy>> call(SignInUserEntitiy signInUserEntitiy) async {
    return await authRepository.signIn(signInUserEntitiy);
  }
}