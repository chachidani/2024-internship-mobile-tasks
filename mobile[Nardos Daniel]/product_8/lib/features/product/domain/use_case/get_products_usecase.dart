import 'package:dartz/dartz.dart';

import '../../../../core/failure/failure.dart';

import '../entities/product_entity.dart';
import '../repositories/product_repository.dart';

class GetProductsUsecase {
  final ProductRepositories productRepository;

  GetProductsUsecase({required this.productRepository});

  Future<Either<Failure, List<Product>>> call() async {
    return await productRepository.getProducts();
  }
}