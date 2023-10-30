import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teacher_rating/controller/auth/teacher/signup1_controller.dart';
import 'package:teacher_rating/core/classes/statusrequest.dart';
import 'package:teacher_rating/core/constant/colors.dart';
import 'package:teacher_rating/core/functions/validateInput.dart';
import 'package:teacher_rating/view/widget/auth/custom_auth_input.dart';
import 'package:teacher_rating/view/widget/auth/custom_btn_auth.dart';
import 'package:teacher_rating/view/widget/auth/custom_text_auth.dart';
import 'package:teacher_rating/view/widget/shared/loadingcircular.dart';

class SignupPage1 extends StatelessWidget {
  const SignupPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(TeacherSignup1Controller());
    return Scaffold(
      appBar: AppBar(
        title: const Text('حساب جديد'),
        centerTitle: true,
        backgroundColor: const Color(0xDA2994B2),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: GetBuilder<TeacherSignup1Controller>(
          builder: (controller) => controller.statusRequest ==
                  StatusRequest.loading
              ? const LoadingCircular()
              : Container(
                  width: MediaQuery.of(context).size.width,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
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
                              ),
                              Container(
                                width: 80,
                                height: 4,
                                decoration: const BoxDecoration(
                                  color: Color(0xff9E9595),
                                ),
                              ),
                              const CircleAvatar(
                                backgroundColor: Color(0xffffffff),
                                child: Text("1",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 17)),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        Form(
                          key: controller.formState,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const CustomTextAuth(text: "الاسم الاول*"),
                              const SizedBox(height: 5),
                              CustomAuthInput(
                                  myController: controller.firstName,
                                  validFiled: (val) {
                                    return validateInput(
                                        val!, 2, 30, 'username');
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
                                    return validateInput(
                                        val!, 2, 30, 'username');
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
                                  validFiled: (val) {
                                    return validateInput(
                                        val!, 5, 30, 'username');
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
                                    return validateInput(val!, 5, 30, 'phone');
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
                              CustomAuthInput(
                                  myController: controller.password,
                                  validFiled: (val) {
                                    return validateInput(
                                        val!, 5, 30, 'password');
                                  },
                                  textAlign: TextAlign.left,
                                  text: "********",
                                  abscuer: true,
                                  textInputType: TextInputType.visiblePassword,
                                  prefixIcon: Icon(Icons.visibility_outlined)),
                              const SizedBox(height: 5),
                              const CustomTextAuth(text: "تاكيد الرقم السري *"),
                              const SizedBox(height: 5),
                              CustomAuthInput(
                                  validFiled: (val) {
                                    return validateInput(
                                        val!, 5, 30, 'password');
                                  },
                                  textAlign: TextAlign.left,
                                  text: "********",
                                  abscuer: true,
                                  textInputType: TextInputType.visiblePassword,
                                  prefixIcon: Icon(Icons.visibility_outlined)),
                              const SizedBox(height: 20),
                              CustomBtnAuth(
                                onPressed: () {
                                  controller.signUp();
                                },
                                btnText: "التالي",
                                iconData: Icons.arrow_back_rounded,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
        ),
      ),
    );
  }
}
