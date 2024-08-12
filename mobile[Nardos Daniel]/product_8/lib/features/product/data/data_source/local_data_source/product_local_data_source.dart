import 'package:shared_preferences/shared_preferences.dart';

import '../../models/product_model.dart';

abstract class ProductLocalDataSource {
  Future<List<ProductModel>> getProducts();
  Future<void> cacheProducts(List<ProductModel> productToCache);
  
 

}
class ProductLocalDataSourceImpl implements ProductLocalDataSource {
 final SharedPreferences sharedPreferences;
 ProductLocalDataSourceImpl({required this.sharedPreferences});
   @override
  Future<void> cacheProducts(List<ProductModel> productToCache)  {
    throw UnimplementedError();
   
    
  }
  @override
  Future<List<ProductModel>> getProducts()  {
    throw UnimplementedError();
   
    
  }

 
  

}