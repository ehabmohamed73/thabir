import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teacher_rating/controller/student/profile_controller.dart';
import 'package:teacher_rating/core/classes/statusrequest.dart';
import 'package:teacher_rating/core/constant/colors.dart';
import 'package:teacher_rating/view/widget/contract/custom_contract_input.dart';
import 'package:teacher_rating/view/widget/shared/bottm_nav_bar.dart';
import 'package:teacher_rating/view/widget/shared/custom_app_bar.dart';
import 'package:teacher_rating/view/widget/shared/custom_drawer.dart';
import 'package:teacher_rating/view/widget/shared/loadingcircular.dart';

// ignore: must_be_immutable
class StudentProfile extends StatelessWidget {
  GlobalKey<ScaffoldState> scafKey = GlobalKey<ScaffoldState>();
  StudentProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(StudentProfileController());
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          key: scafKey,
          appBar: CustomAppBar(' الملف الشخصي', () {
            scafKey.currentState?.openDrawer();
          }),
          bottomNavigationBar: const BottmNavBar(),
          drawer: CustomDrawer(),
          body: GetBuilder<StudentProfileController>(
            builder: (controller) => controller.statusRequest ==
                    StatusRequest.loading
                ? const LoadingCircular()
                : Stack(
                    children: [
                      Container(
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.only(
                              top: 90, right: 10, left: 10),
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(54, 41, 148, 178),
                              border: Border.all(
                                  color: AppColor.primary,
                                  width: 6,
                                  strokeAlign: BorderSide.strokeAlignOutside),
                              borderRadius: BorderRadius.circular(20)),
                          child: Container(
                            margin: const EdgeInsets.only(top: 90, right: 10),
                            child: ListView(
                              children: [
                                const Text(
                                  " الاسم الأول *",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black),
                                ),
                                const SizedBox(height: 5),
                                CustomContractInput(
                                    text:
                                        "${controller.data['student_first_name']}",
                                    enabled: true),
                                const Text(
                                  " الاسم الاخير *",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black),
                                ),
                                const SizedBox(height: 5),
                                CustomContractInput(
                                    text:
                                        "${controller.data['student_last_name']}",
                                    enabled: true),
                                const Text(
                                  " رقم الهاتف *",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black),
                                ),
                                const SizedBox(height: 5),
                                CustomContractInput(
                                    text: "${controller.data['student_phone']}",
                                    enabled: true),
                                const Text(
                                  " البريدالالكتروني *",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black),
                                ),
                                const SizedBox(height: 5),
                                CustomContractInput(
                                    text: "${controller.data['student_email']}",
                                    enabled: true),
                                const SizedBox(height: 10),
                                Container(
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 60, vertical: 20),
                                  decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                          172, 41, 148, 178),
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          color: AppColor.primary, width: 3)),
                                  child: MaterialButton(
                                    onPressed: () {},
                                    child: const Row(
                                      // mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          "تعديل كلمة المرور",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16),
                                        ),
                                        Icon(
                                          Icons.edit_note,
                                          size: 30,
                                          color: AppColor.primary,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 60),
                                  decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                          172, 41, 148, 178),
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          color: AppColor.primary, width: 3)),
                                  child: MaterialButton(
                                    onPressed: () {},
                                    child: const Row(
                                      // mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          "تعديل الصفحة",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16),
                                        ),
                                        Icon(
                                          Icons.edit_note,
                                          size: 30,
                                          color: AppColor.primary,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )),
                      Positioned(
                          top: 70,
                          right: 20,
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: AppColor.primary, width: 4),
                                borderRadius: BorderRadius.circular(10)),
                            child: Image.asset(
                              "assets/t4.webp",
                              width: 100,
                            ),
                          )),
                      Positioned(
                          top: 100,
                          right: 150,
                          child: Text(
                            "${controller.data['student_first_name']} ${controller.data['student_last_name']}",
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          )),
                      Positioned(
                          top: 130,
                          right: 140,
                          child: Text(
                            "${controller.data['student_email']}",
                            style: TextStyle(fontSize: 13),
                          )),
                      Positioned(
                        top: 180,
                        right: 70,
                        child: Container(
                          margin: const EdgeInsets.only(bottom: 5),
                          height: 5,
                          width: MediaQuery.of(context).size.width / 1.5,
                          decoration:
                              const BoxDecoration(color: AppColor.primary),
                        ),
                      ),
                    ],
                  ),
          )),
    );
  }
}
