import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxstatemixin/pages/home_bindings.dart';
import 'package:getxstatemixin/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Get State Mixin',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      getPages: [
        GetPage(
          name: '/',
          page: () => HomePage(),
          binding: HomeBindings(),
        ),
      ],
    );
  }
}
