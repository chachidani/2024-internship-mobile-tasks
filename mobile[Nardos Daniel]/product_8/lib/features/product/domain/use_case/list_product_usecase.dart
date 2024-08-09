import 'package:dartz/dartz.dart';

import '../../../../core/failure/failure.dart';
import '../../../../core/shoe.dart';
import '../repositories/product_repository.dart';

class ListProductUsecase {
  final ProductRepositories productRepository;

  ListProductUsecase({required this.productRepository});

  Future<Either<Failure, List<Shoe>>> call() async {
    return await productRepository.getProducts();
  }
}