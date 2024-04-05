import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shopping_app/controller/providers/api_provider_state.dart';
import 'package:shopping_app/controller/services/api_services.dart';
import 'package:shopping_app/model/customer_model.dart';
import 'package:shopping_app/model/product_model.dart';

part 'api_provider.g.dart';

@riverpod
class Product extends _$Product {
  ApiServices apiServices = ApiServices();
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

  Future<void> getProducts() async {
    await apiServices.fetchProducts();
  }

  Future<void> getCustomers() async {
    await apiServices.fetchCustomers();
  }
}
