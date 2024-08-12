import 'package:flutter_test/flutter_test.dart';

import '../../helpers/test_helper.mocks.dart';
import 'package:product_8/features/product/data/data_source/remote_data_source/product_remote_data_source.dart';

void main() {
  late MockHttpClient mockHttpCliant;
  late ProductRemoteDataSourceImpl productRemoteDateSourceImpl;
  setUp(() {
    mockHttpCliant = MockHttpClient();
    productRemoteDateSourceImpl =
        ProductRemoteDataSourceImpl(client: mockHttpCliant);
  });
  group('get current product', () {
    test('should return product model when the response code is 200', () {
      
    });
  });
}
