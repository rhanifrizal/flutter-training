import 'package:flutter_training/features/dependency_injection/product_repository.dart';

class GetProductsUseCase {
  final ProductRepository _repository;

  GetProductsUseCase(this._repository);

  List<String> execute() {
    return _repository.getProducts();
  }
}