import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:product_8/features/product/domain/entities/product_entity.dart';
import 'package:product_8/features/product/domain/use_case/insert_product_usecase.dart';

import '../../helpers/test_helper.mocks.dart';

void main(){
  late InsertProductUsecase insertProductUsecase;
  late MockProductRepositories mockProductRepositories;
      
  setUp((){
    mockProductRepositories = MockProductRepositories();
    insertProductUsecase = InsertProductUsecase(productRepository: mockProductRepositories);
  });
  const testProductDetails = Product(
      id: '1',
      name: 'Nike',
      description: 'Nike is the Best',
      price: 344,
      imageUrl: 'imageUrl');
  test('should insert product to the repository', () async {
    //arrange
    when(mockProductRepositories.createProduct(testProductDetails))
        .thenAnswer((_) async => const Right(testProductDetails));
    //act
    final result = await insertProductUsecase.call(testProductDetails);
    //assert
    expect(result, const Right(testProductDetails));
  });
  
}