import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:product_8/features/product/data/data_source/local_data_source/product_local_data_source.dart';
import 'package:shared_preferences/shared_preferences.dart';
class MockSharedPreferences extends Mock implements SharedPreferences {}
void main() {
  ProductLocalDataSourceImpl productLocalDataSourceImpl;
  MockSharedPreferences mockSharedPreferences;

  setUp( () {
    mockSharedPreferences = MockSharedPreferences();
    productLocalDataSourceImpl = ProductLocalDataSourceImpl(sharedPreferences: mockSharedPreferences);
  });

  group('cacheProducts', () {
   
  });

}
