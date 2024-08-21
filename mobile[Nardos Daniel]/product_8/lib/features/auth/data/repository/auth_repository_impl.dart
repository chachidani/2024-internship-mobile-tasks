import 'package:dartz/dartz.dart';

import '../../../../core/exception/exception.dart';
import '../../../../core/failure/failure.dart';
import '../../../../core/platform/network_info.dart';
import '../../domain/entities/sign_in_user_entitiy.dart';
import '../../domain/entities/sign_up_user_entitiy.dart';
import '../../domain/entities/user_data_entity.dart';
import '../../domain/repositories/auth_repository.dart';
import '../data_source/auth_local_data_source.dart';
import '../data_source/auth_remote_data_source.dart';
import '../models/sign_in_user_model.dart';
import '../models/sign_up_user_model.dart';

class AuthRepositoryImpl extends AuthRepository {
  final AuthRemoteDataSource authRemoteDataSource;
  final AuthLocalDataSource authLocalDataSource;
  final NetworkInfo networkInfo;
  AuthRepositoryImpl(
      {required this.authRemoteDataSource,
      required this.authLocalDataSource,
      required this.networkInfo});

  @override
  Future<Either<Failure, SignUpUserEntitiy>> signUp(
      SignUpUserEntitiy signUpUserEntitiy) async {
    if (await networkInfo.isConnected) {
      try {
        SignUpUserModel newUserModel = SignUpUserModel(
            email: signUpUserEntitiy.email,
            password: signUpUserEntitiy.password,
            name: signUpUserEntitiy.name);
        final result = await authRemoteDataSource.signUp(newUserModel);
        return Right(result);
      } on ServerException catch (e) {
        return const Left(ServerFailure(message: 'Server Error'));
      }
    } else {
      return const Left(ConnectionFailure(message: 'No Internet Connection'));
    }
  }

  @override
  Future<Either<Failure, UserDataEntity>> signIn(
      SignInUserEntitiy signInUserEntitiy) async {
    if (await networkInfo.isConnected) {
      try {
        SignInUserModel signInUserModel = SignInUserModel(
            email: signInUserEntitiy.email,
            password: signInUserEntitiy.password);
        final result = await authRemoteDataSource.signIn(signInUserModel);
        authLocalDataSource.cacheToken(result.token);
        return Right(result);
      } on ServerException catch (e) {
        return const Left(ServerFailure(message: 'Server Error'));
      }
    } else {
      return const Left(ConnectionFailure(message: 'No Internet Connection'));
    }
  }
}
