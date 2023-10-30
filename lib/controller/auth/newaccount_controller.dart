import 'package:get/get.dart';
import 'package:teacher_rating/core/constant/appRoots.dart';

class NewAccountaController extends GetxController {
  goToStudentSignUp() {
    Get.toNamed(AppRoots.signUpStudent, arguments: {"signUpTaype": "1"});
  }

  goToTeacherSignUp() {
    Get.toNamed(AppRoots.signUpTeacher, arguments: {"signUpTaype": "2"});
  }
}
