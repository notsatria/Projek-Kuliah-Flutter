import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kasir_app/utils/colors.dart';
import 'package:kasir_app/widgets/big_text.dart';

class CardMenu extends StatelessWidget {
  final IconData iconData;
  final String menuTitle;

  const CardMenu({
    super.key,
    required this.iconData,
    required this.menuTitle,
  });

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
              color: AppColor.iconColor1,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              menuTitle,
              style: TextStyle(
                fontFamily: 'Helvetica',
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            )
          ])),
    );
    ;
  }
}
