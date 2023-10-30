import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teacher_rating/core/services/services.dart';
import 'package:teacher_rating/view/screen/homepage.dart';

import 'package:teacher_rating/view/screen/orders.dart';
import 'package:teacher_rating/view/screen/student_orders.dart';
import 'package:teacher_rating/view/screen/student_profile.dart';
import 'package:teacher_rating/view/screen/teacher_home.dart';
import 'package:teacher_rating/view/screen/teacherpro.dart';

class BottmNavBar extends StatelessWidget {
  const BottmNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MyServices myServices = Get.find();
    return BottomAppBar(
        child: Directionality(
      textDirection: TextDirection.ltr,
      child: Container(
        color: const Color(0xD82994B2),
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () {
                if (myServices.sharedpref.getString("isTeacher") == "1") {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => StudentProfile(),
                    ),
                  );
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const TeacherPro(),
                    ),
                  );
                }
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white),
                child: Icon(
                  Icons.person,
                  size: 40,
                  color: Colors.blue[200],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                print(myServices.sharedpref.getString("isTeacher"));
                if (myServices.sharedpref.getString("isTeacher") == "1") {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => HomePage(),
                    ),
                  );
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => TeacherHome(),
                    ),
                  );
                }
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white),
                child: Icon(
                  Icons.home,
                  size: 40,
                  color: Colors.blue[200],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                if (myServices.sharedpref.getString("isTeacher") == "1") {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => StudentOrders(),
                    ),
                  );
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => Orders(),
                    ),
                  );
                }
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white),
                child: Icon(
                  Icons.add,
                  size: 40,
                  color: Colors.blue[200],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
