import 'package:dartz/dartz.dart';

import '../../../../core/failure/failure.dart';
import '../repositories/product_repository.dart';

class DeleteProductUsecase {
  final ProductRepositories productRepository;

  DeleteProductUsecase({required this.productRepository});

   Future<Either<Failure , void>> call(String id) async {
    return await productRepository.deleteProduct(id);
  }
}