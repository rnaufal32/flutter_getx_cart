import 'package:flutter/material.dart';
import 'package:flutter_getx_cart/application/cart/cart_controller.dart';
import 'package:flutter_getx_cart/presentation/home/controller.dart';
import 'package:flutter_getx_cart/presentation/home/widgets/food_item_widget.dart';
import 'package:get/get.dart';

import 'widgets/cart_widget.dart';

class HomePage extends GetWidget<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Getx Cart'),
        actions: const [
          CartWidget(),
        ],
      ),
      body: controller.obx(
        (state) => ListView.builder(
          padding: const EdgeInsets.all(20),
          itemCount: state!.length,
          itemBuilder: (_, index) {
            final item = state[index];
            return FoodItemWidget(item: item);
          },
        ),
      ),
    );
  }
}
