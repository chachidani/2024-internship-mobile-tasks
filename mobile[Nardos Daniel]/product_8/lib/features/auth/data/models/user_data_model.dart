import '../../domain/entities/user_data_entity.dart';

class UserDataModel extends UserDataEntity{
  const UserDataModel({
    required  data,
    required token,
  }) : super(
    data: data,
    token: token,
  );



  factory UserDataModel.fromJson(Map<String, dynamic> json) {
    return UserDataModel(
      data: DataModel.fromJson(json['data'] as Map<String, dynamic>),
      token: json['token'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'data': (data as DataModel).toJson(),
      'token': token,
    };
  }
}

class DataModel extends Data {
 
  const DataModel({
    
    required name,
    required email,
    
  }) : super(
    name: name,
    email: email,
  );

  factory DataModel.fromJson(Map<String, dynamic> json) {
    return DataModel(
      
      name: json['name'] as String,
      email: json['email'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      
      'name': name,
      'email': email,
    };
  }
}