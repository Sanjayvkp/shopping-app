import 'package:flutter/material.dart';

class BottomSheetTextFieldWidget extends StatelessWidget {
  final String label;

  const BottomSheetTextFieldWidget({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    FocusNode focusNode = FocusNode();
    return SizedBox(
      height: 40,
      child: TextField(
        focusNode: focusNode,
        cursorHeight: 20,
        cursorWidth: .8,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: const TextStyle(
              fontSize: 12, fontWeight: FontWeight.w500, color: Colors.grey),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
