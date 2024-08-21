import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/exception/exception.dart';

abstract class AuthLocalDataSource {
  Future<void> cacheToken(String token);
  Future<String> getToken();
  Future<void> deleteToken();
}

class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  final SharedPreferences sharedPreferences;

  AuthLocalDataSourceImpl({required this.sharedPreferences});

  @override
  Future<void> cacheToken(String token) async {
    await sharedPreferences.setString('token', token);
  }

  @override
  Future<void> deleteToken() async {
    await sharedPreferences.remove('token');
  }

  @override
  Future<String> getToken() async {
    final jsonString = sharedPreferences.getString('token');
    if (jsonString != null) {
      return Future.value(jsonString);
    } else {
      throw CacheException();
    }
  }
}
