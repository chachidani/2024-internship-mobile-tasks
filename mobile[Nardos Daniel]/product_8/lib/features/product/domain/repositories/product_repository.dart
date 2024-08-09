import 'package:dartz/dartz.dart';
import '../../../../core/failure/failure.dart';
import '../../../../core/shoe.dart';

abstract class ProductRepositories {
  Future<Either<Failure, List<Shoe>>> getProducts();
  Future<Either <Failure , Shoe>> getProduct(String id);
  Future<Either <Failure , Shoe>> createProduct(Shoe product);
  Future<Either <Failure , Shoe>> updateProduct(Shoe product);
  Future<Either<Failure , void>> deleteProduct(String id);
}