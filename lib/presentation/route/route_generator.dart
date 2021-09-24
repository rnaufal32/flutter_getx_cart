import 'package:flutter_getx_cart/presentation/checkout/binding.dart';
import 'package:flutter_getx_cart/presentation/checkout/page.dart';
import 'package:flutter_getx_cart/presentation/home/binding.dart';
import 'package:flutter_getx_cart/presentation/home/page.dart';
import 'package:flutter_getx_cart/presentation/route/route.dart';
import 'package:get/get.dart';

class RouteGenerator {
  static List<GetPage> onGenerate() {
    return [
      GetPage(
        binding: HomeBinding(),
        name: Routes.home,
        page: () => const HomePage(),
      ),
      GetPage(
        binding: CheckoutBinding(),
        name: Routes.checkout,
        page: () => const CheckoutPage(),
      ),
    ];
  }
}
