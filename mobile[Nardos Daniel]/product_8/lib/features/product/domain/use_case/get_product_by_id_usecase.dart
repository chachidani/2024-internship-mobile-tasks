import 'package:dartz/dartz.dart';

import '../../../../core/failure/failure.dart';
import '../../../../core/shoe.dart';
import '../repositories/product_repository.dart';

class GetProductByIdUsecase {
  final ProductRepositories productRepository;

  GetProductByIdUsecase({required this.productRepository});

  Future<Either<Failure, Shoe>> call(String id) async {
    return await productRepository.getProduct(id);
  }
}
