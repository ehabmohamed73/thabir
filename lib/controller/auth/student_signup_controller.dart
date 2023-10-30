import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teacher_rating/core/classes/statusrequest.dart';
import 'package:teacher_rating/core/constant/appRoots.dart';
import 'package:teacher_rating/core/functions/handledata.dart';
import 'package:teacher_rating/core/services/services.dart';
import 'package:teacher_rating/data/remote/student_signup.dart';

class StudentSignupController extends GetxController {
  late TextEditingController firstName,
      lastName,
      birthDay,
      email,
      password,
      mobile;
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  bool showHide = true;
  MyServices myServices = Get.find();
  RemoteSignUp remoteSignUp = RemoteSignUp(Get.find());
  List data = [];
  StatusRequest? statusRequest;
  signUp() async {
    var formData = formState.currentState;
    if (formData!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var respons = await remoteSignUp.postSignupData("1", firstName.text,
          lastName.text, email.text, password.text, mobile.text, birthDay.text);
      print("========================== controller $respons ");
      statusRequest = handlingData(respons);

      if (StatusRequest.success == statusRequest) {
        if (respons['status'] == "success") {
          Get.offAllNamed(AppRoots.logIn);

          myServices.sharedpref.setString("isTeacher", "0");
          myServices.sharedpref.setString("step", "2");
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
