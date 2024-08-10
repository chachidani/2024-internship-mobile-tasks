import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:product_8/features/product/domain/use_case/delete_product_usecase.dart';

import '../../helpers/test_helper.mocks.dart';

void main(){
  late DeleteProductUsecase deleteProductUsecase;
  late MockProductRepositories mockProductRepositories;
  setUp((){

    mockProductRepositories = MockProductRepositories();
    deleteProductUsecase = DeleteProductUsecase(productRepository: mockProductRepositories);
  });
    const testProductId = '1';
    test('should delete product from the repository', () async {
      //arrange
      when(mockProductRepositories.deleteProduct(testProductId))
          .thenAnswer((_) async => const Right(null));
      //act
      final result = await deleteProductUsecase.call(testProductId);
      //assert
      expect(result, const Right(null));
      
    });
}