import 'package:flutter/material.dart';
import 'package:flutter_getx_cart/inject.dart';
import 'package:flutter_getx_cart/presentation/core/app_widget.dart';

void main() async {
  await injectModule();
  runApp(const AppWidget());
}
