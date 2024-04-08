import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shopping_app/controller/providers/api_provider_state.dart';
import 'package:shopping_app/controller/services/api_services.dart';
import 'package:shopping_app/model/customer_model.dart';
import 'package:shopping_app/model/product_model.dart';
import 'package:shopping_app/utils/api_utils.dart';

part 'api_provider.g.dart';

@riverpod
class Api extends _$Api {
  ApiServices apiServices = ApiServices();
  final Dio dio = Dio();
  @override
  Future<ApiProviderState> build() async {
    final result = await Future.wait([
      apiServices.fetchProducts(),
      apiServices.fetchCustomers(),
    ]);
    final List<Datas> products = result[0] as List<Datas>;
    final List<Details> customers = result[1] as List<Details>;
    return ApiProviderState(
      fetchProducts: products,
      fetchCustomers: customers,
    );
  }

  Stream<void> getProducts() async* {
    await apiServices.fetchProducts();
  }

  Stream<void> getCustomers() async* {
    await apiServices.fetchCustomers();
  }

  Future<List<Details>> searchCustomer(String? text) async {
    try {
      Response response = await dio.get(ApiUtils.baseUrl +
          ApiUtils.customers +
          ApiUtils.searchCustomer +
          text!);
      if (response.statusCode == 200) {
        final data = response.data;
        final details = <Details>[];
        for (var i in data['data']) {
          details.add(Details.fromJson(i));
        }
        return details;
      } else {
        throw Exception('Failed to load customer');
      }
    } catch (error) {
      throw Exception('Failed to fetch customer: $error');
    }
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
        throw Exception('Failed to load customer');
      }
    } catch (error) {
      throw Exception('Failed to fetch customer: $error');
    }
  }

  Future<void> addCustomer(Details customer) async {
    try {
      final Map<String, dynamic> customerJson = customer.toJson();
      Response response = await dio.post(
        ApiUtils.baseUrl + ApiUtils.customers,
        data: customerJson,
      );
      if (response.statusCode == 200) {
        log('Customer added successfully');
      } else {
        throw Exception(
            'Failed to add customer. Status code: ${response.statusCode}');
      }
    } catch (error) {
      throw Exception('Failed to add customer: $error');
    }
  }
}
