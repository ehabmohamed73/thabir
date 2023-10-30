import 'package:get/get_state_manager/get_state_manager.dart';

class DataTimeController extends GetxController {
  DateTime? today;
  @override
  void onInit() {
    today = DateTime.now();
    super.onInit();
  }

  void selectedDay(DateTime day, DateTime foucseDay) {
    today = day;
    update();
  }
}
