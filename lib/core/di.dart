

import 'package:dummy_api_test/data/datasource/remote_product_datasource.dart';
import 'package:dummy_api_test/data/repository/product_repository.dart';
import 'package:dummy_api_test/domain/repository/i_product_repository.dart';
import 'package:dummy_api_test/domain/usecases/get_products_use_case.dart';
import 'package:dummy_api_test/presentation/controllers/product_controller.dart';
import 'package:get/get.dart';

class DependencyInjection {
  static init() {
    Get.lazyPut<IRemoteProductDataSource>(() => RemoteProductDatasource());
    Get.lazyPut<IProductRepository>(() => ProductRepository(dataSource: Get.find()));
    Get.lazyPut(() => GetProductsUseCase(Get.find()));
    Get.lazyPut(() => ProductController(getProductsUseCase: Get.find()));
  }
}