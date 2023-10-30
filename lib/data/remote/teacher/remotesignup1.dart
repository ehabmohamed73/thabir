import 'package:teacher_rating/applinks.dart';
import 'package:teacher_rating/core/classes/crud.dart';

class RemoteSignUp1 {
  Crud curd;
  RemoteSignUp1(this.curd);

  postSignup1Data(String type, String fristName, String lastName, String email,
      String password, String mobile, String birthDate) async {
    var respons = await curd.postData(AppLinks.signupLink, {
      "signUpTaype": type,
      "fristName": fristName,
      "lastName": lastName,
      "email": email,
      "mobile": mobile,
      "birthDate": birthDate,
      "password": password,
    });
    return respons.fold((l) => l, (r) => r);
  }
}
