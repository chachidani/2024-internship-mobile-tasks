import 'package:dartz/dartz.dart';

import '../../../../core/failure/failure.dart';

import '../../../../core/usecase/usecase.dart';
import '../entities/product_entity.dart';
import '../repositories/product_repository.dart';

class UpdateProductUsecase implements UseCase<Product, Params> { 
  final ProductRepositories productRepository;

  UpdateProductUsecase({required this.productRepository});

  @override
  Future<Either<Failure , Product>> call(Params params) async {
    return await productRepository.updateProduct(params.product);
  }
}
class Params {
  final Product product;

  Params({required this.product});
  
  List<Object?> get props => [product];
}