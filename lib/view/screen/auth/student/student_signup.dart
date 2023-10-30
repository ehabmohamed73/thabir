// ignore_for_file: unrelated_type_equality_checks

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teacher_rating/controller/auth/student_signup_controller.dart';
import 'package:teacher_rating/core/classes/statusrequest.dart';
import 'package:teacher_rating/core/constant/colors.dart';
import 'package:teacher_rating/core/functions/validateInput.dart';
import 'package:teacher_rating/view/widget/auth/custom_auth_input.dart';
import 'package:teacher_rating/view/widget/auth/custom_btn_auth.dart';
import 'package:teacher_rating/view/widget/auth/custom_text_auth.dart';
import 'package:teacher_rating/view/widget/shared/loadingcircular.dart';

class StudentSignup extends StatelessWidget {
  const StudentSignup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(StudentSignupController());
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
          child: GetBuilder<StudentSignupController>(
            builder: (controller) => controller.statusRequest ==
                    StatusRequest.loading
                ? const LoadingCircular()
                : SingleChildScrollView(
                    child: Form(
                      key: controller.formState,
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
                          const SizedBox(height: 20),
                          const CustomTextAuth(text: "الاسم الاول*"),
                          const SizedBox(height: 5),
                          CustomAuthInput(
                              myController: controller.firstName,
                              validFiled: (val) {
                                return validateInput(val!, 1, 30, 'username');
                              },
                              textAlign: TextAlign.right,
                              text: "ادخل الاسم الاول",
                              abscuer: false,
                              suffixIcon: Icon(Icons.person),
                              textInputType: TextInputType.name),
                          const SizedBox(height: 5),
                          const CustomTextAuth(text: "الاسم الاخير*"),
                          const SizedBox(height: 5),
                          CustomAuthInput(
                              myController: controller.lastName,
                              validFiled: (val) {
                                return validateInput(val!, 1, 30, 'username');
                              },
                              textAlign: TextAlign.right,
                              text: "ادخل الاسم الاخير",
                              abscuer: false,
                              suffixIcon: Icon(Icons.person),
                              textInputType: TextInputType.text),
                          const SizedBox(height: 5),
                          const CustomTextAuth(text: " تاريخ الميلاد*"),
                          const SizedBox(height: 5),
                          CustomAuthInput(
                              myController: controller.birthDay,
                              validFiled: (p0) {
                                return null;
                              },
                              textAlign: TextAlign.right,
                              text: "اليوم-الشهر-السنة",
                              abscuer: false,
                              suffixIcon: Icon(Icons.calendar_today),
                              textInputType: TextInputType.text),
                          const SizedBox(height: 5),
                          const CustomTextAuth(text: " رقم الهاتف*"),
                          const SizedBox(height: 5),
                          CustomAuthInput(
                              myController: controller.mobile,
                              validFiled: (val) {
                                return validateInput(val!, 5, 10, 'phone');
                              },
                              textAlign: TextAlign.right,
                              text: "ادخل رقم الهاتف",
                              abscuer: false,
                              suffixIcon: Icon(Icons.phone_android_rounded),
                              textInputType: TextInputType.phone),
                          const SizedBox(height: 5),
                          const CustomTextAuth(text: " البريدالالكتروني *"),
                          const SizedBox(height: 5),
                          CustomAuthInput(
                              myController: controller.email,
                              validFiled: (val) {
                                return validateInput(val!, 5, 30, 'email');
                              },
                              textAlign: TextAlign.left,
                              text: "البريد الالكتروني",
                              abscuer: false,
                              textInputType: TextInputType.emailAddress,
                              prefixIcon: Icon(Icons.email_outlined)),
                          const SizedBox(height: 5),
                          const CustomTextAuth(text: " الرقم السري *"),
                          const SizedBox(height: 5),
                          GetBuilder<StudentSignupController>(
                            builder: (controller) => CustomAuthInput(
                              myController: controller.password,
                              validFiled: (val) {
                                return validateInput(val!, 5, 30, 'password');
                              },
                              textAlign: TextAlign.left,
                              text: "********",
                              abscuer: true,
                              textInputType: TextInputType.visiblePassword,
                              prefixIcon: InkWell(
                                onTap: () {
                                  controller.showPassword();
                                },
                                child: Icon(Icons.visibility_outlined),
                              ),
                            ),
                          ),
                          const SizedBox(height: 5),
                          const CustomTextAuth(text: "تاكيد الرقم السري *"),
                          const SizedBox(height: 5),
                          GetBuilder<StudentSignupController>(
                            builder: (controller) => CustomAuthInput(
                                validFiled: (val) {
                                  if (controller.password == val) {
                                    return "not match";
                                  }
                                  return null;
                                },
                                textAlign: TextAlign.left,
                                text: "********",
                                abscuer: true,
                                textInputType: TextInputType.visiblePassword,
                                prefixIcon: InkWell(
                                    onTap: () {
                                      controller.showPassword();
                                    },
                                    child: Icon(Icons.visibility_outlined))),
                          ),
                          const SizedBox(height: 30),
                          Center(
                            child: CustomBtnAuth(
                              onPressed: () {
                                controller.signUp();
                              },
                              btnText: "انشاء الحساب",
                              iconData: Icons.login_rounded,
                            ),
                          ),
                          const SizedBox(height: 30),
                        ],
                      ),
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}
