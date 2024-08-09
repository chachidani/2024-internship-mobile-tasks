import 'package:dartz/dartz.dart';

import '../../../../core/failure/failure.dart';
import '../../../../core/shoe.dart';
import '../repositories/product_repository.dart';

class AddProductUsecase {
  final ProductRepositories productRepository;

  AddProductUsecase({required this.productRepository});

  Future<Either<Failure, Shoe>> call(Shoe product) async {
    return await productRepository.createProduct(product);
  }
}
