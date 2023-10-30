import 'package:flutter/material.dart';
import 'package:teacher_rating/core/constant/colors.dart';
import 'package:teacher_rating/core/functions/validateInput.dart';
import 'package:teacher_rating/view/screen/auth/forgetpassword/verify_code.dart';
import 'package:teacher_rating/view/widget/auth/custom_auth_input.dart';
import 'package:teacher_rating/view/widget/auth/custom_btn_auth.dart';
import 'package:teacher_rating/view/widget/auth/custom_text_auth.dart';

class CheckEmail extends StatelessWidget {
  const CheckEmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('التحقق من الايمل'),
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
                        border: Border.all(color: AppColor.primary, width: 3),
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
                Checkbox(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  checkColor: Colors.white,
                  fillColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                    if (states.contains(MaterialState.disabled)) {
                      return Colors.white;
                    }
                    return Colors.white;
                  }),
                  value: false,
                  onChanged: (newValue) {},
                ),
                const CustomTextAuth(text: " رقم الهاتف*"),
                const SizedBox(height: 10),
                CustomAuthInput(
                    validFiled: (val) {
                      return validateInput(val!, 5, 30, 'phone');
                    },
                    textAlign: TextAlign.left,
                    text: "ادخل رقم الهاتف",
                    abscuer: false,
                    textInputType: TextInputType.phone,
                    prefixIcon: Icon(Icons.phone_android_outlined)),
                Checkbox(
                  checkColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  fillColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                    if (states.contains(MaterialState.disabled)) {
                      return Colors.white;
                    }
                    return AppColor.primary;
                  }),
                  value: true,
                  onChanged: (newValue) {},
                ),
                const CustomTextAuth(text: "البريد الالكتروني*"),
                const SizedBox(height: 10),
                CustomAuthInput(
                    validFiled: (val) {
                      return validateInput(val!, 5, 30, 'email');
                    },
                    textAlign: TextAlign.left,
                    text: "ادخل البريد الالكتروني",
                    abscuer: false,
                    textInputType: TextInputType.emailAddress,
                    prefixIcon: Icon(Icons.email_outlined)),
                const SizedBox(height: 10),
                Center(
                    child: CustomBtnAuth(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const VerifyCode(),
                        ));
                  },
                  btnText: "تاكيد",
                  iconData: Icons.check,
                )),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
