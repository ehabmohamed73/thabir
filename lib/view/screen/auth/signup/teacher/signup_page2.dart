import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teacher_rating/controller/auth/teacher/signup2_controller.dart';
import 'package:teacher_rating/core/constant/colors.dart';
import 'package:teacher_rating/core/services/services.dart';
import 'package:teacher_rating/view/screen/auth/signup/teacher/signup_page3.dart';
import 'package:teacher_rating/view/widget/auth/custom_auth_drop_down.dart';
import 'package:teacher_rating/view/widget/auth/custom_auth_table.dart';
import 'package:teacher_rating/view/widget/auth/custom_btn_auth.dart';
import 'package:teacher_rating/view/widget/auth/custom_chose_btn.dart';
import 'package:teacher_rating/view/widget/auth/custom_text_auth.dart';

class SignupPage2 extends StatelessWidget {
  const SignupPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MyServices myServices = Get.find();
    return Scaffold(
        appBar: AppBar(
          title: const Text('حساب جديد'),
          centerTitle: true,
          backgroundColor: const Color(0xDA2994B2),
        ),
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: SingleChildScrollView(
              child: Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Center(
                      child: Text(
                        " المعلومات الاكادمية",
                        style: TextStyle(
                            color: AppColor.primary,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const CircleAvatar(
                            backgroundColor: Color(0xffD9D9D9),
                          ),
                          Container(
                            width: 80,
                            height: 4,
                            decoration: const BoxDecoration(
                              color: Color(0xff9E9595),
                            ),
                          ),
                          const CircleAvatar(
                            backgroundColor: Color(0xfffffffff),
                            child: Text("2",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 17)),
                          ),
                          Container(
                            width: 80,
                            height: 4,
                            decoration: const BoxDecoration(
                              color: Color(0xff9E9595),
                            ),
                          ),
                          const CircleAvatar(
                            backgroundColor: Color(0xffD9D9D9),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    const CustomTextAuth(text: "اضافة شهاداتك*"),
                    const SizedBox(height: 5),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomChoseBtn(
                          btnChiled: Text(
                            "اختار الملف",
                            style: TextStyle(
                                color: AppColor.primary, fontSize: 17),
                          ),
                          btnWidth: 200,
                        ),
                        CustomChoseBtn(
                            btnChiled: Icon(
                              Icons.file_open,
                              color: AppColor.primary,
                            ),
                            btnWidth: 120)
                      ],
                    ),
                    CustomAuthTable(),
                    const SizedBox(height: 5),
                    const CustomTextAuth(text: "اضافة خبراتك*"),
                    const SizedBox(height: 5),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomChoseBtn(
                          btnChiled: Text(
                            "اختار الملف",
                            style: TextStyle(
                                color: AppColor.primary, fontSize: 17),
                          ),
                          btnWidth: 200,
                        ),
                        CustomChoseBtn(
                            btnChiled: Icon(
                              Icons.file_open,
                              color: AppColor.primary,
                            ),
                            btnWidth: 120)
                      ],
                    ),
                    CustomAuthTable(),
                    const SizedBox(height: 5),
                    const CustomTextAuth(text: "المستوى الاكاديمي*"),
                    const SizedBox(height: 5),
                    const CustomAuthDropDown(),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomBtnAuth(
                            onPressed: () {
                              myServices.sharedpref.setString("step", "4");
                              Navigator.push(
                                context,
                                MaterialPageRoute<void>(
                                  builder: (BuildContext context) =>
                                      const SignupPage3(),
                                ),
                              );
                            },
                            btnText: "التالي",
                            iconData: Icons.arrow_back_rounded),
                        CustomBtnAuth(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            btnText: "السابق",
                            iconData: Icons.arrow_forward_rounded)
                      ],
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
