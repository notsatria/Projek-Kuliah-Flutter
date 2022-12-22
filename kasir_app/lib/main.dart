import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kasir_app/Menu/menu_page.dart';
import 'Home/main_page.dart';
import 'module/login/view/login_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: LoginView(),
    );
  }
}
