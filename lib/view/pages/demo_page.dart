import 'package:flutter/material.dart';
import 'package:shopping_app/view/widgets/appbar_widget.dart';

class DemoPage extends StatelessWidget {
  const DemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: AppBarWidget(title: 'Demo Screen')),
      body: Center(
        child: Text('Under construction'),
      ),
    );
  }
}
