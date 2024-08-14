import 'package:dartz/dartz.dart';

import '../../../../core/failure/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../repositories/product_repository.dart';

class DeleteProductUsecase implements UseCase<void, Params> {
  final ProductRepositories productRepository;

  DeleteProductUsecase({required this.productRepository});

   @override
     Future<Either<Failure , void>> call(Params params) async {
    return await productRepository.deleteProduct(params.id);
  }
}
class Params {
  final String id;

  Params({required this.id});
  
  List<Object?> get props => [id];
}