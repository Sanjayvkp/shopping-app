import 'package:flutter/material.dart';

class SnackBarUtils {
  static void showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        backgroundColor: Colors.blue,
        margin: const EdgeInsets.all(16),
        behavior: SnackBarBehavior.floating,
        content: Text(message)));
  }
}
