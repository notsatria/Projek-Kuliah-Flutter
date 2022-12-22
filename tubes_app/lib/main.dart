import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_hyper_ui/demo.dart';
import 'package:flutter_hyper_ui/firebase_options.dart';
import 'package:get/get.dart';
import 'module/login/view/login_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  return runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(),
    home: const LoginView(),
  ));
}
