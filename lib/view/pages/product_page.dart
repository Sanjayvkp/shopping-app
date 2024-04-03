import 'package:flutter/material.dart';
import 'package:shopping_app/view/widgets/bottom_navigation_widget.dart';
import 'package:shopping_app/view/widgets/product_grid_widget.dart';
import 'package:shopping_app/view/widgets/textfield_widget.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 80,
          leading: IconButton(
              onPressed: () {}, icon: const Icon(Icons.arrow_back_ios_new)),
          title: const Text(
            'Nesto Hypermarket',
            style: TextStyle(
                color: Colors.black, fontSize: 17, fontWeight: FontWeight.w500),
          ),
          centerTitle: true,
          actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.sort))],
        ),
        body: const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                TextFieldWidget(),
                SizedBox(
                  height: 16,
                ),
                ProductGridviewWidget()
              ],
            ),
          ),
        ),
        bottomNavigationBar: const BottomNavigationWidget(),
      ),
    );
  }
}
