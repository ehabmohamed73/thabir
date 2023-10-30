import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teacher_rating/core/classes/statusrequest.dart';
import 'package:teacher_rating/core/constant/appRoots.dart';
import 'package:teacher_rating/core/functions/handledata.dart';
import 'package:teacher_rating/core/services/services.dart';
import 'package:teacher_rating/data/remote/teacher/remotesignup1.dart';

class TeacherSignup1Controller extends GetxController {
  late TextEditingController firstName,
      lastName,
      birthDay,
      email,
      password,
      mobile;
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  bool showHide = true;
  MyServices myServices = Get.find();
  RemoteSignUp1 remoteSignUp1 = RemoteSignUp1(Get.find());
  List data = [];
  StatusRequest? statusRequest;
  signUp() async {
    var formData = formState.currentState;
    if (formData!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var respons = await remoteSignUp1.postSignup1Data("2", firstName.text,
          lastName.text, email.text, password.text, mobile.text, birthDay.text);
      print("========================== controller $respons ");
      statusRequest = handlingData(respons);

      if (StatusRequest.success == statusRequest) {
        if (respons['status'] == "success") {
          myServices.sharedpref.setString("step", "3");
          Get.offAllNamed(AppRoots.signUpTeacher2,
              arguments: {"email": email.text});
        } else {
          statusRequest = StatusRequest.failure;
          Get.defaultDialog(
              title: "Warning", middleText: "email or phone already existe");
        }
      }
    } else {
      print('not Valide');
    }
    update();
  }

  showPassword() {
    showHide = showHide == false ? true : false;
    update();
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    mobile = TextEditingController();
    birthDay = TextEditingController();
    firstName = TextEditingController();
    lastName = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    firstName.dispose();
    lastName.dispose();
    birthDay.dispose();
    mobile.dispose();
    super.dispose();
  }
}
