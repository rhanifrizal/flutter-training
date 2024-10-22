import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'di.dart';

class DependencyInjectionScreen extends ConsumerWidget {
  const DependencyInjectionScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Retrieve the products using the use case
    final getProductsUseCase = ref.watch(getProductsUseCaseProvider);
    final products = getProductsUseCase.execute();
    const title = "Dependency Injection";
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(products[index]),
          );
        },
      ),
    );
  }
}
