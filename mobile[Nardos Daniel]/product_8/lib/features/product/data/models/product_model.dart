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
    try {return  ProductModel(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      price: json['price'],
      imageUrl: json['imageUrl'],
     
    );} catch (e) {
    
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
}