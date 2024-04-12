import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shopping_app/controller/providers/api_provider_state.dart';
import 'package:shopping_app/controller/services/api_services.dart';
import 'package:shopping_app/model/customer_model.dart';
import 'package:shopping_app/model/product_model.dart';
import 'package:shopping_app/utils/api_utils.dart';

part 'search_provider.g.dart';

@riverpod
class Search extends _$Search {
  final Dio dio = Dio();
  ApiServices apiServices = ApiServices();

  @override
  Future<ApiProviderState> build() async {
    final result = await Future.wait([
      apiServices.fetchProducts(),
      apiServices.fetchCustomers(),
    ]);
    final List<Datas> products = result[0] as List<Datas>;
    final List<CustomersModel> customers = result[1] as List<CustomersModel>;
    return ApiProviderState(
      fetchProducts: products,
      fetchCustomers: customers,
    );
  }

  Future<List<Datas>> searchProducts(String? text) async {
    try {
      Response response = await dio.get(ApiUtils.baseUrl +
          ApiUtils.products +
          ApiUtils.searchCustomer +
          text!);
      if (response.statusCode == 200) {
        final data = response.data;
        final datas = <Datas>[];
        for (var i in data['data']) {
          datas.add(Datas.fromJson(i));
        }
        return datas;
      } else {
        throw Exception('Failed to load products');
      }
    } catch (error) {
      throw Exception('Failed to fetch products: $error');
    }
  }

  Future<List<CustomersModel>> searchCustomer(String? text) async {
    try {
      Response response = await dio.get(ApiUtils.baseUrl +
          ApiUtils.customers +
          ApiUtils.searchCustomer +
          text!);
      if (response.statusCode == 200) {
        final data = response.data;
        final customersModel = <CustomersModel>[];
        for (var i in data['data']) {
          customersModel.add(CustomersModel.fromJson(i));
        }
        return customersModel;
      } else {
        throw Exception('Failed to load customer');
      }
    } catch (error) {
      throw Exception('Failed to fetch customer: $error');
    }
  }
}
