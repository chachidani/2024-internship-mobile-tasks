import 'package:equatable/equatable.dart';

class UserDataEntity extends Equatable {
  final Data data;
  final String token;


  const UserDataEntity({
    required this.data,
    required this.token,
   
  });

  @override
  List<Object?> get props => [data, token];
}

class Data extends Equatable {
 
  final String name;
  final String email;
  

  const Data({
   
    required this.name,
    required this.email,
    
  });

  @override
  List<Object?> get props => [ name, email];
}