import 'package:teacher_rating/applinks.dart';
import 'package:teacher_rating/core/classes/crud.dart';

class RemoteSignUp2 {
  Crud curd;
  RemoteSignUp2(this.curd);

  postSignup2Data(
      String email,
      String certdescription,
      String certdate,
      String certname,
      String certpath,
      String expdescription,
      String expdate,
      String expname,
      String exppath) async {
    var respons = await curd.postData(AppLinks.signup2Link, {
      "certdescription": certdescription,
      "certdate": certdate,
      "certname": certname,
      "certpath": certpath,
      "expdescription": expdescription,
      "expdate": expdate,
      "expname": expname,
      "exppath": exppath,
      "email": email,
    });
    return respons.fold((l) => l, (r) => r);
  }
}
