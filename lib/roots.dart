import 'package:get/get.dart';
import 'package:teacher_rating/core/constant/appRoots.dart';
import 'package:teacher_rating/core/middleware/mymiddleware.dart';
import 'package:teacher_rating/view/screen/auth/SuccessSignUp.dart';
import 'package:teacher_rating/view/screen/auth/forgetpassword/check_email.dart';
import 'package:teacher_rating/view/screen/auth/login.dart';
import 'package:teacher_rating/view/screen/auth/signup/teacher/signup_page1.dart';
import 'package:teacher_rating/view/screen/auth/signup/teacher/signup_page2.dart';
import 'package:teacher_rating/view/screen/auth/signup/teacher/signup_page3.dart';
import 'package:teacher_rating/view/screen/auth/student/student_signup.dart';
import 'package:teacher_rating/view/screen/contract.dart';
import 'package:teacher_rating/view/screen/homepage.dart';
import 'package:teacher_rating/view/screen/new_account.dart';
import 'package:teacher_rating/view/screen/teacherRating.dart';
import 'package:teacher_rating/view/screen/teacher_home.dart';
import 'package:teacher_rating/view/screen/teacher_profile.dart';
import 'package:teacher_rating/view/screen/teacherpro.dart';
import 'package:teacher_rating/view/widget/shared/custom_search.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
      name: '/', page: () => const NewAccount(), middlewares: [MyMiddleWare()]),
  // GetPage(name: '/', page: () => StudentRate()),
  GetPage(name: AppRoots.studentHome, page: () => HomePage()),
  GetPage(name: AppRoots.teacherHome, page: () => TeacherHome()),
  GetPage(name: AppRoots.signUpStudent, page: () => const StudentSignup()),
  GetPage(name: AppRoots.signUpTeacher, page: () => const SignupPage1()),
  GetPage(name: AppRoots.signUpTeacher2, page: () => const SignupPage2()),
  GetPage(name: AppRoots.signUpTeacher3, page: () => const SignupPage3()),
  GetPage(name: AppRoots.forgetPassword, page: () => const CheckEmail()),
  GetPage(name: AppRoots.successLogIn, page: () => const SuccessLogIn()),
  GetPage(name: AppRoots.teacherRating, page: () => const TeacherRating()),
  GetPage(name: AppRoots.logIn, page: () => const Login()),
  GetPage(name: AppRoots.search, page: () => const CustomSearch()),
  GetPage(name: AppRoots.teacherProfile, page: () => const TeacherProfile()),
  GetPage(name: AppRoots.contract, page: () => Contract()),
  GetPage(name: AppRoots.teachrPro, page: () => TeacherPro()),
];
