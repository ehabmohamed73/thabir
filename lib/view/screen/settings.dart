import 'package:flutter/material.dart';
import 'package:teacher_rating/core/constant/colors.dart';
import 'package:teacher_rating/view/screen/notofications.dart';
import 'package:teacher_rating/view/widget/shared/bottm_nav_bar.dart';
import 'package:teacher_rating/view/widget/shared/custom_app_bar.dart';
import 'package:teacher_rating/view/widget/shared/custom_drawer.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          key: scaffoldKey,
          appBar: CustomAppBar("الاعدادات", () {
            scaffoldKey.currentState?.openDrawer();
          }),
          bottomNavigationBar: BottmNavBar(),
          drawer: CustomDrawer(),
          body: Column(children: [
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 20),
              color: AppColor.primary,
              child: ListTile(
                title: Text("الحساب"),
                leading: Icon(Icons.person),
              ),
            ),
            Container(
              color: AppColor.seconed,
              child: ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Notofications(),
                      ));
                },
                title: Text("الاشعارات"),
                leading: Icon(Icons.notifications),
              ),
            ),
          ]),
        ));
  }
}
