import 'package:flutter_getx_cart/application/cart/cart_controller.dart';
import 'package:flutter_getx_cart/infrastructure/seafood/seafood_repository.dart';
import 'package:get/get.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SeafoodRepository(http: Get.find()));
    Get.put(CartController());
  }
}
