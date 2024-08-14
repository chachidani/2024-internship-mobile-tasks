


import 'package:equatable/equatable.dart';

import '../../domain/entities/product_entity.dart';

abstract class ProductState extends Equatable {
  const ProductState();

  @override
  List<Object> get props => [];
}

 class ProductInitial extends ProductState {}

 class ProductLoading extends ProductState {}

  class ProductLoaded extends ProductState {
    final List<Product> products;
  
    const ProductLoaded({required this.products});
  
    @override
    List<Object> get props => [products];
  }


  class ProductError extends ProductState {
    
  }


class ProductLoadedSingle extends ProductState {
  final Product product;

  const ProductLoadedSingle({required this.product});

  @override
  List<Object> get props => [product];
}






class ProductDeleteState extends ProductState {
  
}

