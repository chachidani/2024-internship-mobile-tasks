import 'package:dartz/dartz.dart';

import '../../../../core/failure/failure.dart';
import '../entities/sign_in_user_entitiy.dart';
import '../entities/sign_up_user_entitiy.dart';
import '../entities/user_data_entity.dart';

abstract class AuthRepository {
  Future<Either<Failure, SignUpUserEntitiy>> signUp(SignUpUserEntitiy signUpUserEntitiy);
  Future<Either<Failure, UserDataEntity>> signIn(SignInUserEntitiy signInUserEntitiy);
}