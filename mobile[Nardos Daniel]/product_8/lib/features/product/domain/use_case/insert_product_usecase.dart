import 'package:dartz/dartz.dart';

import '../../../../core/failure/failure.dart';

import '../../../../core/usecase/usecase.dart';
import '../entities/product_entity.dart';
import '../repositories/product_repository.dart';

class InsertProductUsecase implements UseCase<Product, Params> {
  final ProductRepositories productRepository;

  InsertProductUsecase({required this.productRepository});

  @override
  Future<Either<Failure, Product>> call(Params params) async {
    return await productRepository.createProduct(params.product);
  }
}
class Params {
  final Product product;

  Params({required this.product});
  
  List<Object?> get props => [product];
}