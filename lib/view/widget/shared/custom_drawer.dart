import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teacher_rating/core/constant/appRoots.dart';
import 'package:teacher_rating/core/constant/colors.dart';
import 'package:teacher_rating/core/services/services.dart';
import 'package:teacher_rating/view/screen/settings.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MyServices myServices = Get.find();
    return Drawer(
      child: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: AppColor.primary, width: 6)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 230,
                    child: Stack(children: [
                      Container(
                        height: 120,
                        color: AppColor.primary,
                      ),
                      Positioned(
                        top: 90,
                        right: 10,
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: AppColor.primary,
                                  width: 6,
                                  strokeAlign: BorderSide.strokeAlignOutside),
                              borderRadius: BorderRadius.circular(20)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              "assets/t4.webp",
                              width: 100,
                              height: 110,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      const Positioned(
                        top: 70,
                        right: 130,
                        child: Text(
                          "تطبيق ثابر",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ]),
                  ),
                  Center(
                    child: Container(
                      height: 4,
                      width: MediaQuery.of(context).size.width / 1.5,
                      decoration: const BoxDecoration(color: AppColor.primary),
                    ),
                  ),
                  ListTile(
                      title: const Text("الإعدادات",
                          style: TextStyle(color: AppColor.primary)),
                      leading: const Icon(
                        Icons.settings,
                        color: AppColor.primary,
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Settings(),
                            ));
                      }),
                ],
              ),
              ListTile(
                  title: const Text("تسجيل الخروج",
                      style: TextStyle(color: AppColor.primary)),
                  leading: const Icon(
                    Icons.login_outlined,
                    color: AppColor.primary,
                  ),
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              content: const Text(
                                "هل انت متاكد من رغبتك بتسجيل الخروج",
                                style: TextStyle(color: AppColor.primary),
                                textAlign: TextAlign.center,
                              ),
                              actions: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ElevatedButton(
                                        style: const ButtonStyle(
                                            side: MaterialStatePropertyAll(
                                                BorderSide(
                                                    color: AppColor.seconed)),
                                            backgroundColor:
                                                MaterialStatePropertyAll(
                                                    Colors.white)),
                                        onPressed: () {},
                                        child: const Text('إلغاء',
                                            style: TextStyle(
                                                color: AppColor.primary))),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    ElevatedButton(
                                        style: const ButtonStyle(
                                            side: MaterialStatePropertyAll(
                                                BorderSide(
                                                    color: AppColor.seconed)),
                                            backgroundColor:
                                                MaterialStatePropertyAll(
                                                    Colors.white)),
                                        onPressed: () {
                                          Get.offAllNamed(AppRoots.logIn);
                                          myServices.sharedpref
                                              .setString("step", "0");
                                        },
                                        child: Text(
                                          'تسجيل الخروج',
                                          style:
                                              TextStyle(color: Colors.red[400]),
                                        )),
                                  ],
                                )
                              ],
                            ));
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
