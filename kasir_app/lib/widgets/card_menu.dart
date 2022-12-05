import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kasir_app/widgets/big_text.dart';

class CardMenu extends StatelessWidget {
  final IconData iconData;
  final String menuTitle;

  const CardMenu({super.key, required this.iconData, required this.menuTitle});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      color: Colors.white,
      shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.orange),
          borderRadius: BorderRadius.circular(12)),
      child: Container(
          width: 85,
          height: 120,
          child: Column(children: [
            SizedBox(
              height: 10,
            ),
            Icon(
              iconData,
              size: 60,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              menuTitle,
              style: TextStyle(
                fontFamily: 'Helvetica',
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            )
          ])),
    );
    ;
  }
}
