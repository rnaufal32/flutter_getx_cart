import 'package:flutter/material.dart';
import 'package:flutter_getx_cart/application/cart/cart_controller.dart';
import 'package:get/get.dart';

class CheckoutController extends GetxController {
  final CartController _cartController = Get.find();

  @override
  void onInit() {
    super.onInit();

    _cartController.items.listen((value) {
      if (value.length < 1) {
        Get.back();
      }
    });
  }

  void simpanBtn() {
    Get.defaultDialog(
      title: 'Berhasil',
      middleText: 'Checkout berhasil',
      textConfirm: 'OK',
      confirmTextColor: Colors.white,
      onConfirm: () {
        _cartController.clearCart();
        Get.back();
      },
    );
  }
}
