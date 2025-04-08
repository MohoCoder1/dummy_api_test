

import 'package:flutter/material.dart';

import '../../domain/entities/i_product.dart';

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
