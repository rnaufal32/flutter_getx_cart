import 'package:flutter_getx_cart/application/cart/cart_controller.dart';
import 'package:flutter_getx_cart/presentation/home/controller.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class CartWidget extends GetView<HomeController> {
  const CartWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: IconButton(
            onPressed: controller.cartBtn,
            icon: const Icon(Icons.shopping_basket),
          ),
        ),
        Positioned(
            top: 10,
            right: 3,
            child: GetX<CartController>(
              builder: (cartController) {
                if (cartController.totalItems() > 0) {
                  return CircleAvatar(
                    radius: 8,
                    backgroundColor: Colors.red,
                    child: Text(
                      '${cartController.totalItems()}',
                      style: Get.textTheme.bodyText1?.copyWith(
                        fontSize: 10,
                        color: Colors.white,
                      ),
                    ),
                  );
                } else {
                  return const SizedBox();
                }
              },
            )),
      ],
    );
  }
}
