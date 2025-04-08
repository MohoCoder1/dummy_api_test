


import 'package:dummy_api_test/domain/usecases/get_products_use_case.dart';
import 'package:get/get.dart';

class ProductController extends GetxController{
  final GetProductsUseCase getProductsUseCase;
  final RxList products = [].obs;
  final RxBool isLoading = false.obs;
  final RxString errorMessage = ''.obs;

  ProductController({required this.getProductsUseCase});

  // @override
  // void onInit() {
  //   super.onInit();
    // fetchProducts();
  // }

  void fetchProducts() async {
    try {
      isLoading.value = true;
      final productList = await getProductsUseCase();
      products.assignAll(productList);
      isLoading.value = false;
    } catch (e) {
      errorMessage.value = 'Failed to load products';
      isLoading.value = false;
    }
  }
}