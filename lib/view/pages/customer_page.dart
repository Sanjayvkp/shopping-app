import 'package:flutter/material.dart';
import 'package:shopping_app/view/widgets/appbar_widget.dart';
import 'package:shopping_app/view/widgets/bottom_navigation_widget.dart';
import 'package:shopping_app/view/widgets/textfield_widget.dart';

class CustomerPage extends StatelessWidget {
  const CustomerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(85),
          child: AppBarWidget(title: 'Customers')),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              TextFieldWidget(
                  widget: Icon(
                Icons.add_circle_outlined,
                size: 30,
                color: Color(0xFF17479b),
              ))
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationWidget(),
    );
  }
}
