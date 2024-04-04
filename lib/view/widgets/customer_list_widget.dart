import 'package:flutter/material.dart';
import 'package:shopping_app/controller/services/api_services.dart';

class CustomerListWidget extends StatelessWidget {
  const CustomerListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final ApiServices apiServices = ApiServices();
    return FutureBuilder(
      future: apiServices.fetchCustomers(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ListView.separated(
            separatorBuilder: (context, index) {
              return const SizedBox(
                height: 15,
              );
            },
            itemCount: snapshot.data!.length,
            shrinkWrap: true,
            physics: const ClampingScrollPhysics(),
            itemBuilder: (context, index) {
              return Container(
                height: 120,
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(blurRadius: 10, color: Colors.grey.withOpacity(.30))
                ]),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            image: const DecorationImage(
                                image:
                                    AssetImage('assets/images/fruit_demo.png')),
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
                            snapshot.data![index].name,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          Text(
                            'ID : ${snapshot.data![index].id}',
                            style: const TextStyle(
                                color: Color.fromARGB(255, 111, 111, 111),
                                fontWeight: FontWeight.w900),
                          ),
                          Text(
                            '${snapshot.data![index].street!},${snapshot.data![index].city},${snapshot.data![index].state!}',
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
              );
            },
          );
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}
