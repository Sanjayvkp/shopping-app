import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shopping_app/controller/providers/api_provider.dart';
import 'package:shopping_app/controller/providers/api_provider_state.dart';
import 'package:shopping_app/view/widgets/appbar_widget.dart';
import 'package:shopping_app/view/widgets/bottom_navigation_widget.dart';
import 'package:shopping_app/view/widgets/product_grid_widget.dart';
import 'package:shopping_app/view/widgets/textfield_widget.dart';

class ProductPage extends HookConsumerWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productController = useTextEditingController();
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(85),
            child: AppBarWidget(title: 'Nesto Hypermarket')),
        body: switch (ref.watch(productProvider)) {
          AsyncData(:final value) => SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    TextFieldWidget(
                      textEditingController: productController,
                      isProduct: true,
                      onTap: () {},
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    ProductGridviewWidget(
                      list: value.fetchProducts,
                    )
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
