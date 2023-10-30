import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teacher_rating/core/constant/appRoots.dart';
import 'package:teacher_rating/core/services/services.dart';

class MyMiddleWare extends GetMiddleware {
  int? get Priority => 1;
  MyServices myServices = Get.find();
  @override
  RouteSettings? redirect(String? route) {
    if (myServices.sharedpref.getString('step') == '0') {
      return const RouteSettings(name: AppRoots.logIn);
    }
    if (myServices.sharedpref.getString('step') == '1') {
      return const RouteSettings(name: AppRoots.teacherHome);
    }
    if (myServices.sharedpref.getString('step') == '2') {
      return const RouteSettings(name: AppRoots.studentHome);
    }
    if (myServices.sharedpref.getString('step') == '3') {
      return const RouteSettings(name: AppRoots.signUpTeacher2);
    }
    if (myServices.sharedpref.getString('step') == '4') {
      return const RouteSettings(name: AppRoots.signUpTeacher3);
    }
    return null;
  }
}
