import '../../domain/entities/sign_up_user_entitiy.dart';

class SignUpUserModel extends SignUpUserEntitiy{
  const SignUpUserModel({
    required String email,
    required String password,
    required String name,
  }) : super(
    email: email,
    password: password,
    name: name,
  );

  factory SignUpUserModel.fromJson(Map<String, dynamic> json) {
    return SignUpUserModel(
      email: json['email'],
      password: json['password'],
      name: json['name'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'password': password,
      'name': name,
    };
  }
}