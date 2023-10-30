import 'package:flutter/material.dart';
import 'package:teacher_rating/core/constant/colors.dart';
import 'package:teacher_rating/view/screen/contract.dart';
import 'package:teacher_rating/view/screen/teacher_profile.dart';
import 'package:teacher_rating/view/widget/orders/btn_show.dart';
import 'package:teacher_rating/view/widget/orders/payment_methods.dart';
import 'package:teacher_rating/view/widget/shared/bottm_nav_bar.dart';
import 'package:teacher_rating/view/widget/shared/custom_app_bar.dart';
import 'package:teacher_rating/view/widget/shared/custom_drawer.dart';
import 'package:teacher_rating/view/widget/shared/custom_line.dart';

// ignore: must_be_immutable
class StudentOrderInfo extends StatelessWidget {
  StudentOrderInfo({Key? key}) : super(key: key);
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          key: scaffoldKey,
          appBar: CustomAppBar("معلومات الطلب", () {
            scaffoldKey.currentState?.openDrawer();
          }),
          drawer: const CustomDrawer(),
          bottomNavigationBar: const BottmNavBar(),
          body: Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            margin: const EdgeInsets.only(top: 50, right: 10, left: 10),
            decoration: const BoxDecoration(
                border: Border(
                    left: BorderSide(color: AppColor.primary, width: 4),
                    right: BorderSide(color: AppColor.primary, width: 4),
                    top: BorderSide(color: AppColor.primary, width: 4),
                    bottom: BorderSide(color: AppColor.primary, width: 0)),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            child: ListView(children: [
              Center(
                child: Text(
                  "تهانيا تم قبول الطلب",
                  style: TextStyle(color: Colors.green[400], fontSize: 17),
                ),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "رقم الطلب",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  Container(
                    width: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: AppColor.seconed, width: 1)),
                    child: const Text(
                      "1",
                      style: TextStyle(fontWeight: FontWeight.w800, height: 2),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "عرض العقد",
                    style: TextStyle(
                        color: AppColor.primary,
                        fontSize: 17,
                        fontWeight: FontWeight.w700),
                  ),
                  BtnShow(
                    btnText: "عرض",
                    onPress: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => Contract(),
                        ),
                      );
                    },
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "عرض صفحة المعلم",
                    style: TextStyle(
                        color: AppColor.primary,
                        fontSize: 17,
                        fontWeight: FontWeight.w700),
                  ),
                  BtnShow(
                    btnText: "عرض",
                    onPress: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) =>
                              const TeacherProfile(),
                        ),
                      );
                    },
                  )
                ],
              ),
              const CustomLine(
                  lineColor: AppColor.seconed, divWith: 1, height: 3),
              const SizedBox(height: 50),
              Text(
                "الاستمرار للبدء بعملية الدفع",
                style: TextStyle(
                    color: Colors.red[400], fontWeight: FontWeight.w500),
              ),
              const PaymentMethods()
            ]),
          ),
        ));
  }
}
