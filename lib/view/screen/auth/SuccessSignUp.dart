import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teacher_rating/controller/success_controller.dart';
import 'package:teacher_rating/core/constant/colors.dart';
import 'package:teacher_rating/view/widget/auth/custom_btn_auth.dart';

class SuccessLogIn extends StatelessWidget {
  const SuccessLogIn({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SuccessController());
    return Scaffold(
      body: GetBuilder<SuccessController>(
        builder: (controller) => Container(
          padding: const EdgeInsets.all(15),
          child: Column(children: [
            const Center(
                child: Icon(
              Icons.check_circle_outline,
              size: 200,
              color: AppColor.primary,
            )),
            Text("Succeeful Log In",
                style: Theme.of(context)
                    .textTheme
                    .headline1!
                    .copyWith(fontSize: 30)),
            Text("38".tr),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: CustomBtnAuth(
                btnText: "Go to Home Page",
                onPressed: () {},
                iconData: Icons.check,
              ),
            ),
            const SizedBox(height: 30)
          ]),
        ),
      ),
    );
  }
}
