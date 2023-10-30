import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:teacher_rating/core/constant/colors.dart';
import 'package:teacher_rating/view/screen/auth/forgetpassword/reset_password.dart';
import 'package:teacher_rating/view/widget/auth/custom_text_auth.dart';

class VerifyCode extends StatelessWidget {
  const VerifyCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('التحقق من الرمز'),
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
                    Center(
                      child: Text(
                        style: TextStyle(color: Colors.red[400]),
                        "ادخل الرمز المرسل لبريدك الالكتروني التالي \nroz*******@gmail.com",
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      height: 50,
                      child: Directionality(
                        textDirection: TextDirection.ltr,
                        child: OtpTextField(
                          borderRadius: BorderRadius.circular(10),
                          numberOfFields: 5,
                          focusedBorderColor: AppColor.seconed,
                          enabledBorderColor: AppColor.primary,
                          //set to true to show as box or false to show as dash
                          showFieldAsBox: true,
                          //runs when a code is typed in
                          onCodeChanged: (String code) {
                            //handle validation or checks here
                          },
                          //runs when every textfield is filled
                          onSubmit: (String verificationCode) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ResetPassword()));
                          }, // end onSubmit
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Center(
                        child: CustomTextAuth(text: "لم يصلني رمز التحقق")),
                    const SizedBox(height: 10),
                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: AppColor.seconed),
                            borderRadius: BorderRadius.circular(10)),
                        padding: const EdgeInsets.all(10),
                        child: const InkWell(
                          child: Text(
                            " اعاده ارسال رمز التحقق",
                            style: TextStyle(
                                color: Color.fromRGBO(41, 148, 178, 1)),
                          ),
                        ),
                      ),
                    )
                  ]),
            ),
          ),
        ));
  }
}
