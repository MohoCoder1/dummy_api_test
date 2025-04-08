

import '../entities/i_product.dart';

abstract class IProductRepository{

  Future<List<IProduct>> getAllProducts();
}