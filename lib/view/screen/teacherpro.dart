import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teacher_rating/core/constant/colors.dart';
import 'package:teacher_rating/controller/teacherprofile_controller.dart';
import 'package:teacher_rating/view/widget/profile/row_certificates.dart';
import 'package:teacher_rating/view/widget/shared/bottm_nav_bar.dart';
import 'package:teacher_rating/view/widget/shared/custom_line.dart';

import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class TeacherPro extends StatelessWidget {
  const TeacherPro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('صفحتي الشخصية '),
            centerTitle: true,
            backgroundColor: const Color.fromARGB(181, 41, 148, 178),
            actions: [
              Container(
                margin: const EdgeInsets.only(right: 10),
                child: const Icon(
                  Icons.share_outlined,
                  color: AppColor.primary,
                  size: 30,
                ),
              ),
            ]),
        bottomNavigationBar: const BottmNavBar(),
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: Stack(
            children: [
              Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.only(top: 80, right: 20, left: 20),
                  decoration: const BoxDecoration(
                      color: Color(0x732994B2),
                      border: Border(
                          left: BorderSide(
                              color: AppColor.primary,
                              width: 6,
                              strokeAlign: BorderSide.strokeAlignOutside),
                          right: BorderSide(
                              color: AppColor.primary,
                              width: 6,
                              strokeAlign: BorderSide.strokeAlignOutside),
                          top: BorderSide(
                              color: AppColor.primary,
                              width: 6,
                              strokeAlign: BorderSide.strokeAlignOutside),
                          bottom: BorderSide(
                              color: AppColor.primary,
                              width: 0,
                              strokeAlign: BorderSide.strokeAlignOutside)),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20))),
                  child: Container(
                    margin: const EdgeInsets.only(top: 50, right: 10),
                    child: ListView(
                      children: [
                        const Text(
                          " الشهادات :",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff053F50)),
                        ),
                        const RowCertificates(),
                        const CustomLine(
                            lineColor: Color.fromARGB(158, 255, 255, 255),
                            divWith: 1.6,
                            height: 5),
                        const Text(
                          " الخبرات :",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff053F50)),
                        ),
                        const RowCertificates(),
                        const CustomLine(
                            lineColor: Color.fromARGB(158, 255, 255, 255),
                            divWith: 1.6,
                            height: 5),
                        const Text(
                          "نبذة عني :",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff053F50)),
                        ),
                        TextFormField(
                          dragStartBehavior: DragStartBehavior.down,
                          textAlign: TextAlign.right,
                          minLines: 3,
                          maxLines: 5,
                          scribbleEnabled: true,
                          keyboardType: TextInputType.multiline,
                          decoration: InputDecoration(
                            hintText:
                                "مرحبا انا استاذ لغة عربية متخصص في النحو الصرف",
                            filled: true,
                            fillColor: const Color(0xffB1D7E1),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                  color: AppColor.primary, width: 3),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                  color: AppColor.primary, width: 3),
                            ),
                          ),
                        ),
                        const Text(
                          " معلومات التواصل :",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff053F50)),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: const Color(0xffB1D7),
                              border:
                                  Border.all(color: AppColor.primary, width: 2),
                              borderRadius: BorderRadius.circular(10)),
                          child: const Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text("+96650888646"),
                                  SizedBox(width: 20),
                                  Icon(Icons.phone_enabled_rounded)
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Flexible(
                                    child: Text(
                                      "https:://likedIn.com",
                                      maxLines: 3,
                                      overflow: TextOverflow.visible,
                                      textAlign: TextAlign.start,
                                      style:
                                          TextStyle(color: Color(0xFF1B6DB9)),
                                      softWrap: true,
                                    ),
                                  ),
                                  SizedBox(width: 20),
                                  Icon(Icons.facebook_rounded),
                                ],
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "فيديو تعريفي :",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff053F50)),
                        ),
                        GetBuilder<TeacherProfileController>(
                          init: TeacherProfileController(),
                          builder: (controller) => Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: AppColor.primary)),
                            child: YoutubePlayer(
                              controller: controller.controller,
                              showVideoProgressIndicator: true,
                              width: MediaQuery.of(context).size.width / 1.5,
                              progressColors: const ProgressBarColors(
                                  backgroundColor: AppColor.primary),
                            ),
                          ),
                        )
                      ],
                    ),
                  )),
              Positioned(
                  top: 30,
                  right: 25,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColor.primary, width: 4),
                        borderRadius: BorderRadius.circular(10)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "assets/t5.jpg",
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                  )),
              const Positioned(
                  top: 45,
                  right: 140,
                  child: Text(
                    "خالد عمر",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  )),
              const Positioned(
                  top: 80,
                  right: 140,
                  width: 110,
                  child: Text(
                    "باكالوريوس لغة عربية",
                    style: TextStyle(
                        fontSize: 13,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )),
              Positioned(
                  top: 85,
                  left: 40,
                  width: 30,
                  child: Image.asset(
                    "assets/star.png",
                    scale: 0.7,
                  )),
            ],
          ),
        ));
  }
}
