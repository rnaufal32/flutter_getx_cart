import 'package:flutter/material.dart';
import 'package:flutter_getx_cart/application/cart/cart_controller.dart';
import 'package:flutter_getx_cart/presentation/checkout/widgets/checkout_item_widget.dart';
import 'package:get/get.dart';

import 'controller.dart';

class CheckoutPage extends GetWidget<CheckoutController> {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkout'),
      ),
      body: Column(
        children: [
          Expanded(
            child: GetX<CartController>(
              builder: (cartController) => ListView.builder(
                itemCount: cartController.items.length,
                itemBuilder: (_, index) {
                  final item = cartController.items[index];
                  return CheckoutItemWidget(item: item);
                },
              ),
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: const Text('Jumlah'),
                trailing: GetX<CartController>(
                  builder: (cartController) {
                    return Text('${cartController.totalItems()}');
                  },
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: ElevatedButton(
                    onPressed: controller.simpanBtn,
                    child: const Text('SIMPAN'),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
