import 'package:get/get.dart';
import 'package:teacher_rating/core/classes/statusrequest.dart';
import 'package:teacher_rating/core/functions/handledata.dart';
import 'package:teacher_rating/core/services/services.dart';
import 'package:teacher_rating/data/remote/teacher/remoteProfile.dart';

class TeacherProfile1Controller extends GetxController {
  Map data = {};
  MyServices myServices = Get.find();
  RemoteTeacherProfile remoteTeacherProfile = RemoteTeacherProfile(Get.find());
  StatusRequest? statusRequest;

  viewTeacherInfo() async {
    statusRequest = StatusRequest.loading;
    update();
    var respons = await remoteTeacherProfile
        .getTeacherData(myServices.sharedpref.getString("id")!);
    print("========================== controller $respons ");
    statusRequest = handlingData(respons);

    if (StatusRequest.success == statusRequest) {
      if (respons['status'] == "success") {
        data.addAll(respons['data']);
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  void onInit() {
    viewTeacherInfo();
    super.onInit();
  }
}
