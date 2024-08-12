import 'package:http/http.dart' as http;

import '../../models/product_model.dart';

abstract class ProductRemoteDataSource {
  Future<List<ProductModel>> getProducts();
  Future<ProductModel> getProductById(String id);
  Future<ProductModel> createProduct(ProductModel product);
  Future<ProductModel> updateProduct(ProductModel product);
  Future<void> deleteProduct(String id);


}
class ProductRemoteDataSourceImpl extends ProductRemoteDataSource {
 final http.Client client;
 ProductRemoteDataSourceImpl({required this.client});
  @override
  Future<List<ProductModel>> getProducts()  {
    throw UnimplementedError();
   
    
  }
  @override
  Future<ProductModel> getProductById(String id) {
    throw UnimplementedError();
  }
  @override
  Future<ProductModel> createProduct(ProductModel product) {
    throw UnimplementedError();
  }
  @override
  Future<ProductModel> updateProduct(ProductModel product) {
    throw UnimplementedError();
  }
  @override
  Future<void> deleteProduct(String id) {
    throw UnimplementedError();
  }

  

}