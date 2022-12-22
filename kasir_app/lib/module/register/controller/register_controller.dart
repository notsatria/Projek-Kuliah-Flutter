import 'package:get/get.dart';
import '../view/register_view.dart';
import 'package:firebase_auth/firebase_auth.dart';


class RegisterController extends GetxController {
  RegisterView? view;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  // doRegister() async {
  //   // var email = Input.get("email");
  //   // var password = Input.get("password");
  //   await FirebaseAuth.instance
  //       .createUserWithEmailAndPassword(email: email, password: password);
  // }
}
