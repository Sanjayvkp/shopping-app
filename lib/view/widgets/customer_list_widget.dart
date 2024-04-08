import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shopping_app/model/customer_model.dart';
import 'package:shopping_app/view/widgets/alert_dialog_widget.dart';

class CustomerListWidget extends ConsumerWidget {
  final List<Details> customerDetails;
  const CustomerListWidget({super.key, required this.customerDetails});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView.separated(
      separatorBuilder: (context, index) {
        return const SizedBox(
          height: 15,
        );
      },
      itemCount: customerDetails.length,
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialogWidget(
                  name: customerDetails[index].name,
                  mobile: customerDetails[index].number.toString(),
                  city: customerDetails[index].city,
                  email: customerDetails[index].email!,
                  street: customerDetails[index].street!,
                );
              },
            );
          },
          child: Container(
            height: 120,
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(blurRadius: 10, color: Colors.grey.withOpacity(.30))
            ]),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        image: const DecorationImage(
                            image: AssetImage('assets/images/avatar_demo.png'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 1,
                    height: 90,
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                          Colors.transparent,
                          Colors.black26,
                          Colors.transparent
                        ])),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        customerDetails[index].name,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text(
                        'ID : ${customerDetails[index].id}',
                        style: const TextStyle(
                            color: Color.fromARGB(255, 111, 111, 111),
                            fontWeight: FontWeight.w900),
                      ),
                      Text(
                        '${customerDetails[index].street!},${customerDetails[index].city},${customerDetails[index].state!}',
                        style: const TextStyle(
                            color: Color.fromARGB(255, 111, 111, 111),
                            fontWeight: FontWeight.bold,
                            fontSize: 13),
                      ),
                      RichText(
                        text: const TextSpan(
                            text: 'Due Amount:',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                                color: Colors.black),
                            children: [
                              TextSpan(
                                  text: ' \$500',
                                  style: TextStyle(color: Colors.red))
                            ]),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const CircleAvatar(
                          radius: 10,
                          backgroundColor: Color(0xFF17479b),
                          child: Center(
                            child: Icon(
                              Icons.phone,
                              size: 10,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Image.asset(
                          'assets/images/whatsapp_logo.png',
                          height: 20,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
