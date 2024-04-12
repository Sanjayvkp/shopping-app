import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shopping_app/controller/providers/fetch_provider.dart';
import 'package:shopping_app/controller/providers/search_provider.dart';
import 'package:shopping_app/model/product_model.dart';
import 'package:shopping_app/view/widgets/appbar_widget.dart';
import 'package:shopping_app/view/widgets/bottom_navigation_widget.dart';
import 'package:shopping_app/view/widgets/product_grid_widget.dart';
import 'package:shopping_app/view/widgets/textfield_widget.dart';

class ProductPage extends HookConsumerWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productController = useTextEditingController();
    final data = ref.read(searchProvider.notifier);
    final searchResults = useState<List<Datas>>([]);

    Future<void> searchProductAndUpdateUI(String searchText) async {
      if (searchText.isNotEmpty) {
        try {
          List<Datas> results = await data.searchProducts(searchText);
          searchResults.value = results;
        } catch (error) {
          log('Error searching customers: $error');
        }
      }
    }

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(85),
            child: AppBarWidget(title: 'Nesto Hypermarket')),
        body: switch (ref.watch(fetchProvider)) {
          AsyncData(:final value) => SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    TextFieldWidget(
                      textEditingController: productController,
                      isProduct: true,
                      onChanged: (p0) async {
                        String searchText = productController.text;
                        await searchProductAndUpdateUI(searchText);
                      },
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    ProductGridviewWidget(
                      productList: searchResults.value.isNotEmpty
                          ? searchResults.value
                          : value.fetchProducts,
                    ),
                  ],
                ),
              ),
            ),
          AsyncError() => const Center(
              child: Text('Error'),
            ),
          _ => const Center(
              child: CircularProgressIndicator(),
            ),
        },
        bottomNavigationBar: const BottomNavigationWidget(),
      ),
    );
  }
}
