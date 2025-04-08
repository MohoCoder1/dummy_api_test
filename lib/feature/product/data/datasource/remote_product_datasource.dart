

import 'package:dio/dio.dart';

import '../models/product.dart';

class RemoteProductDatasource extends IRemoteProductDataSource{
   final Dio _dio = Dio();
  final String _baseUrl = 'https://dummyjson.com/products';
  @override
  Future<List<Product>> getAllProducts() {
    return _dio.get(_baseUrl).then((response) {
      if (response.statusCode == 200) {
        final data = response.data['products'] as List;
        return data.map((product) => Product.fromJson(product)).toList();
      } else {
        throw Exception('Failed to load products');
      }
    });
  }

}

abstract class IRemoteProductDataSource{
  Future<List<Product>> getAllProducts();
}