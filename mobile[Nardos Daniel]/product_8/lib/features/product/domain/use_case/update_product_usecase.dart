import 'package:dartz/dartz.dart';

import '../../../../core/failure/failure.dart';
import '../../../../core/shoe.dart';
import '../repositories/product_repository.dart';

class UpdateProductUsecase {
  final ProductRepositories productRepository;

  UpdateProductUsecase({required this.productRepository});

  Future<Either<Failure , Shoe>> call(Shoe product) async {
    return await productRepository.updateProduct(product);
  }
}