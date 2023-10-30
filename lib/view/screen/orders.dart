import 'package:flutter/material.dart';
import 'package:teacher_rating/view/widget/orders/custom_list_tile.dart';
import 'package:teacher_rating/view/widget/shared/bottm_nav_bar.dart';
import 'package:teacher_rating/view/widget/shared/custom_app_bar.dart';
import 'package:teacher_rating/view/widget/shared/custom_drawer.dart';

// ignore: must_be_immutable
class Orders extends StatelessWidget {
  Orders({Key? key}) : super(key: key);
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
        bottomNavigationBar: BottmNavBar(),
        drawer: CustomDrawer(),
        body: Container(
          padding: const EdgeInsets.all(10),
          child: ListView(children: const [
            SizedBox(height: 10),
            CustomListTile(
                ordrTitle: "روئ كلنتن",
                orderSubTitle: "طلب جديداضغط لاضهار العقد"),
            SizedBox(height: 10),
          ]),
        ),
      ),
    );
  }
}
