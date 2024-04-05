import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/model/list_view_model.dart';
import 'package:shopping_app/view/pages/customer_page.dart';
import 'package:shopping_app/view/pages/demo_page.dart';
import 'package:shopping_app/view/pages/product_page.dart';

List<ListViewModel> listofModels = [
  ListViewModel(title: 'Customers', icon: Icons.groups_2_sharp),
  ListViewModel(title: 'Products', icon: CupertinoIcons.cube_box),
  ListViewModel(title: 'New Order', icon: Icons.addchart_sharp),
  ListViewModel(title: 'Return Order', icon: Icons.reset_tv),
  ListViewModel(title: 'Add Payment', icon: Icons.payments_outlined),
  ListViewModel(title: "Today's Order", icon: Icons.my_library_books_outlined),
  ListViewModel(
      title: "Today's Summary", icon: Icons.domain_verification_outlined),
  ListViewModel(title: 'Route', icon: Icons.repartition_sharp),
];

  List listPages = [
      const CustomerPage(),
      const ProductPage(),
      const DemoPage(),
      const DemoPage(),
      const DemoPage(),
      const DemoPage(),
      const DemoPage(),
      const DemoPage(),
    ];
