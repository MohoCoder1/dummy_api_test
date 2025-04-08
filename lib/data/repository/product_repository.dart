

import 'package:dummy_api_test/data/datasource/remote_product_datasource.dart';
import 'package:dummy_api_test/domain/entities/i_product.dart';
import 'package:dummy_api_test/domain/repository/i_product_repository.dart';

class ProductRepository extends IProductRepository{
  final IRemoteProductDataSource dataSource;

  ProductRepository({required this.dataSource});

  @override
  Future<List<IProduct>> getAllProducts() {
    return dataSource.getAllProducts();
  }

}