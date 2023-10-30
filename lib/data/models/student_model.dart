class StudentModel {
  int? studentId;
  String? studentFirstName;
  String? studentLastName;
  String? studentBirthdate;
  String? studentPhone;
  String? studentEmail;
  String? studentPassword;
  int? isteacher;

  StudentModel(
      {this.studentId,
      this.studentFirstName,
      this.studentLastName,
      this.studentBirthdate,
      this.studentPhone,
      this.studentEmail,
      this.studentPassword,
      this.isteacher});

  StudentModel.fromJson(Map<String, dynamic> json) {
    studentId = json['student_id'];
    studentFirstName = json['student_first_name'];
    studentLastName = json['student_last_name'];
    studentBirthdate = json['student_birthdate'];
    studentPhone = json['student_phone'];
    studentEmail = json['student_email'];
    studentPassword = json['student_password'];
    isteacher = json['isteacher'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['student_id'] = this.studentId;
    data['student_first_name'] = this.studentFirstName;
    data['student_last_name'] = this.studentLastName;
    data['student_birthdate'] = this.studentBirthdate;
    data['student_phone'] = this.studentPhone;
    data['student_email'] = this.studentEmail;
    data['student_password'] = this.studentPassword;
    data['isteacher'] = this.isteacher;
    return data;
  }
}
