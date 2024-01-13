import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetxHelper {
  static void showSnackBar({required String title, required String message}) {
    Get.snackbar(
      title,
      message,
      colorText: Colors.white,
      backgroundColor: (title == 'Error'.tr) ? Colors.red : Colors.green,
      animationDuration: const Duration(milliseconds: 500),
      duration: const Duration(milliseconds: 2200),
    );
  }
}
