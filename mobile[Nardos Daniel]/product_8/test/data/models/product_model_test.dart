import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:product_8/features/product/data/models/product_model.dart';

import '../../helpers/jason_reader.dart';


void main() {
  const testProductModel = ProductModel(
      id: '1',
      name: 'Nike',
      description: 'Nike is the Best',
      price: 344,
      imageUrl: 'imageUrl'
  );
  test('should be a subclass of  product entity', () async {
    
    //assert
    expect(testProductModel, isA<ProductModel>());
  });
test('should return a valid model from json', () async {
  // arrange
  final Map<String, dynamic> jsonMap = json.decode(readJson('helpers/dummy_data/dummy_product_response.json'))[0]; 

  // act
  final result = ProductModel.fromJson(jsonMap);

  // assert
  expect(result, testProductModel);
});

  test('should return an exception', () async {
  // arrange
  final Map<String, dynamic> jsonMap = json.decode(readJson('helpers/dummy_data/dummy_product_response.json'))[1]; 

  

  // assert
  expect(() => ProductModel.fromJson(jsonMap), throwsA(isA<Exception>()));
});


  


  test('should return a json map containing the proper data', () async {
    //act
    final result = testProductModel.toJson();
    //assert
    final expectedMap = {
      "id": "1",
      "name": "Nike",
      "description": "Nike is the Best",
      "price": 344.0,
      "imageUrl": "imageUrl"
    };
    expect(result, expectedMap);
  });
}
