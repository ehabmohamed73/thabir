import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';
import 'package:teacher_rating/core/constant/appRoots.dart';
import 'package:teacher_rating/view/screen/student_rate.dart';
import 'package:teacher_rating/view/widget/shared/bottm_nav_bar.dart';
import 'package:teacher_rating/view/widget/shared/custom_app_bar.dart';
import 'package:teacher_rating/view/widget/shared/custom_drawer.dart';

// ignore: must_be_immutable
class TeacherHome extends StatelessWidget {
  TeacherHome({Key? key}) : super(key: key);
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        key: scaffoldKey,
        appBar: CustomAppBar('الصفحة الرئيسية', () {
          scaffoldKey.currentState?.openDrawer();
        }),
        bottomNavigationBar: const BottmNavBar(),
        drawer: const CustomDrawer(),
        body: Container(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: [
              // const SearchInput(),
              const SizedBox(height: 10),
              Container(
                height: MediaQuery.of(context).size.height / 1.37,
                padding: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
                decoration: BoxDecoration(
                    color: const Color(0x472994B2),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color(0xff9E9595), width: 3),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Text(
                              "عدد الطلاب المسجلين",
                              style: TextStyle(
                                  color: Color(0xff0D386A),
                                  fontSize: 17,
                                  fontWeight: FontWeight.w700),
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 20),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: SimpleCircularProgressBar(
                                      // animationDuration: 1,
                                      backColor: Colors.white,

                                      maxValue: 100,
                                      size: 50,
                                      progressStrokeWidth: 5,
                                      backStrokeWidth: 5,
                                      progressColors: [const Color(0xff9E9595)],
                                      mergeMode: true,
                                      valueNotifier: ValueNotifier(25),
                                      onGetText: (value) {
                                        return const Text(
                                          "25%",
                                          style: TextStyle(
                                              color: Color(0xff9E9595),
                                              fontWeight: FontWeight.w500),
                                        );
                                      },
                                    ),
                                  ),
                                  const SizedBox(width: 20),
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: const Color(0xff9E9595)),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      padding: const EdgeInsets.all(10),
                                      child: const InkWell(
                                        child: Text(
                                          "التفاصـيل",
                                          style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.w700,
                                              color: Color(0xff0D386A)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ]),
                    ),
                    const SizedBox(height: 20),
                    Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color(0xff9E9595), width: 3),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            const Text(
                              "التقيم",
                              style: TextStyle(
                                  color: Color(0xff0D386A),
                                  fontSize: 17,
                                  fontWeight: FontWeight.w700),
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 10),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: const Color(0xff9E9595)),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      padding: const EdgeInsets.all(10),
                                      child: InkWell(
                                        onTap: () {
                                          Get.toNamed(AppRoots.teacherRating);
                                        },
                                        child: const Text(
                                          "تقيمي",
                                          style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.w700,
                                              color: Color(0xff0D386A)),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 20),
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: const Color(0xff9E9595)),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      padding: const EdgeInsets.all(10),
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute<void>(
                                              builder: (BuildContext context) =>
                                                  const StudentRate(),
                                            ),
                                          );
                                        },
                                        child: const Text(
                                          "تقيم الطلاب",
                                          style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.w700,
                                              color: Color(0xff0D386A)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )),
                    const SizedBox(height: 20),

                    // Container(
                    //   decoration: BoxDecoration(
                    //       color: const Color(0xff2994B2),
                    //       border: Border.all(
                    //           color: const Color(0xffB6EDFF), width: 1),
                    //       borderRadius: BorderRadius.circular(10)),
                    //   child: Column(
                    //     children: [
                    //       const Center(
                    //         child: Text(
                    //           "تقيمي",
                    //           style: TextStyle(
                    //               fontSize: 17,
                    //               fontWeight: FontWeight.w700,
                    //               color: Colors.white),
                    //         ),
                    //       ),
                    //       const SizedBox(height: 10),
                    //       Container(
                    //         margin: const EdgeInsets.symmetric(
                    //             horizontal: 20, vertical: 5),
                    //         child: Table(
                    //           border: TableBorder.all(color: Colors.white),
                    //           children: [
                    //             const TableRow(
                    //                 decoration: BoxDecoration(
                    //                     color: Color.fromRGBO(177, 215, 224, 1),
                    //                     shape: BoxShape.rectangle),
                    //                 children: [
                    //                   Text(
                    //                     "الطالب/ الولد",
                    //                     textAlign: TextAlign.center,
                    //                     style: TextStyle(
                    //                         fontSize: 17,
                    //                         color:
                    //                             Color.fromRGBO(55, 89, 114, 1),
                    //                         fontWeight: FontWeight.bold),
                    //                   ),
                    //                   Text(
                    //                     "التقيم",
                    //                     textAlign: TextAlign.center,
                    //                     style: TextStyle(
                    //                         fontSize: 17,
                    //                         color:
                    //                             Color.fromRGBO(55, 89, 114, 1),
                    //                         fontWeight: FontWeight.bold),
                    //                   ),
                    //                 ]),
                    //             TableRow(
                    //                 decoration: const BoxDecoration(
                    //                   color: Color.fromRGBO(177, 215, 224, 1),
                    //                 ),
                    //                 children: [
                    //                   const Text(
                    //                     "احمد خالد",
                    //                     textAlign: TextAlign.center,
                    //                     style: TextStyle(
                    //                         fontSize: 16,
                    //                         color: Colors.black,
                    //                         fontWeight: FontWeight.w600),
                    //                   ),
                    //                   Row(
                    //                     mainAxisAlignment:
                    //                         MainAxisAlignment.center,
                    //                     children: [
                    //                       ...List.generate(
                    //                           5,
                    //                           (index) => const Icon(
                    //                                 Icons.star_rounded,
                    //                                 color: Colors.amber,
                    //                               ))
                    //                     ],
                    //                   )
                    //                 ]),
                    //             TableRow(
                    //                 decoration: const BoxDecoration(
                    //                   color: Color.fromRGBO(177, 215, 224, 1),
                    //                 ),
                    //                 children: [
                    //                   const Text(
                    //                     "ايلاف صالح",
                    //                     textAlign: TextAlign.center,
                    //                     style: TextStyle(
                    //                         fontSize: 16,
                    //                         color: Colors.black,
                    //                         fontWeight: FontWeight.w600),
                    //                   ),
                    //                   Row(
                    //                     mainAxisAlignment:
                    //                         MainAxisAlignment.center,
                    //                     children: [
                    //                       ...List.generate(
                    //                           5,
                    //                           (index) => const Icon(
                    //                                 Icons.star_rounded,
                    //                                 color: Colors.amber,
                    //                               ))
                    //                     ],
                    //                   )
                    //                 ]),
                    //           ],
                    //         ),
                    //       ),
                    //       const SizedBox(height: 20)
                    //     ],
                    //   ),
                    // ),
                    // Center(
                    //   child: Container(
                    //     margin: const EdgeInsets.only(top: 20, bottom: 5),
                    //     height: 4,
                    //     width: MediaQuery.of(context).size.width / 1.5,
                    //     decoration:
                    //         const BoxDecoration(color: Color(0xff9E9595)),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
