import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teacher_rating/core/constant/appRoots.dart';
import 'package:teacher_rating/core/constant/colors.dart';
import 'package:teacher_rating/core/functions/validateInput.dart';
import 'package:teacher_rating/core/services/services.dart';
import 'package:teacher_rating/view/widget/auth/custom_auth_input.dart';
import 'package:teacher_rating/view/widget/auth/custom_btn_auth.dart';
import 'package:teacher_rating/view/widget/auth/custom_text_auth.dart';

class SignupPage3 extends StatelessWidget {
  const SignupPage3({Key? key}) : super(key: key);

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
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Center(
                      child: Text(
                        " المعلومات الشخصية",
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
                            backgroundColor: Color(0xffffffff),
                            child: Text("3",
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
                    const CustomTextAuth(text: "التخصص العام*"),
                    const SizedBox(height: 5),
                    CustomAuthInput(
                        validFiled: (val) {
                          return validateInput(val!, 5, 30, 'username');
                        },
                        textAlign: TextAlign.center,
                        text: "ادخل تخصصك",
                        abscuer: false,
                        textInputType: TextInputType.name),
                    const SizedBox(height: 5),
                    const CustomTextAuth(text: "التخصص الدقيق*"),
                    const SizedBox(height: 5),
                    CustomAuthInput(
                        validFiled: (val) {
                          return validateInput(val!, 5, 30, 'username');
                        },
                        textAlign: TextAlign.center,
                        text: "ادخل تخصصك",
                        abscuer: false,
                        textInputType: TextInputType.name),
                    const SizedBox(height: 5),
                    const CustomTextAuth(text: "اضف نبده عنك *"),
                    const SizedBox(height: 5),
                    CustomAuthInput(
                        validFiled: (val) {
                          return validateInput(val!, 5, 200, 'username');
                        },
                        textAlign: TextAlign.right,
                        text: "",
                        abscuer: false,
                        inputLins: 3,
                        inputHieght: 90,
                        textInputType: TextInputType.multiline),
                    const SizedBox(height: 5),
                    const CustomTextAuth(text: "اضف معلومات تواصل *"),
                    const SizedBox(height: 5),
                    CustomAuthInput(
                        validFiled: (val) {
                          return validateInput(val!, 5, 100, 'username');
                        },
                        textAlign: TextAlign.center,
                        text: "Linkin/twiter/telegram",
                        abscuer: false,
                        textInputType: TextInputType.multiline),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomBtnAuth(
                            onPressed: () {
                              Get.offAllNamed(AppRoots.logIn);
                              myServices.sharedpref.setString("step", "0");
                            },
                            btnText: "انشاء الحساب",
                            iconData: Icons.login_rounded),
                        CustomBtnAuth(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            btnText: "السابق",
                            iconData: Icons.arrow_forward_rounded)
                      ],
                    ),
                    const SizedBox(height: 20),
                  ]),
            ),
          ),
        ));
  }
}
