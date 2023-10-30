import 'package:get/get.dart';
import 'package:teacher_rating/core/constant/signup_values.dart';

class HomeController extends GetxController {
  int currentIndex = 0;
  @override
  void onInit() {
    print(teacherOrStudent);
    super.onInit();
  }

  List images = [
    "assets/t1.jpeg",
    "assets/t2.jpeg",
    "assets/t3.jpeg",
    "assets/t4.webp",
  ];

  carouselChange(Value) {
    currentIndex = Value;
    update();
  }
}
