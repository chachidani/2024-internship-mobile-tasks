import 'package:dartz/dartz.dart';

import '../../../../core/failure/failure.dart';
import '../entities/sign_in_user_entitiy.dart';
import '../entities/sign_up_user_entitiy.dart';

abstract class AuthRepository {
  Future<Either<Failure, SignUpUserEntitiy>> signUp(SignUpUserEntitiy signUpUserEntitiy);
  Future<Either<Failure, SignUpUserEntitiy>> signIn(SignInUserEntitiy signInUserEntitiy);
}