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

  Future<List<CustomersModel>> fetchCustomers() async {
    try {
      Response response = await dio.get(ApiUtils.baseUrl + ApiUtils.customers);
      if (response.statusCode == 200) {
        final data = response.data;
        final customersModel = <CustomersModel>[];
        for (var i in data['data']) {
          customersModel.add(CustomersModel.fromJson(i));
        }
        return customersModel;
      } else {
        throw Exception('Failed to load customers');
      }
    } catch (error) {
      throw Exception('Failed to fetch customers: $error');
    }
  }
}
