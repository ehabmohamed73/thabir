import 'package:flutter/material.dart';
import 'package:teacher_rating/core/constant/colors.dart';
import 'package:teacher_rating/core/functions/validateInput.dart';
import 'package:teacher_rating/view/screen/auth/login.dart';
import 'package:teacher_rating/view/widget/auth/custom_auth_input.dart';
import 'package:teacher_rating/view/widget/auth/custom_btn_auth.dart';
import 'package:teacher_rating/view/widget/auth/custom_text_auth.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('اعادة تعين كلمة المرور'),
          centerTitle: true,
          backgroundColor: const Color(0xDA2994B2),
        ),
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    Center(
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 50),
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: AppColor.primary, width: 3),
                            borderRadius: BorderRadius.circular(10)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            "assets/logo.jpg",
                            width: MediaQuery.of(context).size.width / 1.3,
                          ),
                        ),
                      ),
                    ),
                    const CustomTextAuth(text: " الرقم السري *"),
                    const SizedBox(height: 10),
                    CustomAuthInput(
                        validFiled: (val) {
                          return validateInput(val!, 5, 30, 'password');
                        },
                        textAlign: TextAlign.left,
                        text: "********",
                        abscuer: true,
                        textInputType: TextInputType.visiblePassword,
                        prefixIcon: Icon(Icons.visibility_outlined)),
                    const SizedBox(height: 10),
                    const CustomTextAuth(text: "تاكيدالرقم السري*"),
                    const SizedBox(height: 10),
                    CustomAuthInput(
                        validFiled: (val) {
                          return validateInput(val!, 5, 30, 'password');
                        },
                        textAlign: TextAlign.left,
                        text: "********",
                        abscuer: true,
                        textInputType: TextInputType.visiblePassword,
                        prefixIcon: Icon(Icons.visibility_outlined)),
                    const SizedBox(height: 10),
                    CustomTextAuth(text: "تنبية*"),
                    Text(
                      "* يجب استخدام على الاقل واحد من الحروف الإنجليزية الكبيرة",
                      style: TextStyle(color: Colors.red[400]),
                    ),
                    Text(
                      "* يجب ان تحتوي على ارقام",
                      style: TextStyle(color: Colors.red[400]),
                    ),
                    Text(
                      "* يجب ان تحتوي على رموز",
                      style: TextStyle(color: Colors.red[400]),
                    ),
                    Text(
                      "* يجب ان لا تفل على 8 احرف",
                      style: TextStyle(color: Colors.red[400]),
                    ),
                    const SizedBox(height: 10),
                    Center(
                        child: CustomBtnAuth(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Login(),
                            ));
                      },
                      btnText: "تاكيد",
                      iconData: Icons.check,
                    )),
                    const SizedBox(height: 10),
                  ]),
            ),
          ),
        ));
  }
}
