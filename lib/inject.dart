import 'package:flutter_getx_cart/domain/http/http.dart';
import 'package:get/get.dart';

Future<void> injectModule() async {
  Get.put(Http());
}
