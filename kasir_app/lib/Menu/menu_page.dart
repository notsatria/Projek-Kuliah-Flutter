import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kasir_app/utils/dimensions.dart';
import 'package:kasir_app/widgets/big_text.dart';
import 'package:kasir_app/widgets/card_menu.dart';
import 'package:kasir_app/widgets/small_text.dart';

import '../utils/colors.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColor.backgroundColor1,
        toolbarHeight: 70,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.money_rounded,
              color: AppColor.iconColor1,
              size: 30,
            ),
            Text(
              "CASHIER SOLINEP",
              style: TextStyle(
                  color: AppColor.mainBlackColor,
                  fontFamily: 'Helvetica',
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    color: AppColor.backgroundColor1,
                    padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            
                          },
                          child: CardMenu(
                              iconData: Icons.local_drink_rounded,
                              menuTitle: 'Makanan'),
                        ),
                        CardMenu(
                            iconData: Icons.no_drinks_rounded,
                            menuTitle: 'Minuman'),
                        CardMenu(
                            iconData: Icons.calendar_month,
                            menuTitle: 'Cemilan')
                      ],
                    ),
                  ),
                  Container(
                    color: AppColor.backgroundColor2,
                    height: 1200,
                    child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        // shrinkWrap: true,
                        padding: EdgeInsets.only(top: 20),
                        itemCount: 10,
                        itemBuilder: ((context, index) {
                          return Container(
                            margin: EdgeInsets.only(
                                right: 20, left: 20, bottom: 15),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Container(
                                      height: 120,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          color: Colors.white),
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 120,
                                            width: 120,
                                            decoration: BoxDecoration(
                                                color: Colors.white30,
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        "assets/images/icikiwir.jpg"))),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 20),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                BigText(
                                                  text: "Nasi Goreng",
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                SmallText(
                                                    text:
                                                        "Ya nasi goreng biasa"),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Text(
                                                  "Rp10.000",
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Align(
                                            alignment: Alignment.bottomRight,
                                            child: ElevatedButton.icon(
                                                onPressed: () {},
                                                icon: Icon(Icons.add),
                                                label: Text('Add'),
                                                style: ElevatedButton.styleFrom(
                                                    primary:
                                                        Colors.orangeAccent,
                                                    elevation: 0,
                                                    shape: StadiumBorder())),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ]),
                          );
                        })),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
