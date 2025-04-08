

import '../../domain/entities/i_product.dart';
import '../../domain/repository/i_product_repository.dart';
import '../datasource/remote_product_datasource.dart';

class ProductRepository extends IProductRepository{
  final IRemoteProductDataSource dataSource;

  ProductRepository({required this.dataSource});

  @override
  Future<List<IProduct>> getAllProducts() {
    return dataSource.getAllProducts();
  }

}