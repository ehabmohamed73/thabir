import 'package:flutter/material.dart';
import 'package:teacher_rating/core/constant/colors.dart';
import 'package:teacher_rating/view/widget/shared/bottm_nav_bar.dart';
import 'package:teacher_rating/view/widget/shared/custom_app_bar.dart';
import 'package:teacher_rating/view/widget/shared/custom_drawer.dart';

class Notofications extends StatelessWidget {
  const Notofications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          key: scaffoldKey,
          appBar: CustomAppBar("الاشعارات", () {
            scaffoldKey.currentState?.openDrawer();
          }),
          bottomNavigationBar: BottmNavBar(),
          drawer: CustomDrawer(),
          body: Column(children: [
            Container(
              margin: EdgeInsets.only(top: 20),
              color: AppColor.primary,
              child: ListTile(
                title: Text("اضهار الاشعارات"),
                trailing: Switch(
                  activeColor: Colors.black,
                  value: true,
                  onChanged: (value) {},
                ),
              ),
            ),
            Container(
              color: AppColor.seconed,
              child: ListTile(
                title: Text("الصوت"),
                trailing: Icon(Icons.arrow_back_ios_new_rounded),
              ),
            ),
            Container(
              color: AppColor.primary,
              child: ListTile(
                title: Text(" اشعارات التفاعل"),
                trailing: Switch(
                  activeColor: Colors.black,
                  value: true,
                  onChanged: (value) {},
                ),
              ),
            ),
            SizedBox(height: 200),
            Container(
              color: AppColor.seconed,
              child: ListTile(
                title: Text(
                    "الاشعارات داخل التطبيق\nشعارات,الاصوات,التنبية بالاهتزاز"),
                trailing: Icon(Icons.arrow_back_ios_new_rounded),
              ),
            ),
          ]),
        ));
  }
}
