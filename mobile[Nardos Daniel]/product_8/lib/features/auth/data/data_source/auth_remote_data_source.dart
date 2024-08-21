import 'dart:convert';

import 'package:http/http.dart' as http;
import '../../../../core/constants/constants.dart';
import '../../../../core/exception/exception.dart';
import '../models/sign_in_user_model.dart';
import '../models/sign_up_user_model.dart';
import '../models/user_data_model.dart';

abstract class AuthRemoteDataSource {
  Future<UserDataModel> signIn(SignInUserModel signInUserModel);
  Future<SignUpUserModel> signUp(SignUpUserModel signUpUserModel);
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final http.Client client;

  AuthRemoteDataSourceImpl({required this.client});

  @override
  Future<UserDataModel> signIn(SignInUserModel signInUserModel) async {
    final http.Response response = await client.post(
      Uri.parse('${Urls.autUrl}/auth/login'),
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
      body: json.encode(signInUserModel.toJson()),
    );
    if (response.statusCode == 200) {
      final data = json.decode(response.body)['data'];
      final token = json.decode(response.body)['token'].toString();
      return UserDataModel(data: DataModel.fromJson(data), token: token);
    } else {
      throw ServerException();
    }
  }

  @override
  Future<SignUpUserModel> signUp(SignUpUserModel signUpUserModel)  async{
    final http.Response response = await client.post(
      Uri.parse('${Urls.autUrl}/users/me'),
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
      body: json.encode(signUpUserModel.toJson()),
    );
    if (response.statusCode == 200) {
     
      return SignUpUserModel.fromJson(json.decode(response.body)['data']);
    } else {
      throw ServerException();
    }
  }
}
