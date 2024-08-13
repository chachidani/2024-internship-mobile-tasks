import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import '../../../../../core/constants/constants.dart';
import '../../../../../core/exception/exception.dart';
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
  Future<List<ProductModel>> getProducts() async {
   try{
     final response = await client.get(Uri.parse(Urls.baseUrl));
     if (response.statusCode == 200) {
       return ProductModel.fromJsonList(json.decode(response.body)['data']);
     } else {
       throw ServerException();
     }}on SocketException{
       throw const SocketException('No Internet Connection');
     }
  }

  @override
  Future<ProductModel> getProductById(String id) async {
    try {
      final response = await client.get(Uri.parse(Urls.getProdutbyId(id)));
      if (response.statusCode == 200) {
        return ProductModel.fromJson(json.decode(response.body)['data']);
      } else {
        throw ServerException();
      }
    } on SocketException {
      throw const SocketException('No Internet Connection');
    }
  }

  @override
  Future<ProductModel> createProduct(ProductModel product) async {
    final productJson = {
      'name': product.name,
      'description': product.description,
      'imageUrl': product.imageUrl,
      'price': product.price
    };
    try {
      final response = await client.post(
        Uri.parse(Urls.baseUrl),
        body: productJson,
       
      );
      if (response.statusCode == 200) {
        return ProductModel.fromJson(json.decode(response.body)['data']);
      } else {
        throw ServerException();
      }
    } on SocketException {
      throw const SocketException('No Internet Connection');
    }
  }

  @override
  Future<ProductModel> updateProduct(ProductModel product) async{
    final productId = product.id;
    try {
      final response = await client.put(
        Uri.parse(Urls.getProdutbyId(productId)),
        body: product.toJson(),
        
      );
      if (response.statusCode == 200) {
        return ProductModel.fromJson(json.decode(response.body)['data']);
      } else {
        throw ServerException();
      }
    } on SocketException {
      throw const SocketException('No Internet Connection');
    }
  }

  @override
  Future<void> deleteProduct(String id) async {
    try {
      final response = await client.delete(Uri.parse(Urls.getProdutbyId(id)));
      if (response.statusCode == 200) {
        return;
      }else{
        throw ServerException();
      }
    } on SocketException {
      throw const SocketException('No Internet Connection');
    }
  }
}
