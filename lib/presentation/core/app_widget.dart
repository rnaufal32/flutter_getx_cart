import 'package:flutter/material.dart';
import 'package:flutter_getx_cart/presentation/core/binding.dart';
import 'package:flutter_getx_cart/presentation/route/route.dart';
import 'package:flutter_getx_cart/presentation/route/route_generator.dart';
import 'package:get/get.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: AppBinding(),
      getPages: RouteGenerator.onGenerate(),
      initialRoute: Routes.home,
      debugShowCheckedModeBanner: false,
    );
  }
}
