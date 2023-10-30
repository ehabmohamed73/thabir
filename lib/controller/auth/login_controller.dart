import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teacher_rating/core/classes/statusrequest.dart';
import 'package:teacher_rating/core/constant/appRoots.dart';
import 'package:teacher_rating/core/constant/colors.dart';
import 'package:teacher_rating/core/functions/handledata.dart';
import 'package:teacher_rating/core/services/services.dart';
import 'package:teacher_rating/data/remote/remotelogin.dart';

class LoginController extends GetxController {
  late TextEditingController email, password;
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  StatusRequest? statusRequest;
  RemoteLogIn remoteLogIn = RemoteLogIn(Get.find());
  MyServices myServices = Get.find();
  String? isTeacher;

  login() async {
    var formData = formState.currentState;
    if (formData!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var respons = await remoteLogIn.postLoginData(email.text, password.text);
      print("========================== controller $respons ");
      if (respons == StatusRequest.offlineFailure) {
        Get.defaultDialog(
            backgroundColor: AppColor.primary,
            title: "Warning",
            middleText: "you are not connected to the internet");
      }
      statusRequest = handlingData(respons);

      if (StatusRequest.success == statusRequest) {
        if (respons['status'] == "success") {
          if (respons['data']["isteacher"] == 1) {
            myServices.sharedpref
                .setString("id", respons['data']['teacher_id'].toString());
            myServices.sharedpref.setString("isTeacher", "0");
            myServices.sharedpref.setString("step", "1");

            Get.offAllNamed(AppRoots.teacherHome);
          } else {
            myServices.sharedpref.setString("isTeacher", "1");
            myServices.sharedpref
                .setString("id", respons['data']['student_id'].toString());
            myServices.sharedpref.setString("step", "2");
            Get.offAllNamed(AppRoots.studentHome);
          }

          // Get.toNamed(AppRoots.successLogIn,
          //     arguments: {"isTeacher": isTeacher});
        } else {
          statusRequest = StatusRequest.failure;
          Get.defaultDialog(
              title: "Warning", middleText: "email or password incorracte");
        }
      }
      update();
    } else {
      print('not Valide');
    }
  }

  goToSignUp() {
    Get.offNamed(AppRoots.signUpStudent);
  }

  goToCheckEmail() {
    Get.offNamed(AppRoots.forgetPassword);
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }
}
