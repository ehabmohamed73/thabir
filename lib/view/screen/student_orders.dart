import 'package:flutter/material.dart';
import 'package:teacher_rating/view/screen/student_order_info.dart';
import 'package:teacher_rating/view/widget/orders/custom_student_tile.dart';
import 'package:teacher_rating/view/widget/orders/order_nav_button.dart';
import 'package:teacher_rating/view/widget/shared/bottm_nav_bar.dart';
import 'package:teacher_rating/view/widget/shared/custom_app_bar.dart';
import 'package:teacher_rating/view/widget/shared/custom_drawer.dart';

// ignore: must_be_immutable
class StudentOrders extends StatelessWidget {
  StudentOrders({Key? key}) : super(key: key);
  GlobalKey<ScaffoldState> scafKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        key: scafKey,
        appBar: CustomAppBar(' الطلبات', () {
          scafKey.currentState?.openDrawer();
        }),
        bottomNavigationBar: const BottmNavBar(),
        drawer: const CustomDrawer(),
        body: Container(
          padding: const EdgeInsets.all(10),
          child: ListView(children: [
            const SizedBox(height: 10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                OrderNavButton(btnText: "طلباتي الحالية"),
                OrderNavButton(btnText: "طلباتي السابقة"),
              ],
            ),
            const SizedBox(height: 30),
            CustomStudentTile(
              path: "assets/t4.webp",
              ordrTitle: "سلطان علي",
              orderDate: "12/2/1444",
              orderId: "ID:121",
              orderSubTitle: "تم الموافقة على الطلب",
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => StudentOrderInfo(),
                  ),
                );
              },
            ),
            const SizedBox(height: 10),
            CustomStudentTile(
                path: "assets/t5.jpg",
                ordrTitle: "خالد عمر",
                orderDate: "12/5/1444",
                orderId: "ID:111",
                orderSubTitle: "قيد الانتضار",
                onPress: (() {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => StudentOrderInfo(),
                    ),
                  );
                })),
          ]),
        ),
      ),
    );
  }
}
