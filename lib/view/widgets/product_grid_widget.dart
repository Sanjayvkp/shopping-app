import 'package:flutter/material.dart';
import 'package:shopping_app/controller/services/api_services.dart';
import 'package:shopping_app/model/product_model.dart';
import 'package:shopping_app/view/pages/customer_page.dart';

class ProductGridviewWidget extends StatelessWidget {
  final List<Datas> list;

  const ProductGridviewWidget({super.key, required this.list});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        mainAxisExtent: 140,
      ),
      itemCount: list.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 6,
          ),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(blurRadius: 10, color: Colors.grey.withOpacity(.30))
                ]),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
              child: Column(
                children: [
                  const Center(
                      child: SizedBox(
                    height: 75,
                    width: 80,
                    child: Image(
                        image: AssetImage('assets/images/fruit_demo.png')),
                  )),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            list[index].name,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '\$ ${list[index].price}/-',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.grey.shade700),
                          ),
                        ],
                      ),
                      const Expanded(child: SizedBox()),
                      Container(
                        height: 24,
                        color: Colors.grey.shade300,
                        width: 1,
                      ),
                      const Expanded(child: SizedBox()),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 20,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: const Color(0xFF17479b),
                          ),
                          child: const Center(
                            child: Text(
                              'Add',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
