import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teacher_rating/core/classes/statusrequest.dart';
import 'package:teacher_rating/core/constant/appRoots.dart';
import 'package:teacher_rating/core/functions/handledata.dart';
import 'package:teacher_rating/core/services/services.dart';
import 'package:teacher_rating/data/remote/teacher/remotsignup2.dart';

class TeacherSignup2Controller extends GetxController {
  String? email;
  late TextEditingController certdescription,
      certdate,
      certname,
      certpath,
      expdescription,
      expdate,
      expname,
      exppath;
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  bool showHide = true;
  MyServices myServices = Get.find();
  RemoteSignUp2 remoteSignUp2 = RemoteSignUp2(Get.find());
  StatusRequest? statusRequest;
  signUp() async {
    var formData = formState.currentState;
    if (formData!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var respons = await remoteSignUp2.postSignup2Data(
          email!,
          certdescription.text,
          certdate.text,
          certname.text,
          certpath.text,
          expdescription.text,
          expdate.text,
          expname.text,
          exppath.text);
      print("========================== controller $respons ");
      statusRequest = handlingData(respons);

      if (StatusRequest.success == statusRequest) {
        if (respons['status'] == "success") {
          Get.offAllNamed(AppRoots.signUpTeacher3);
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
    email = Get.arguments['email'];
    certdescription = TextEditingController();
    certdate = TextEditingController();
    certname = TextEditingController();
    certpath = TextEditingController();
    expdescription = TextEditingController();
    expdate = TextEditingController();
    expname = TextEditingController();
    exppath = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    certdescription.dispose();
    certdate.dispose();
    certname.dispose();
    certpath.dispose();
    expdescription.dispose();
    expdate.dispose();
    expname.dispose();
    exppath.dispose();
    super.dispose();
  }
}
