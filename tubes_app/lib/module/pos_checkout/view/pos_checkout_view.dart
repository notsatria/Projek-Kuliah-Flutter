import 'package:flutter/material.dart';
import '../controller/pos_checkout_controller.dart';
import 'package:flutter_hyper_ui/core.dart';
import 'package:get/get.dart';

class PosCheckoutView extends StatelessWidget {
  const PosCheckoutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PosCheckoutController>(
      init: PosCheckoutController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("PosCheckout"),
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: const [],
              ),
            ),
          ),
        );
      },
    );
  }
}