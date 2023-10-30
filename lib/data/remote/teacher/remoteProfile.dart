import 'package:teacher_rating/applinks.dart';
import 'package:teacher_rating/core/classes/crud.dart';

class RemoteTeacherProfile {
  Crud curd;
  RemoteTeacherProfile(this.curd);

  getTeacherData(String id) async {
    var respons = await curd.postData(AppLinks.teacherProfileLink, {
      "id": id,
    });
    return respons.fold((l) => l, (r) => r);
  }
}
