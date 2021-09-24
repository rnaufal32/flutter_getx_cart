import 'package:flutter_getx_cart/application/cart/cart_controller.dart';
import 'package:flutter_getx_cart/domain/food/food.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class CheckoutItemWidget extends StatelessWidget {
  final Food item;
  const CheckoutItemWidget({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Image.network(item.thumb),
            title: Text(item.meal),
            trailing: GetX<CartController>(
              builder: (cartController) {
                if (cartController.getItems(item)) {
                  return Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      InkWell(
                        child: const Icon(Icons.remove),
                        onTap: () {
                          cartController.decrement(item);
                        },
                      ),
                      Text('${cartController.getQty(item)}'),
                      InkWell(
                        child: const Icon(Icons.add),
                        onTap: () {
                          cartController.increment(item);
                        },
                      ),
                    ],
                  );
                } else {
                  return IconButton(
                    onPressed: () {
                      cartController.addToCart(item);
                    },
                    icon: const Icon(Icons.add),
                  );
                }
              },
            )),
      ),
    );
  }
}
