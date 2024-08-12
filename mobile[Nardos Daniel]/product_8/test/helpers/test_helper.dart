import 'package:http/http.dart' as http;
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:mockito/annotations.dart';
import 'package:product_8/core/platform/network_info.dart';
import 'package:product_8/features/product/data/data_source/local_data_source/product_local_data_source.dart';
import 'package:product_8/features/product/data/data_source/remote_data_source/product_remote_data_source.dart';

import 'package:product_8/features/product/domain/repositories/product_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

@GenerateMocks([
  ProductRepositories,
  ProductRemoteDataSource,
  ProductLocalDataSource,
  NetworkInfo,
  InternetConnectionChecker,
  SharedPreferences
], customMocks: [
  MockSpec<http.Client>(as: #MockHttpClient)
])
void main() {}
