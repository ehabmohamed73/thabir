import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teacher_rating/controller/rate_controller.dart';
import 'package:teacher_rating/view/widget/shared/bottm_nav_bar.dart';

class TeacherRate extends StatelessWidget {
  const TeacherRate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('تقيم المعلم'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(181, 41, 148, 178),
      ),
      bottomNavigationBar: const BottmNavBar(),
      body: Directionality(
          textDirection: TextDirection.rtl,
          child: Stack(
            children: [
              Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.only(top: 100, right: 10, left: 10),
                  decoration: BoxDecoration(
                      color: const Color(0xD82994B2),
                      border: Border.all(
                          color: const Color(0x602994B2),
                          width: 6,
                          strokeAlign: BorderSide.strokeAlignOutside),
                      borderRadius: BorderRadius.circular(20)),
                  child: Container(
                    margin: const EdgeInsets.only(top: 60, right: 10),
                    child: ListView(
                      children: [
                        const Text(
                          " التقيم :",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                        Container(
                          height: 50,
                          decoration: BoxDecoration(
                              color: const Color(0xffB6EDFF),
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              ...List.generate(
                                5,
                                (index) => GetBuilder<RateController>(
                                  init: RateController(),
                                  builder: (controller) => InkWell(
                                    onTap: () {
                                      controller.changeStare();
                                      index > 1 ? index - 1 : index;
                                      controller.update();
                                    },
                                    child: controller.starActive == false
                                        ? Image.asset(
                                            "assets/star1.png",
                                            width: 65,
                                          )
                                        : Image.asset(
                                            "assets/star.png",
                                            scale: 0.6,
                                          ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          " الملاحظات :",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                        TextFormField(
                          dragStartBehavior: DragStartBehavior.down,
                          textAlign: TextAlign.center,
                          textAlignVertical: TextAlignVertical.center,
                          maxLines: 5,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            prefixIcon: const Icon(
                              Icons.note_alt_outlined,
                              color: Colors.black,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                  color: Color(0xffB6EDFF), width: 3),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                  color: Color(0xffB6EDFF), width: 3),
                            ),
                          ),
                        ),
                        const SizedBox(height: 50),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 80),
                          decoration: BoxDecoration(
                              color: const Color(0xDA2994B2),
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  color: const Color(0xffB6EDFF), width: 3)),
                          child: MaterialButton(
                            onPressed: () {},
                            child: Row(
                              // mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Text(
                                  "تقييم",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 17),
                                ),
                                Icon(
                                  Icons.check_box_rounded,
                                  size: 30,
                                  color: Colors.green[700],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )),
              Positioned(
                top: 30,
                right: 10,
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 4),
                      borderRadius: BorderRadius.circular(10)),
                  child: Image.asset(
                    "assets/t4.webp",
                    width: 120,
                  ),
                ),
              ),
              const Positioned(
                top: 60,
                right: 150,
                child: Text(
                  "سلطان الحزمي",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              const Positioned(
                top: 95,
                right: 150,
                width: 140,
                child: Text(
                  " خريج بكالوريوس اداب انجليزي",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
              Positioned(
                top: 155,
                right: 70,
                child: Container(
                  margin: const EdgeInsets.only(bottom: 5),
                  height: 5,
                  width: MediaQuery.of(context).size.width / 1.5,
                  decoration: const BoxDecoration(color: Colors.white),
                ),
              ),
            ],
          )),
    );
  }
}
