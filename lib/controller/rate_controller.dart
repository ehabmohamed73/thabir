import 'package:get/get.dart';

class RateController extends GetxController {
  bool starActive = false;
  List stars = [
    {"active": "true", "url": "assets/star.png"}
  ];
  changeStare() {
    if (starActive == false) {
      starActive = true;
    } else {
      starActive = false;
    }
    update();
  }
}
