import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kasir_app/utils/colors.dart';
import 'package:kasir_app/widgets/big_text.dart';
import 'package:kasir_app/widgets/small_text.dart';
import 'package:kasir_app/widgets/button_navigation.dart';
import 'package:kasir_app/widgets/card_menu.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

class MainPage extends StatefulWidget {
  static const String imgProfile = 'assets/images/icikiwir.jpg';

  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              toolbarHeight: 70,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.money_rounded,
                    color: AppColor.iconColor1,
                    size: 20,
                  ),
                  Text(
                    "Cashier Solinep",
                    style: TextStyle(color: AppColor.mainBlackColor),
                  ),
                ],
              ),
              backgroundColor: AppColor.backgroundColor1,
            ),
            body: Container(
              color: AppColor.backgroundColor1,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: 30,
                    ),
                    padding: EdgeInsets.only(left: 15, right: 15),
                    child: Row(children: [
                      Container(
                        width: 60,
                        height: 60,
                        margin: EdgeInsets.only(left: 20, right: 10),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image:
                                    AssetImage('assets/images/icikiwir.jpg')),
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SmallText(
                            text: "Hi, Cashier One!",
                            color: AppColor.titleColor,
                            size: 16,
                          ),
                          BigText(
                            text: "Anisa Nur Fadhilah",
                            color: AppColor.titleColor,
                          ),
                        ],
                      ),
                    ]),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 30),
                        child: Column(
                          children: [
                            CardMenu(
                              iconData: Icons.food_bank,
                              menuTitle: 'Menu',
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            CardMenu(
                              iconData: Icons.payment,
                              menuTitle: 'Pesanan',
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 30),
                        child: Column(
                          children: [
                            CardMenu(
                              iconData: Icons.history,
                              menuTitle: 'Riwayat',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 30),
                        child: Column(
                          children: [
                            CardMenu(
                              iconData: Icons.money,
                              menuTitle: 'Performa',
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            CardMenu(
                              iconData: Icons.edit,
                              menuTitle: 'Edit Menu',
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 30),
                        child: Column(
                          children: [
                            CardMenu(
                              iconData: Icons.add,
                              menuTitle: 'Tambah Menu',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
            bottomNavigationBar: ConvexAppBar(
              items: [
                TabItem(icon: Icons.home, title: 'Home'),
                TabItem(icon: Icons.qr_code, title: 'Scan'),
                TabItem(icon: Icons.people, title: 'Profile'),
              ],
              color: AppColor.mainBlackColor,
              activeColor: AppColor.iconColor1,
              backgroundColor: AppColor.backgroundColor1,
              style: TabStyle.fixedCircle,
              height: 60,
              onTap: ((index) {}),
            )));
  }
}
