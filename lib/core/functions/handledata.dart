import 'package:teacher_rating/core/classes/statusrequest.dart';

handlingData(respons) {
  if (respons is StatusRequest) {
    return respons;
  } else {
    return StatusRequest.success;
  }
}
