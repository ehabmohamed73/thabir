import 'package:teacher_rating/applinks.dart';
import 'package:teacher_rating/core/classes/crud.dart';

class RemoteStudentProfile {
  Crud curd;
  RemoteStudentProfile(this.curd);

  getStudentData(String id) async {
    var respons = await curd.postData(AppLinks.studentProfileLink, {
      "id": id,
    });
    return respons.fold((l) => l, (r) => r);
  }
}
