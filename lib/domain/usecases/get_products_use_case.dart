

import 'package:dummy_api_test/domain/entities/i_product.dart';
import 'package:dummy_api_test/domain/repository/i_product_repository.dart';

class GetProductsUseCase {
  final IProductRepository productRepository;

  GetProductsUseCase(this.productRepository);

  Future<List<IProduct>> call() async {
    return await productRepository.getAllProducts();
  }
}