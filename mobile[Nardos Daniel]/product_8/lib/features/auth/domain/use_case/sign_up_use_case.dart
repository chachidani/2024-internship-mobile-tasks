import 'package:dartz/dartz.dart';

import '../../../../core/failure/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/sign_up_user_entitiy.dart';
import '../repositories/auth_repository.dart';

 class SignUpUseCase extends UseCase<SignUpUserEntitiy, SignUpUserEntitiy> {
  final AuthRepository authRepository;
  SignUpUseCase({required this.authRepository});

  @override
  Future<Either<Failure, SignUpUserEntitiy>> call(SignUpUserEntitiy signUpUserEntitiy) async{
    return await authRepository.signUp(signUpUserEntitiy);
  }
}