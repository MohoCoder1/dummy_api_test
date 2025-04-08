

import 'package:dummy_api_test/domain/entities/i_product.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.product});
  final IProduct product;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(product.title),
      subtitle: Text('\$${product.price}'),
    );
  }
}
