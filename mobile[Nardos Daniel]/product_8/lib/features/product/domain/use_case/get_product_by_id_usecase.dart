import 'package:dartz/dartz.dart';

import '../../../../core/failure/failure.dart';

import '../entities/product_entity.dart';
import '../repositories/product_repository.dart';

class GetProductByIdUsecase {
  final ProductRepositories productRepository;

  GetProductByIdUsecase({required this.productRepository});

  Future<Either<Failure, Product>> call(String id) async {
    return await productRepository.getProduct(id);
  }
}
