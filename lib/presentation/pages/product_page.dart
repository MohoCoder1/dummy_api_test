import 'package:dummy_api_test/presentation/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/product_controller.dart';

class ProductPage extends StatelessWidget {
  ProductPage({super.key});

  final productController = Get.find<ProductController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Products')),
      body: Column(
        children: [
          Expanded(
            child: Obx(() {
              if (productController.isLoading.value) {
                return const Center(child: CircularProgressIndicator());
              } else if (productController.errorMessage.isNotEmpty) {
                return Center(
                  child: Text(productController.errorMessage.value),
                );
              } else if (productController.products.isEmpty) {
              return const Center(
                  child: Text('Press the button to get products'),
                );
              } else {
                return ListView.builder(
                  itemCount: productController.products.length,
                  itemBuilder: (context, index) {
                    final product = productController.products[index];
                    return ProductCard(product: product);
                  },
                );
              }
            }),
          ),
          ElevatedButton(
            onPressed: () {
              productController.fetchProducts();
            },
            child: const Text('Get Products'),
          ),
        ],
      ),
    );
  }
}
