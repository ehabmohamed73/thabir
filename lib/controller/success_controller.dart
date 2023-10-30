import 'package:get/get.dart';
import 'package:teacher_rating/core/constant/appRoots.dart';
import 'package:teacher_rating/core/services/services.dart';

class SuccessController extends GetxController {
  String? isTeacher;
  MyServices myServices = Get.find();
  @override
  void onInit() {
    isTeacher = Get.arguments['isTeacher'];
    print(myServices.sharedpref.getString("id"));

    super.onInit();
  }

  goToHomePage() {
    if (isTeacher == "1") {
      Get.offAllNamed(AppRoots.teacherHome);
    } else {
      Get.offAllNamed(AppRoots.studentHome);
    }
  }
}
