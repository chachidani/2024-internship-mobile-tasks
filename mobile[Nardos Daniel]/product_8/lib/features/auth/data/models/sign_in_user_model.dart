import '../../domain/entities/sign_in_user_entitiy.dart';

class SignInUserModel extends SignInUserEntitiy {
   const SignInUserModel({
    required String email,
    required String password,
  }) : super(
          email: email,
          password: password,
        );

  factory SignInUserModel.fromJson(Map<String, dynamic> json) {
    return SignInUserModel(
      email: json['email'],
      password: json['password'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'password': password,
    };
  }
}