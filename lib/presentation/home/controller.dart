import 'package:flutter/material.dart';
import 'package:flutter_getx_cart/application/cart/cart_controller.dart';
import 'package:flutter_getx_cart/infrastructure/seafood/seafood_model.dart';
import 'package:flutter_getx_cart/infrastructure/seafood/seafood_repository.dart';
import 'package:flutter_getx_cart/presentation/route/route.dart';
import 'package:get/get.dart';

class HomeController extends GetxController
    with StateMixin<List<SeafoodModel>> {
  final SeafoodRepository _seafoodRepository = Get.find();
  final CartController _cartController = Get.find();

  @override
  void onInit() async {
    super.onInit();

    change(null, status: RxStatus.loading());
    final res = await _seafoodRepository.getSeaFood();
    change(res.meals, status: RxStatus.success());
  }

  void cartBtn() {
    if (_cartController.totalItems() > 0) {
      Get.toNamed(Routes.checkout);
    } else {
      Get.defaultDialog(
        title: 'Oops',
        middleText: 'Keranjang Anda kosong',
        textConfirm: 'OK',
        confirmTextColor: Colors.white,
        onConfirm: Get.back,
      );
    }
  }
}
