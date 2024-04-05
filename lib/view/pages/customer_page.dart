// import 'package:flutter/material.dart';
// import 'package:flutter_hooks/flutter_hooks.dart';
// import 'package:shopping_app/view/widgets/appbar_widget.dart';
// import 'package:shopping_app/view/widgets/bottom_navigation_widget.dart';
// import 'package:shopping_app/view/widgets/customer_list_widget.dart';
// import 'package:shopping_app/view/widgets/textfield_widget.dart';

// class CustomerPage extends HookWidget {
//   const CustomerPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final searchController = useTextEditingController();
//     return Scaffold(
//       appBar: const PreferredSize(
//           preferredSize: Size.fromHeight(85),
//           child: AppBarWidget(title: 'Customers')),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 16),
//           child: Column(
//             children: [
//               TextFieldWidget(
//                 textEditingController: searchController,
//                 isProduct: false,
//                 onTap: () {

//                 },
//               ),
//               const SizedBox(
//                 height: 16,
//               ),
//               const CustomerListWidget()
//             ],
//           ),
//         ),
//       ),
//       bottomNavigationBar: const BottomNavigationWidget(),
//     );
//   }
// }
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shopping_app/controller/providers/api_provider.dart';
import 'package:shopping_app/controller/services/api_services.dart';
import 'package:shopping_app/model/customer_model.dart';
import 'package:shopping_app/view/widgets/appbar_widget.dart';
import 'package:shopping_app/view/widgets/bottom_navigation_widget.dart';
import 'package:shopping_app/view/widgets/customer_list_widget.dart';
import 'package:shopping_app/view/widgets/search_customer_widget.dart';
import 'package:shopping_app/view/widgets/textfield_widget.dart';

class CustomerPage extends HookConsumerWidget {
  const CustomerPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchController = useTextEditingController();
    final ApiServices apiServices = ApiServices();
    final searchResults = useState<List<Details>>([]);

    Future<void> searchCustomerAndUpdateUI(String searchText) async {
      if (searchText.isNotEmpty) {
        try {
          List<Details> results = await apiServices.searchCustomer(searchText);
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
          child: AppBarWidget(title: 'Customers'),
        ),
        body: switch (ref.watch(productProvider)) {
          AsyncData(:final value) => SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    TextFieldWidget(
                      textEditingController: searchController,
                      isProduct: false,
                      onTap: () async {
                        String searchText = searchController.text;
                        await searchCustomerAndUpdateUI(searchText);
                      },
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    searchController.text.isEmpty
                        ? CustomerListWidget(
                            details: value.fetchCustomers,
                          )
                        : SearchCustomerWidget(
                            customers: searchResults.value,
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
