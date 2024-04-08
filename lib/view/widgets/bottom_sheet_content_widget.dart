import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shopping_app/controller/providers/api_provider.dart';
import 'package:shopping_app/model/customer_model.dart';
import 'package:shopping_app/view/widgets/bottom_sheet_textfield_widget.dart';
import 'package:shopping_app/view/widgets/elevated_button_widget.dart';

class BottomSheetContentWidget extends HookConsumerWidget {
  const BottomSheetContentWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nameController = useTextEditingController();
    final mobileController = useTextEditingController();
    final emailController = useTextEditingController();
    final streetController = useTextEditingController();
    final townController = useTextEditingController();
    final cityController = useTextEditingController();
    final pincodeController = useTextEditingController();
    final countryController = useTextEditingController();
    final stateController = useTextEditingController();
    return Padding(
      padding: const EdgeInsets.only(
        left: 24,
        right: 24,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 24,
          ),
          const Row(
            children: [
              Text(
                'Add customer',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Expanded(child: SizedBox()),
              CircleAvatar(
                backgroundColor: Color.fromARGB(255, 217, 237, 252),
                radius: 13,
                child: Center(
                    child: Icon(
                  Icons.close,
                  size: 18,
                  color: Color(0xFF17479b),
                )),
              )
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          BottomSheetTextFieldWidget(
            controller: nameController,
            hintText: 'Customer Name',
            helperText: 'Customer Name',
          ),
          const SizedBox(
            height: 12,
          ),
          BottomSheetTextFieldWidget(
            controller: mobileController,
            keyboardType: TextInputType.phone,
            hintText: 'Mobile Number',
            helperText: 'Mobile Number',
          ),
          const SizedBox(
            height: 12,
          ),
          BottomSheetTextFieldWidget(
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
            hintText: 'Email',
            helperText: 'Email',
          ),
          const SizedBox(
            height: 24,
          ),
          const Text(
            'Address',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                  child: BottomSheetTextFieldWidget(
                controller: streetController,
                hintText: 'Street',
                helperText: 'Street',
              )),
              const SizedBox(
                width: 25,
              ),
              Expanded(
                  child: BottomSheetTextFieldWidget(
                controller: townController,
                hintText: 'Street 2',
                helperText: 'Street 2',
              ))
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                  child: BottomSheetTextFieldWidget(
                controller: cityController,
                hintText: 'City',
                helperText: 'City',
              )),
              const SizedBox(
                width: 25,
              ),
              Expanded(
                  child: BottomSheetTextFieldWidget(
                controller: pincodeController,
                keyboardType: TextInputType.number,
                hintText: 'Pin code',
                helperText: 'Pin code',
              ))
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                  child: BottomSheetTextFieldWidget(
                controller: countryController,
                hintText: 'Country',
                helperText: 'Country',
              )),
              const SizedBox(
                width: 25,
              ),
              Expanded(
                  child: BottomSheetTextFieldWidget(
                controller: stateController,
                hintText: 'State',
                helperText: 'State',
              ))
            ],
          ),
          const Expanded(child: SizedBox()),
          Center(
              child: Padding(
            padding: const EdgeInsets.only(bottom: 14),
            child: ElevatedButtonWidget(
              onPressed: () {
                ref.read(apiProvider.notifier).addCustomer(Details(
                    id: null,
                    name: nameController.text,
                    profilePic: null,
                    city: cityController.text,
                    street: streetController.text,
                    country: countryController.text,
                    state: stateController.text,
                    streetTwo: townController.text,
                    email: emailController.text,
                    number: mobileController.text,
                    pinCode: pincodeController.text));
              },
            ),
          ))
        ],
      ),
    );
  }
}
