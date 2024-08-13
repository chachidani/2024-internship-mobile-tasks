import '../../domain/entities/product_entity.dart';

class ProductModel extends Product {
  const ProductModel({
    required String id,
    required String name,
    required String description,
    required double price,
    required String imageUrl,
  }) : super(
          id: id,
          name: name,
          description: description,
          price: price,
          imageUrl: imageUrl,
        );

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    try {
      return ProductModel(
        id: json['id'],
        name: json['name'],
        description: json['description'],
        price: json['price'],
        imageUrl: json['imageUrl'],
      );
    } catch (e) {
      throw Exception('Error in ProductModel.fromJson: $e');
    }
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'price': price,
      'imageUrl': imageUrl,
    };
  }

  static Product toEntity(ProductModel productModel) {
    return Product(
      id: productModel.id,
      name: productModel.name,
      description: productModel.description,
      price: productModel.price,
      imageUrl: productModel.imageUrl,
    );
  }

  static List<Product> toEntityList(List<ProductModel> productModels) {
    return productModels.map((productModel) => toEntity(productModel)).toList();
  }

  static ProductModel toModel(Product product) {
    return ProductModel(
      id: product.id,
      name: product.name,
      description: product.description,
      price: product.price,
      imageUrl: product.imageUrl,
    );
  }

  static List<ProductModel> fromJsonList(List<dynamic> jsonList) {
    return jsonList.map((json) => ProductModel.fromJson(json)).toList();
  }
}
