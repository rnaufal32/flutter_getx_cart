import 'package:flutter_getx_cart/domain/food/food.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  var items = <Food>[].obs;
  var qtyItems = <String, int>{}.obs;

  int totalItems() {
    var count = 0;
    qtyItems.forEach((key, value) {
      count = count + value;
    });
    return count;
  }

  bool getItems(Food food) {
    return items.contains(food);
  }

  int getQty(Food food) => qtyItems[food.id] ?? 0;

  void addToCart(Food food) {
    items.add(food);
    qtyItems.addAll({
      food.id: 1,
    });
  }

  void increment(Food food) {
    var qty = qtyItems[food.id] ?? 0;
    qtyItems[food.id] = qty + 1;
  }

  void decrement(Food food) {
    var qty = qtyItems[food.id] ?? 0;

    if (qty <= 1) {
      items.remove(food);
      qtyItems.remove(food.id);
    } else {
      qtyItems[food.id] = qty - 1;
    }
  }

  void clearCart() {
    items.clear();
    qtyItems.clear();
  }
}
