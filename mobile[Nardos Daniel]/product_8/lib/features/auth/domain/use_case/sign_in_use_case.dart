import 'package:dartz/dartz.dart';

import '../../../../core/failure/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/sign_in_user_entitiy.dart';
import '../entities/user_data_entity.dart';
import '../repositories/auth_repository.dart';

class SignInUseCase implements UseCase<UserDataEntity, SignInUserEntitiy> {
  final AuthRepository authRepository;

  SignInUseCase({required this.authRepository});

  @override
  Future<Either<Failure, UserDataEntity>> call(SignInUserEntitiy signInUserEntitiy) async {
    return await authRepository.signIn(signInUserEntitiy);
  }
}