import 'package:flutter/material.dart';
import 'package:flutter_getx_cart/application/cart/cart_controller.dart';
import 'package:flutter_getx_cart/infrastructure/seafood/seafood_model.dart';
import 'package:get/get.dart';

class FoodItemWidget extends StatelessWidget {
  final SeafoodModel item;
  const FoodItemWidget({
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
                if (cartController.getItems(item.toDomain())) {
                  return Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      InkWell(
                        child: const Icon(Icons.remove),
                        onTap: () {
                          cartController.decrement(item.toDomain());
                        },
                      ),
                      Text('${cartController.getQty(item.toDomain())}'),
                      InkWell(
                        child: const Icon(Icons.add),
                        onTap: () {
                          cartController.increment(item.toDomain());
                        },
                      ),
                    ],
                  );
                } else {
                  return IconButton(
                    onPressed: () {
                      cartController.addToCart(item.toDomain());
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
