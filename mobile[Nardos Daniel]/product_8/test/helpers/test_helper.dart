
import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';


import 'package:product_8/features/product/domain/repositories/product_repository.dart';
@GenerateMocks([ProductRepositories] , customMocks: [MockSpec<http.Client>(as: #MockHttpClient)])
void main(){}