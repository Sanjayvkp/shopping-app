import 'package:dio/dio.dart';
import 'package:shopping_app/model/customer_model.dart';
import 'package:shopping_app/model/product_model.dart';
import 'package:shopping_app/utils/api_utils.dart';

class ApiServices {
  final Dio dio = Dio();

  Future<List<Datas>> fetchProducts() async {
    try {
      Response response = await dio.get(ApiUtils.baseUrl + ApiUtils.products);
      if (response.statusCode == 200) {
        final data = response.data;
        final datas = <Datas>[];
        for (var d in data['data']) {
          datas.add(Datas.fromJson(d));
        }
        return datas;
      } else {
        throw Exception('Failed to load products');
      }
    } catch (error) {
      throw Exception('Failed to fetch products: $error');
    }
  }

  Future<List<Details>> fetchCustomers() async {
    try {
      Response response = await dio.get(ApiUtils.baseUrl + ApiUtils.customers);
      if (response.statusCode == 200) {
        final data = response.data;
        final details = <Details>[];
        for (var i in data['data']) {
          details.add(Details.fromJson(i));
        }
        return details;
      } else {
        throw Exception('Failed to load customers');
      }
    } catch (error) {
      throw Exception('Failed to fetch customers: $error');
    }
  }
}
