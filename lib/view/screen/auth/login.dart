import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teacher_rating/controller/auth/login_controller.dart';
import 'package:teacher_rating/core/classes/statusrequest.dart';
import 'package:teacher_rating/core/constant/colors.dart';
import 'package:teacher_rating/core/functions/validateInput.dart';
import 'package:teacher_rating/view/widget/auth/custom_auth_input.dart';
import 'package:teacher_rating/view/widget/auth/custom_btn_auth.dart';
import 'package:teacher_rating/view/widget/auth/custom_text_auth.dart';
import 'package:teacher_rating/view/widget/shared/loadingcircular.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(LoginController());
    return Scaffold(
        appBar: AppBar(
          title: const Text('ثابر'),
          centerTitle: true,
          backgroundColor: const Color(0xDA2994B2),
        ),
        body: GetBuilder<LoginController>(
          builder: (controller) => controller.statusRequest ==
                  StatusRequest.loading
              ? const LoadingCircular()
              : Directionality(
                  textDirection: TextDirection.rtl,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: SingleChildScrollView(
                      child: Form(
                        key: controller.formState,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Center(
                              child: Text(
                                "تسجيل الدخول",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w700),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Center(
                              child: Container(
                                margin: const EdgeInsets.only(bottom: 50),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: AppColor.primary, width: 3),
                                    borderRadius: BorderRadius.circular(10)),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    "assets/logo.jpg",
                                    width:
                                        MediaQuery.of(context).size.width / 1.3,
                                  ),
                                ),
                              ),
                            ),
                            const CustomTextAuth(text: " البريدالالكتروني *"),
                            const SizedBox(height: 10),
                            CustomAuthInput(
                                validFiled: (val) {
                                  return validateInput(val!, 5, 30, 'email');
                                },
                                myController: controller.email,
                                textAlign: TextAlign.left,
                                text: "البريد الالكتروني",
                                abscuer: false,
                                textInputType: TextInputType.emailAddress,
                                prefixIcon: const Icon(Icons.email_outlined)),
                            const SizedBox(height: 10),
                            const CustomTextAuth(text: " الرقم السري *"),
                            const SizedBox(height: 10),
                            CustomAuthInput(
                                myController: controller.password,
                                validFiled: (val) {
                                  return validateInput(val!, 5, 15, 'password');
                                },
                                textAlign: TextAlign.left,
                                text: "********",
                                abscuer: true,
                                textInputType: TextInputType.visiblePassword,
                                prefixIcon:
                                    const Icon(Icons.visibility_outlined)),
                            const SizedBox(height: 10),
                            InkWell(
                              onTap: () {
                                controller.goToCheckEmail();
                              },
                              child: const Text(
                                "هل نسيت كلمة المرور؟",
                                style: TextStyle(color: AppColor.primary),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Center(
                                child: CustomBtnAuth(
                              onPressed: () {
                                controller.login();
                              },
                              btnText: "تسجيل الدخول",
                              iconData: Icons.login_rounded,
                            )),
                            const SizedBox(height: 10),
                            Center(
                              child: InkWell(
                                onTap: () {
                                  controller.goToSignUp();
                                },
                                child: const Text(
                                  "حساب جديد",
                                  style: TextStyle(
                                      color: AppColor.primary,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
        ));
  }
}
