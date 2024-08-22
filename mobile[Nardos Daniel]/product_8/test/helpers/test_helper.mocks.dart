// Mocks generated by Mockito 5.4.4 from annotations
// in product_8/test/helpers/test_helper.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i10;
import 'dart:convert' as _i33;
import 'dart:typed_data' as _i34;

import 'package:dartz/dartz.dart' as _i2;
import 'package:http/http.dart' as _i9;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i4;
import 'package:mockito/mockito.dart' as _i1;
import 'package:mockito/src/dummies.dart' as _i30;
import 'package:product_8/core/failure/failure.dart' as _i11;
import 'package:product_8/core/platform/network_info.dart' as _i15;
import 'package:product_8/core/usecase/usecase.dart' as _i17;
import 'package:product_8/features/auth/data/data_source/auth_local_data_source.dart'
    as _i29;
import 'package:product_8/features/auth/data/data_source/auth_remote_data_source.dart'
    as _i26;
import 'package:product_8/features/auth/data/models/authenticated_model.dart'
    as _i6;
import 'package:product_8/features/auth/data/models/sign_in_user_model.dart'
    as _i27;
import 'package:product_8/features/auth/data/models/sign_up_user_model.dart'
    as _i28;
import 'package:product_8/features/auth/data/models/user_data_model.dart'
    as _i7;
import 'package:product_8/features/auth/domain/entities/sign_in_user_entitiy.dart'
    as _i24;
import 'package:product_8/features/auth/domain/entities/sign_up_user_entitiy.dart'
    as _i23;
import 'package:product_8/features/auth/domain/entities/user_data_entity.dart'
    as _i25;
import 'package:product_8/features/auth/domain/repositories/auth_repository.dart'
    as _i8;
import 'package:product_8/features/auth/domain/use_case/sign_in_use_case.dart'
    as _i31;
import 'package:product_8/features/auth/domain/use_case/sign_up_use_case.dart'
    as _i32;
import 'package:product_8/features/product/data/data_source/local_data_source/product_local_data_source.dart'
    as _i14;
import 'package:product_8/features/product/data/data_source/remote_data_source/product_remote_data_source.dart'
    as _i13;
import 'package:product_8/features/product/data/models/product_model.dart'
    as _i3;
import 'package:product_8/features/product/domain/entities/product_entity.dart'
    as _i12;
import 'package:product_8/features/product/domain/repositories/product_repository.dart'
    as _i5;
import 'package:product_8/features/product/domain/use_case/delete_product_usecase.dart'
    as _i21;
import 'package:product_8/features/product/domain/use_case/get_product_by_id_usecase.dart'
    as _i20;
import 'package:product_8/features/product/domain/use_case/get_products_usecase.dart'
    as _i19;
import 'package:product_8/features/product/domain/use_case/insert_product_usecase.dart'
    as _i18;
import 'package:product_8/features/product/domain/use_case/update_product_usecase.dart'
    as _i22;
import 'package:shared_preferences/shared_preferences.dart' as _i16;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeEither_0<L, R> extends _i1.SmartFake implements _i2.Either<L, R> {
  _FakeEither_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeProductModel_1 extends _i1.SmartFake implements _i3.ProductModel {
  _FakeProductModel_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeDuration_2 extends _i1.SmartFake implements Duration {
  _FakeDuration_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeAddressCheckResult_3 extends _i1.SmartFake
    implements _i4.AddressCheckResult {
  _FakeAddressCheckResult_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeProductRepositories_4 extends _i1.SmartFake
    implements _i5.ProductRepositories {
  _FakeProductRepositories_4(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeAuthenticatedModel_5 extends _i1.SmartFake
    implements _i6.AuthenticatedModel {
  _FakeAuthenticatedModel_5(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeUnit_6 extends _i1.SmartFake implements _i2.Unit {
  _FakeUnit_6(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeUserDataModel_7 extends _i1.SmartFake implements _i7.UserDataModel {
  _FakeUserDataModel_7(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeAuthRepository_8 extends _i1.SmartFake
    implements _i8.AuthRepository {
  _FakeAuthRepository_8(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeResponse_9 extends _i1.SmartFake implements _i9.Response {
  _FakeResponse_9(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeStreamedResponse_10 extends _i1.SmartFake
    implements _i9.StreamedResponse {
  _FakeStreamedResponse_10(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [ProductRepositories].
///
/// See the documentation for Mockito's code generation for more information.
class MockProductRepositories extends _i1.Mock
    implements _i5.ProductRepositories {
  MockProductRepositories() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i10.Future<_i2.Either<_i11.Failure, List<_i12.Product>>> getProducts() =>
      (super.noSuchMethod(
        Invocation.method(
          #getProducts,
          [],
        ),
        returnValue:
            _i10.Future<_i2.Either<_i11.Failure, List<_i12.Product>>>.value(
                _FakeEither_0<_i11.Failure, List<_i12.Product>>(
          this,
          Invocation.method(
            #getProducts,
            [],
          ),
        )),
      ) as _i10.Future<_i2.Either<_i11.Failure, List<_i12.Product>>>);

  @override
  _i10.Future<_i2.Either<_i11.Failure, _i12.Product>> getProduct(String? id) =>
      (super.noSuchMethod(
        Invocation.method(
          #getProduct,
          [id],
        ),
        returnValue: _i10.Future<_i2.Either<_i11.Failure, _i12.Product>>.value(
            _FakeEither_0<_i11.Failure, _i12.Product>(
          this,
          Invocation.method(
            #getProduct,
            [id],
          ),
        )),
      ) as _i10.Future<_i2.Either<_i11.Failure, _i12.Product>>);

  @override
  _i10.Future<_i2.Either<_i11.Failure, _i12.Product>> createProduct(
          _i12.Product? product) =>
      (super.noSuchMethod(
        Invocation.method(
          #createProduct,
          [product],
        ),
        returnValue: _i10.Future<_i2.Either<_i11.Failure, _i12.Product>>.value(
            _FakeEither_0<_i11.Failure, _i12.Product>(
          this,
          Invocation.method(
            #createProduct,
            [product],
          ),
        )),
      ) as _i10.Future<_i2.Either<_i11.Failure, _i12.Product>>);

  @override
  _i10.Future<_i2.Either<_i11.Failure, _i12.Product>> updateProduct(
          _i12.Product? product) =>
      (super.noSuchMethod(
        Invocation.method(
          #updateProduct,
          [product],
        ),
        returnValue: _i10.Future<_i2.Either<_i11.Failure, _i12.Product>>.value(
            _FakeEither_0<_i11.Failure, _i12.Product>(
          this,
          Invocation.method(
            #updateProduct,
            [product],
          ),
        )),
      ) as _i10.Future<_i2.Either<_i11.Failure, _i12.Product>>);

  @override
  _i10.Future<_i2.Either<_i11.Failure, void>> deleteProduct(String? id) =>
      (super.noSuchMethod(
        Invocation.method(
          #deleteProduct,
          [id],
        ),
        returnValue: _i10.Future<_i2.Either<_i11.Failure, void>>.value(
            _FakeEither_0<_i11.Failure, void>(
          this,
          Invocation.method(
            #deleteProduct,
            [id],
          ),
        )),
      ) as _i10.Future<_i2.Either<_i11.Failure, void>>);
}

/// A class which mocks [ProductRemoteDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockProductRemoteDataSource extends _i1.Mock
    implements _i13.ProductRemoteDataSource {
  MockProductRemoteDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i10.Future<List<_i3.ProductModel>> getProducts() => (super.noSuchMethod(
        Invocation.method(
          #getProducts,
          [],
        ),
        returnValue:
            _i10.Future<List<_i3.ProductModel>>.value(<_i3.ProductModel>[]),
      ) as _i10.Future<List<_i3.ProductModel>>);

  @override
  _i10.Future<_i3.ProductModel> getProductById(String? id) =>
      (super.noSuchMethod(
        Invocation.method(
          #getProductById,
          [id],
        ),
        returnValue: _i10.Future<_i3.ProductModel>.value(_FakeProductModel_1(
          this,
          Invocation.method(
            #getProductById,
            [id],
          ),
        )),
      ) as _i10.Future<_i3.ProductModel>);

  @override
  _i10.Future<_i3.ProductModel> createProduct(_i3.ProductModel? product) =>
      (super.noSuchMethod(
        Invocation.method(
          #createProduct,
          [product],
        ),
        returnValue: _i10.Future<_i3.ProductModel>.value(_FakeProductModel_1(
          this,
          Invocation.method(
            #createProduct,
            [product],
          ),
        )),
      ) as _i10.Future<_i3.ProductModel>);

  @override
  _i10.Future<_i3.ProductModel> updateProduct(_i3.ProductModel? product) =>
      (super.noSuchMethod(
        Invocation.method(
          #updateProduct,
          [product],
        ),
        returnValue: _i10.Future<_i3.ProductModel>.value(_FakeProductModel_1(
          this,
          Invocation.method(
            #updateProduct,
            [product],
          ),
        )),
      ) as _i10.Future<_i3.ProductModel>);

  @override
  _i10.Future<void> deleteProduct(String? id) => (super.noSuchMethod(
        Invocation.method(
          #deleteProduct,
          [id],
        ),
        returnValue: _i10.Future<void>.value(),
        returnValueForMissingStub: _i10.Future<void>.value(),
      ) as _i10.Future<void>);
}

/// A class which mocks [ProductLocalDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockProductLocalDataSource extends _i1.Mock
    implements _i14.ProductLocalDataSource {
  MockProductLocalDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i10.Future<List<_i3.ProductModel>> getProducts() => (super.noSuchMethod(
        Invocation.method(
          #getProducts,
          [],
        ),
        returnValue:
            _i10.Future<List<_i3.ProductModel>>.value(<_i3.ProductModel>[]),
      ) as _i10.Future<List<_i3.ProductModel>>);

  @override
  _i10.Future<void> cacheProducts(List<_i3.ProductModel>? productToCache) =>
      (super.noSuchMethod(
        Invocation.method(
          #cacheProducts,
          [productToCache],
        ),
        returnValue: _i10.Future<void>.value(),
        returnValueForMissingStub: _i10.Future<void>.value(),
      ) as _i10.Future<void>);
}

/// A class which mocks [NetworkInfo].
///
/// See the documentation for Mockito's code generation for more information.
class MockNetworkInfo extends _i1.Mock implements _i15.NetworkInfo {
  MockNetworkInfo() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i10.Future<bool> get isConnected => (super.noSuchMethod(
        Invocation.getter(#isConnected),
        returnValue: _i10.Future<bool>.value(false),
      ) as _i10.Future<bool>);
}

/// A class which mocks [InternetConnectionChecker].
///
/// See the documentation for Mockito's code generation for more information.
class MockInternetConnectionChecker extends _i1.Mock
    implements _i4.InternetConnectionChecker {
  MockInternetConnectionChecker() {
    _i1.throwOnMissingStub(this);
  }

  @override
  Duration get checkInterval => (super.noSuchMethod(
        Invocation.getter(#checkInterval),
        returnValue: _FakeDuration_2(
          this,
          Invocation.getter(#checkInterval),
        ),
      ) as Duration);

  @override
  Duration get checkTimeout => (super.noSuchMethod(
        Invocation.getter(#checkTimeout),
        returnValue: _FakeDuration_2(
          this,
          Invocation.getter(#checkTimeout),
        ),
      ) as Duration);

  @override
  List<_i4.AddressCheckOptions> get addresses => (super.noSuchMethod(
        Invocation.getter(#addresses),
        returnValue: <_i4.AddressCheckOptions>[],
      ) as List<_i4.AddressCheckOptions>);

  @override
  set addresses(List<_i4.AddressCheckOptions>? value) => super.noSuchMethod(
        Invocation.setter(
          #addresses,
          value,
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i10.Future<bool> get hasConnection => (super.noSuchMethod(
        Invocation.getter(#hasConnection),
        returnValue: _i10.Future<bool>.value(false),
      ) as _i10.Future<bool>);

  @override
  _i10.Future<_i4.InternetConnectionStatus> get connectionStatus =>
      (super.noSuchMethod(
        Invocation.getter(#connectionStatus),
        returnValue: _i10.Future<_i4.InternetConnectionStatus>.value(
            _i4.InternetConnectionStatus.connected),
      ) as _i10.Future<_i4.InternetConnectionStatus>);

  @override
  _i10.Stream<_i4.InternetConnectionStatus> get onStatusChange =>
      (super.noSuchMethod(
        Invocation.getter(#onStatusChange),
        returnValue: _i10.Stream<_i4.InternetConnectionStatus>.empty(),
      ) as _i10.Stream<_i4.InternetConnectionStatus>);

  @override
  bool get hasListeners => (super.noSuchMethod(
        Invocation.getter(#hasListeners),
        returnValue: false,
      ) as bool);

  @override
  bool get isActivelyChecking => (super.noSuchMethod(
        Invocation.getter(#isActivelyChecking),
        returnValue: false,
      ) as bool);

  @override
  _i10.Future<_i4.AddressCheckResult> isHostReachable(
          _i4.AddressCheckOptions? options) =>
      (super.noSuchMethod(
        Invocation.method(
          #isHostReachable,
          [options],
        ),
        returnValue:
            _i10.Future<_i4.AddressCheckResult>.value(_FakeAddressCheckResult_3(
          this,
          Invocation.method(
            #isHostReachable,
            [options],
          ),
        )),
      ) as _i10.Future<_i4.AddressCheckResult>);
}

/// A class which mocks [SharedPreferences].
///
/// See the documentation for Mockito's code generation for more information.
class MockSharedPreferences extends _i1.Mock implements _i16.SharedPreferences {
  MockSharedPreferences() {
    _i1.throwOnMissingStub(this);
  }

  @override
  Set<String> getKeys() => (super.noSuchMethod(
        Invocation.method(
          #getKeys,
          [],
        ),
        returnValue: <String>{},
      ) as Set<String>);

  @override
  Object? get(String? key) => (super.noSuchMethod(Invocation.method(
        #get,
        [key],
      )) as Object?);

  @override
  bool? getBool(String? key) => (super.noSuchMethod(Invocation.method(
        #getBool,
        [key],
      )) as bool?);

  @override
  int? getInt(String? key) => (super.noSuchMethod(Invocation.method(
        #getInt,
        [key],
      )) as int?);

  @override
  double? getDouble(String? key) => (super.noSuchMethod(Invocation.method(
        #getDouble,
        [key],
      )) as double?);

  @override
  String? getString(String? key) => (super.noSuchMethod(Invocation.method(
        #getString,
        [key],
      )) as String?);

  @override
  bool containsKey(String? key) => (super.noSuchMethod(
        Invocation.method(
          #containsKey,
          [key],
        ),
        returnValue: false,
      ) as bool);

  @override
  List<String>? getStringList(String? key) =>
      (super.noSuchMethod(Invocation.method(
        #getStringList,
        [key],
      )) as List<String>?);

  @override
  _i10.Future<bool> setBool(
    String? key,
    bool? value,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #setBool,
          [
            key,
            value,
          ],
        ),
        returnValue: _i10.Future<bool>.value(false),
      ) as _i10.Future<bool>);

  @override
  _i10.Future<bool> setInt(
    String? key,
    int? value,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #setInt,
          [
            key,
            value,
          ],
        ),
        returnValue: _i10.Future<bool>.value(false),
      ) as _i10.Future<bool>);

  @override
  _i10.Future<bool> setDouble(
    String? key,
    double? value,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #setDouble,
          [
            key,
            value,
          ],
        ),
        returnValue: _i10.Future<bool>.value(false),
      ) as _i10.Future<bool>);

  @override
  _i10.Future<bool> setString(
    String? key,
    String? value,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #setString,
          [
            key,
            value,
          ],
        ),
        returnValue: _i10.Future<bool>.value(false),
      ) as _i10.Future<bool>);

  @override
  _i10.Future<bool> setStringList(
    String? key,
    List<String>? value,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #setStringList,
          [
            key,
            value,
          ],
        ),
        returnValue: _i10.Future<bool>.value(false),
      ) as _i10.Future<bool>);

  @override
  _i10.Future<bool> remove(String? key) => (super.noSuchMethod(
        Invocation.method(
          #remove,
          [key],
        ),
        returnValue: _i10.Future<bool>.value(false),
      ) as _i10.Future<bool>);

  @override
  _i10.Future<bool> commit() => (super.noSuchMethod(
        Invocation.method(
          #commit,
          [],
        ),
        returnValue: _i10.Future<bool>.value(false),
      ) as _i10.Future<bool>);

  @override
  _i10.Future<bool> clear() => (super.noSuchMethod(
        Invocation.method(
          #clear,
          [],
        ),
        returnValue: _i10.Future<bool>.value(false),
      ) as _i10.Future<bool>);

  @override
  _i10.Future<void> reload() => (super.noSuchMethod(
        Invocation.method(
          #reload,
          [],
        ),
        returnValue: _i10.Future<void>.value(),
        returnValueForMissingStub: _i10.Future<void>.value(),
      ) as _i10.Future<void>);
}

/// A class which mocks [UseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockUseCase<Type, Params> extends _i1.Mock
    implements _i17.UseCase<Type, Params> {
  MockUseCase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i10.Future<_i2.Either<_i11.Failure, Type>> call(Params? params) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [params],
        ),
        returnValue: _i10.Future<_i2.Either<_i11.Failure, Type>>.value(
            _FakeEither_0<_i11.Failure, Type>(
          this,
          Invocation.method(
            #call,
            [params],
          ),
        )),
      ) as _i10.Future<_i2.Either<_i11.Failure, Type>>);
}

/// A class which mocks [InsertProductUsecase].
///
/// See the documentation for Mockito's code generation for more information.
class MockInsertProductUsecase extends _i1.Mock
    implements _i18.InsertProductUsecase {
  MockInsertProductUsecase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.ProductRepositories get productRepository => (super.noSuchMethod(
        Invocation.getter(#productRepository),
        returnValue: _FakeProductRepositories_4(
          this,
          Invocation.getter(#productRepository),
        ),
      ) as _i5.ProductRepositories);

  @override
  _i10.Future<_i2.Either<_i11.Failure, _i12.Product>> call(
          _i18.CreateParams? params) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [params],
        ),
        returnValue: _i10.Future<_i2.Either<_i11.Failure, _i12.Product>>.value(
            _FakeEither_0<_i11.Failure, _i12.Product>(
          this,
          Invocation.method(
            #call,
            [params],
          ),
        )),
      ) as _i10.Future<_i2.Either<_i11.Failure, _i12.Product>>);
}

/// A class which mocks [GetProductsUsecase].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetProductsUsecase extends _i1.Mock
    implements _i19.GetProductsUsecase {
  MockGetProductsUsecase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.ProductRepositories get productRepository => (super.noSuchMethod(
        Invocation.getter(#productRepository),
        returnValue: _FakeProductRepositories_4(
          this,
          Invocation.getter(#productRepository),
        ),
      ) as _i5.ProductRepositories);

  @override
  _i10.Future<_i2.Either<_i11.Failure, List<_i12.Product>>> call(
          _i17.NoParams? params) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [params],
        ),
        returnValue:
            _i10.Future<_i2.Either<_i11.Failure, List<_i12.Product>>>.value(
                _FakeEither_0<_i11.Failure, List<_i12.Product>>(
          this,
          Invocation.method(
            #call,
            [params],
          ),
        )),
      ) as _i10.Future<_i2.Either<_i11.Failure, List<_i12.Product>>>);
}

/// A class which mocks [GetProductByIdUsecase].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetProductByIdUsecase extends _i1.Mock
    implements _i20.GetProductByIdUsecase {
  MockGetProductByIdUsecase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.ProductRepositories get productRepository => (super.noSuchMethod(
        Invocation.getter(#productRepository),
        returnValue: _FakeProductRepositories_4(
          this,
          Invocation.getter(#productRepository),
        ),
      ) as _i5.ProductRepositories);

  @override
  _i10.Future<_i2.Either<_i11.Failure, _i12.Product>> call(
          _i20.GetParams? params) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [params],
        ),
        returnValue: _i10.Future<_i2.Either<_i11.Failure, _i12.Product>>.value(
            _FakeEither_0<_i11.Failure, _i12.Product>(
          this,
          Invocation.method(
            #call,
            [params],
          ),
        )),
      ) as _i10.Future<_i2.Either<_i11.Failure, _i12.Product>>);
}

/// A class which mocks [DeleteProductUsecase].
///
/// See the documentation for Mockito's code generation for more information.
class MockDeleteProductUsecase extends _i1.Mock
    implements _i21.DeleteProductUsecase {
  MockDeleteProductUsecase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.ProductRepositories get productRepository => (super.noSuchMethod(
        Invocation.getter(#productRepository),
        returnValue: _FakeProductRepositories_4(
          this,
          Invocation.getter(#productRepository),
        ),
      ) as _i5.ProductRepositories);

  @override
  _i10.Future<_i2.Either<_i11.Failure, void>> call(_i21.DeleteParams? params) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [params],
        ),
        returnValue: _i10.Future<_i2.Either<_i11.Failure, void>>.value(
            _FakeEither_0<_i11.Failure, void>(
          this,
          Invocation.method(
            #call,
            [params],
          ),
        )),
      ) as _i10.Future<_i2.Either<_i11.Failure, void>>);
}

/// A class which mocks [UpdateProductUsecase].
///
/// See the documentation for Mockito's code generation for more information.
class MockUpdateProductUsecase extends _i1.Mock
    implements _i22.UpdateProductUsecase {
  MockUpdateProductUsecase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.ProductRepositories get productRepository => (super.noSuchMethod(
        Invocation.getter(#productRepository),
        returnValue: _FakeProductRepositories_4(
          this,
          Invocation.getter(#productRepository),
        ),
      ) as _i5.ProductRepositories);

  @override
  _i10.Future<_i2.Either<_i11.Failure, _i12.Product>> call(
          _i22.UpdateParams? params) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [params],
        ),
        returnValue: _i10.Future<_i2.Either<_i11.Failure, _i12.Product>>.value(
            _FakeEither_0<_i11.Failure, _i12.Product>(
          this,
          Invocation.method(
            #call,
            [params],
          ),
        )),
      ) as _i10.Future<_i2.Either<_i11.Failure, _i12.Product>>);
}

/// A class which mocks [AuthRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockAuthRepository extends _i1.Mock implements _i8.AuthRepository {
  MockAuthRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i10.Future<_i2.Either<_i11.Failure, _i2.Unit>> signUp(
          _i23.SignUpUserEntitiy? signUpUserEntitiy) =>
      (super.noSuchMethod(
        Invocation.method(
          #signUp,
          [signUpUserEntitiy],
        ),
        returnValue: _i10.Future<_i2.Either<_i11.Failure, _i2.Unit>>.value(
            _FakeEither_0<_i11.Failure, _i2.Unit>(
          this,
          Invocation.method(
            #signUp,
            [signUpUserEntitiy],
          ),
        )),
      ) as _i10.Future<_i2.Either<_i11.Failure, _i2.Unit>>);

  @override
  _i10.Future<_i2.Either<_i11.Failure, _i2.Unit>> signIn(
          _i24.SignInUserEntitiy? signInUserEntitiy) =>
      (super.noSuchMethod(
        Invocation.method(
          #signIn,
          [signInUserEntitiy],
        ),
        returnValue: _i10.Future<_i2.Either<_i11.Failure, _i2.Unit>>.value(
            _FakeEither_0<_i11.Failure, _i2.Unit>(
          this,
          Invocation.method(
            #signIn,
            [signInUserEntitiy],
          ),
        )),
      ) as _i10.Future<_i2.Either<_i11.Failure, _i2.Unit>>);

  @override
  _i10.Future<_i2.Either<_i11.Failure, _i2.Unit>> logOut() =>
      (super.noSuchMethod(
        Invocation.method(
          #logOut,
          [],
        ),
        returnValue: _i10.Future<_i2.Either<_i11.Failure, _i2.Unit>>.value(
            _FakeEither_0<_i11.Failure, _i2.Unit>(
          this,
          Invocation.method(
            #logOut,
            [],
          ),
        )),
      ) as _i10.Future<_i2.Either<_i11.Failure, _i2.Unit>>);

  @override
  _i10.Future<_i2.Either<_i11.Failure, _i25.UserDataEntity>> getUser() =>
      (super.noSuchMethod(
        Invocation.method(
          #getUser,
          [],
        ),
        returnValue:
            _i10.Future<_i2.Either<_i11.Failure, _i25.UserDataEntity>>.value(
                _FakeEither_0<_i11.Failure, _i25.UserDataEntity>(
          this,
          Invocation.method(
            #getUser,
            [],
          ),
        )),
      ) as _i10.Future<_i2.Either<_i11.Failure, _i25.UserDataEntity>>);
}

/// A class which mocks [AuthRemoteDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockAuthRemoteDataSource extends _i1.Mock
    implements _i26.AuthRemoteDataSource {
  MockAuthRemoteDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i10.Future<_i6.AuthenticatedModel> signIn(
          _i27.SignInUserModel? signInUserModel) =>
      (super.noSuchMethod(
        Invocation.method(
          #signIn,
          [signInUserModel],
        ),
        returnValue:
            _i10.Future<_i6.AuthenticatedModel>.value(_FakeAuthenticatedModel_5(
          this,
          Invocation.method(
            #signIn,
            [signInUserModel],
          ),
        )),
      ) as _i10.Future<_i6.AuthenticatedModel>);

  @override
  _i10.Future<_i2.Unit> signUp(_i28.SignUpUserModel? signUpUserModel) =>
      (super.noSuchMethod(
        Invocation.method(
          #signUp,
          [signUpUserModel],
        ),
        returnValue: _i10.Future<_i2.Unit>.value(_FakeUnit_6(
          this,
          Invocation.method(
            #signUp,
            [signUpUserModel],
          ),
        )),
      ) as _i10.Future<_i2.Unit>);

  @override
  _i10.Future<_i7.UserDataModel> getUser(String? token) => (super.noSuchMethod(
        Invocation.method(
          #getUser,
          [token],
        ),
        returnValue: _i10.Future<_i7.UserDataModel>.value(_FakeUserDataModel_7(
          this,
          Invocation.method(
            #getUser,
            [token],
          ),
        )),
      ) as _i10.Future<_i7.UserDataModel>);
}

/// A class which mocks [AuthLocalDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockAuthLocalDataSource extends _i1.Mock
    implements _i29.AuthLocalDataSource {
  MockAuthLocalDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i10.Future<_i2.Unit> cacheToken(String? token) => (super.noSuchMethod(
        Invocation.method(
          #cacheToken,
          [token],
        ),
        returnValue: _i10.Future<_i2.Unit>.value(_FakeUnit_6(
          this,
          Invocation.method(
            #cacheToken,
            [token],
          ),
        )),
      ) as _i10.Future<_i2.Unit>);

  @override
  _i10.Future<String> getToken() => (super.noSuchMethod(
        Invocation.method(
          #getToken,
          [],
        ),
        returnValue: _i10.Future<String>.value(_i30.dummyValue<String>(
          this,
          Invocation.method(
            #getToken,
            [],
          ),
        )),
      ) as _i10.Future<String>);

  @override
  _i10.Future<_i2.Unit> deleteToken() => (super.noSuchMethod(
        Invocation.method(
          #deleteToken,
          [],
        ),
        returnValue: _i10.Future<_i2.Unit>.value(_FakeUnit_6(
          this,
          Invocation.method(
            #deleteToken,
            [],
          ),
        )),
      ) as _i10.Future<_i2.Unit>);
}

/// A class which mocks [SignInUseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockSignInUseCase extends _i1.Mock implements _i31.SignInUseCase {
  MockSignInUseCase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i8.AuthRepository get authRepository => (super.noSuchMethod(
        Invocation.getter(#authRepository),
        returnValue: _FakeAuthRepository_8(
          this,
          Invocation.getter(#authRepository),
        ),
      ) as _i8.AuthRepository);

  @override
  _i10.Future<_i2.Either<_i11.Failure, _i2.Unit>> call(
          _i31.SignInParams? params) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [params],
        ),
        returnValue: _i10.Future<_i2.Either<_i11.Failure, _i2.Unit>>.value(
            _FakeEither_0<_i11.Failure, _i2.Unit>(
          this,
          Invocation.method(
            #call,
            [params],
          ),
        )),
      ) as _i10.Future<_i2.Either<_i11.Failure, _i2.Unit>>);
}

/// A class which mocks [SignUpUseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockSignUpUseCase extends _i1.Mock implements _i32.SignUpUseCase {
  MockSignUpUseCase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i8.AuthRepository get authRepository => (super.noSuchMethod(
        Invocation.getter(#authRepository),
        returnValue: _FakeAuthRepository_8(
          this,
          Invocation.getter(#authRepository),
        ),
      ) as _i8.AuthRepository);

  @override
  _i10.Future<_i2.Either<_i11.Failure, _i2.Unit>> call(
          _i32.SignUpParams? params) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [params],
        ),
        returnValue: _i10.Future<_i2.Either<_i11.Failure, _i2.Unit>>.value(
            _FakeEither_0<_i11.Failure, _i2.Unit>(
          this,
          Invocation.method(
            #call,
            [params],
          ),
        )),
      ) as _i10.Future<_i2.Either<_i11.Failure, _i2.Unit>>);
}

/// A class which mocks [Client].
///
/// See the documentation for Mockito's code generation for more information.
class MockHttpClient extends _i1.Mock implements _i9.Client {
  MockHttpClient() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i10.Future<_i9.Response> head(
    Uri? url, {
    Map<String, String>? headers,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #head,
          [url],
          {#headers: headers},
        ),
        returnValue: _i10.Future<_i9.Response>.value(_FakeResponse_9(
          this,
          Invocation.method(
            #head,
            [url],
            {#headers: headers},
          ),
        )),
      ) as _i10.Future<_i9.Response>);

  @override
  _i10.Future<_i9.Response> get(
    Uri? url, {
    Map<String, String>? headers,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #get,
          [url],
          {#headers: headers},
        ),
        returnValue: _i10.Future<_i9.Response>.value(_FakeResponse_9(
          this,
          Invocation.method(
            #get,
            [url],
            {#headers: headers},
          ),
        )),
      ) as _i10.Future<_i9.Response>);

  @override
  _i10.Future<_i9.Response> post(
    Uri? url, {
    Map<String, String>? headers,
    Object? body,
    _i33.Encoding? encoding,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #post,
          [url],
          {
            #headers: headers,
            #body: body,
            #encoding: encoding,
          },
        ),
        returnValue: _i10.Future<_i9.Response>.value(_FakeResponse_9(
          this,
          Invocation.method(
            #post,
            [url],
            {
              #headers: headers,
              #body: body,
              #encoding: encoding,
            },
          ),
        )),
      ) as _i10.Future<_i9.Response>);

  @override
  _i10.Future<_i9.Response> put(
    Uri? url, {
    Map<String, String>? headers,
    Object? body,
    _i33.Encoding? encoding,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #put,
          [url],
          {
            #headers: headers,
            #body: body,
            #encoding: encoding,
          },
        ),
        returnValue: _i10.Future<_i9.Response>.value(_FakeResponse_9(
          this,
          Invocation.method(
            #put,
            [url],
            {
              #headers: headers,
              #body: body,
              #encoding: encoding,
            },
          ),
        )),
      ) as _i10.Future<_i9.Response>);

  @override
  _i10.Future<_i9.Response> patch(
    Uri? url, {
    Map<String, String>? headers,
    Object? body,
    _i33.Encoding? encoding,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #patch,
          [url],
          {
            #headers: headers,
            #body: body,
            #encoding: encoding,
          },
        ),
        returnValue: _i10.Future<_i9.Response>.value(_FakeResponse_9(
          this,
          Invocation.method(
            #patch,
            [url],
            {
              #headers: headers,
              #body: body,
              #encoding: encoding,
            },
          ),
        )),
      ) as _i10.Future<_i9.Response>);

  @override
  _i10.Future<_i9.Response> delete(
    Uri? url, {
    Map<String, String>? headers,
    Object? body,
    _i33.Encoding? encoding,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #delete,
          [url],
          {
            #headers: headers,
            #body: body,
            #encoding: encoding,
          },
        ),
        returnValue: _i10.Future<_i9.Response>.value(_FakeResponse_9(
          this,
          Invocation.method(
            #delete,
            [url],
            {
              #headers: headers,
              #body: body,
              #encoding: encoding,
            },
          ),
        )),
      ) as _i10.Future<_i9.Response>);

  @override
  _i10.Future<String> read(
    Uri? url, {
    Map<String, String>? headers,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #read,
          [url],
          {#headers: headers},
        ),
        returnValue: _i10.Future<String>.value(_i30.dummyValue<String>(
          this,
          Invocation.method(
            #read,
            [url],
            {#headers: headers},
          ),
        )),
      ) as _i10.Future<String>);

  @override
  _i10.Future<_i34.Uint8List> readBytes(
    Uri? url, {
    Map<String, String>? headers,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #readBytes,
          [url],
          {#headers: headers},
        ),
        returnValue: _i10.Future<_i34.Uint8List>.value(_i34.Uint8List(0)),
      ) as _i10.Future<_i34.Uint8List>);

  @override
  _i10.Future<_i9.StreamedResponse> send(_i9.BaseRequest? request) =>
      (super.noSuchMethod(
        Invocation.method(
          #send,
          [request],
        ),
        returnValue:
            _i10.Future<_i9.StreamedResponse>.value(_FakeStreamedResponse_10(
          this,
          Invocation.method(
            #send,
            [request],
          ),
        )),
      ) as _i10.Future<_i9.StreamedResponse>);

  @override
  void close() => super.noSuchMethod(
        Invocation.method(
          #close,
          [],
        ),
        returnValueForMissingStub: null,
      );
}
