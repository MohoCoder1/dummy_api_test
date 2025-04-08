


import '../entities/i_product.dart';
import '../repository/i_product_repository.dart';

class GetProductsUseCase {
  final IProductRepository productRepository;

  GetProductsUseCase(this.productRepository);

  Future<List<IProduct>> call() async {
    return await productRepository.getAllProducts();
  }
}