import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teacher_rating/controller/auth/newaccount_controller.dart';
import 'package:teacher_rating/core/constant/colors.dart';
import 'package:teacher_rating/view/screen/auth/login.dart';

class NewAccount extends StatelessWidget {
  const NewAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('ثابر'),
          centerTitle: true,
          backgroundColor: const Color(0xDA2994B2),
        ),
        body: GetBuilder<NewAccountaController>(
          init: NewAccountaController(),
          builder: (controller) => Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: ListView(
              children: [
                const Center(
                  child: Text(
                    "حساب جديد",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: AppColor.primary, width: 3),
                      borderRadius: BorderRadius.circular(10)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      "assets/logo.jpg",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  height: 50,
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: const BorderSide(
                            color: AppColor.primary, width: 3)),
                    color: const Color(0xA02994B2),
                    textColor: Colors.white,
                    onPressed: () {
                      controller.goToStudentSignUp();
                    },
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("حساب جديد كولد"),
                        SizedBox(width: 10),
                        Icon(
                          Icons.person_add_alt_1_outlined,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  height: 50,
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: const BorderSide(
                            color: AppColor.primary, width: 3)),
                    color: const Color(0xA02994B2),
                    textColor: Colors.white,
                    onPressed: () {
                      controller.goToTeacherSignUp();
                    },
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("حساب جديد كمعلم"),
                        SizedBox(width: 10),
                        Icon(
                          Icons.person_add_alt_1_outlined,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 100),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 70),
                  height: 50,
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: const BorderSide(
                            color: AppColor.primary, width: 3)),
                    color: const Color(0xA02994B2),
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => const Login(),
                        ),
                      );
                    },
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("تسجيل الدخول"),
                        SizedBox(width: 20),
                        Icon(
                          Icons.login_rounded,
                          color: AppColor.primary,
                          size: 30,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
