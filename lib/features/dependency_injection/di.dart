import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'get_product_usecase.dart';
import 'product_repository.dart';

// Provider for the repository
final productRepositoryProvider = Provider.autoDispose<ProductRepository>((ref) {
  return ProductRepository();
});

// Provider for the use case
final getProductsUseCaseProvider = Provider.autoDispose<GetProductsUseCase>((ref) {
  final repository = ref.read(productRepositoryProvider);
  return GetProductsUseCase(repository);
});
