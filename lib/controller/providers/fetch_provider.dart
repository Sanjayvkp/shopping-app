import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shopping_app/controller/providers/api_provider_state.dart';
import 'package:shopping_app/controller/services/api_services.dart';
import 'package:shopping_app/model/customer_model.dart';
import 'package:shopping_app/model/product_model.dart';

part 'fetch_provider.g.dart';

@riverpod
class Fetch extends _$Fetch {
  ApiServices apiServices = ApiServices();
  final Dio dio = Dio();
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

  Stream<void> getProducts() async* {
    await apiServices.fetchProducts();
  }

  Stream<void> getCustomers() async* {
    await apiServices.fetchCustomers();
  }

  Future<void> addCustomer(CustomersModel customer) async {
    try {
      Response response = await dio.post(
        "http://143.198.61.94/api/customers/",
        data: {
          "name": customer.name,
          "profile_pic": null,
          "mobile_number": customer.mobile_number,
          "email": customer.email,
          "street": customer.street,
          "street_two": customer.street_two,
          "city": customer.city,
          "pincode": customer.pincode,
          "country": customer.country,
          "state": customer.state,
        },
      );
      if (response.statusCode == 200) {
        log('Success');
      } else {
        throw Exception('Error ${response.statusCode}');
      }
    } catch (e) {
      log(e.toString());
      throw Exception('Error: $e');
    }
  }
}
