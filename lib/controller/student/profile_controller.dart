import 'package:get/get.dart';
import 'package:teacher_rating/core/classes/statusrequest.dart';
import 'package:teacher_rating/core/functions/handledata.dart';
import 'package:teacher_rating/core/services/services.dart';
import 'package:teacher_rating/data/remote/student/profile.dart';

class StudentProfileController extends GetxController {
  Map data = {};
  MyServices myServices = Get.find();
  RemoteStudentProfile remoteStudentProfile = RemoteStudentProfile(Get.find());
  StatusRequest? statusRequest;

  viewStudentInfo() async {
    statusRequest = StatusRequest.loading;
    update();
    var respons = await remoteStudentProfile
        .getStudentData(myServices.sharedpref.getString("id")!);
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
    viewStudentInfo();
    super.onInit();
  }
}
