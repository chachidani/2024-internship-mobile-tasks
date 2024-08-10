import 'package:dartz/dartz.dart';

import '../../../../core/failure/failure.dart';

import '../entities/product_entity.dart';
import '../repositories/product_repository.dart';

class InsertProductUsecase {
  final ProductRepositories productRepository;

  InsertProductUsecase({required this.productRepository});

  Future<Either<Failure, Product>> call(Product product) async {
    return await productRepository.createProduct(product);
  }
}
