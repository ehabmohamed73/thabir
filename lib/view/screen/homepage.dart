import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teacher_rating/controller/home_controller.dart';
import 'package:teacher_rating/core/constant/appRoots.dart';
import 'package:teacher_rating/view/screen/teacher_rate.dart';
import 'package:teacher_rating/view/widget/shared/bottm_nav_bar.dart';
import 'package:teacher_rating/view/widget/shared/custom_app_bar.dart';
import 'package:teacher_rating/view/widget/shared/custom_drawer.dart';
import 'package:teacher_rating/view/widget/shared/search_input.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  GlobalKey<ScaffoldState> scafKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          key: scafKey,
          appBar: CustomAppBar(' الصفحة الرئسية', () {
            scafKey.currentState?.openDrawer();
          }),
          drawer: const CustomDrawer(),
          bottomNavigationBar: const BottmNavBar(),
          body: Directionality(
            textDirection: TextDirection.rtl,
            child: Container(
              padding: const EdgeInsets.all(8),
              child: ListView(children: [
                const SizedBox(height: 15),
                SearchInput(
                  onTap: () {
                    Get.toNamed(AppRoots.search);
                  },
                  onChanged: (p0) {},
                ),
                const SizedBox(height: 15),
                Container(
                  padding:
                      const EdgeInsets.only(bottom: 10, left: 10, right: 10),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 144, 214, 247),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: const Text(
                          "الاعلى تقيماً",
                          style: TextStyle(
                              fontSize: 20,
                              color: Color(0xFF094250),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Expanded(
                              flex: 1,
                              child: Icon(
                                Icons.arrow_back_ios_outlined,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(width: 5),
                            Expanded(
                              flex: 15,
                              child: SizedBox(
                                height: 120,
                                child: CarouselSlider(
                                  items: homeController.images.map((imageUrl) {
                                    return Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: const Color.fromARGB(
                                                255, 41, 148, 178),
                                            width: 3),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      margin: const EdgeInsets.all(5.0),
                                      child: ClipRRect(
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(20)),
                                        child: Image.asset(
                                          imageUrl,
                                          fit: BoxFit.cover,
                                          width: 120,
                                        ),
                                      ),
                                    );
                                  }).toList(),
                                  options: CarouselOptions(
                                    viewportFraction: 0.4,
                                    // aspectRatio: 16 / 9,
                                    enlargeCenterPage: true,
                                    enlargeFactor: 0.5,
                                    onPageChanged: (index, reson) {
                                      homeController.carouselChange(index);
                                    },
                                  ),
                                ),
                              ),
                            ),
                            const Expanded(
                              flex: 1,
                              child: Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Center(
                        child: Container(
                          margin: const EdgeInsets.only(top: 20, bottom: 5),
                          height: 4,
                          width: MediaQuery.of(context).size.width / 1.5,
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 41, 148, 178)),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: const Text(
                          "تقيم المعلم",
                          style: TextStyle(
                              fontSize: 20,
                              color: Color(0xFF094250),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Expanded(
                              flex: 1,
                              child: Icon(
                                Icons.arrow_back_ios_outlined,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(width: 5),
                            Expanded(
                              flex: 15,
                              child: SizedBox(
                                height: 120,
                                child: CarouselSlider(
                                  items: homeController.images.map((imageUrl) {
                                    return InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute<void>(
                                            builder: (BuildContext context) =>
                                                const TeacherRate(),
                                          ),
                                        );
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: const Color.fromARGB(
                                                  255, 41, 148, 178),
                                              width: 3),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        margin: const EdgeInsets.all(5.0),
                                        child: ClipRRect(
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(20)),
                                          child: Image.asset(
                                            imageUrl,
                                            fit: BoxFit.cover,
                                            width: 120,
                                          ),
                                        ),
                                      ),
                                    );
                                  }).toList(),
                                  options: CarouselOptions(
                                    viewportFraction: 0.4,
                                    // aspectRatio: 16 / 9,
                                    enlargeCenterPage: true,
                                    enlargeFactor: 0.5,
                                    onPageChanged: (index, reson) {
                                      homeController.carouselChange(index);
                                    },
                                  ),
                                ),
                              ),
                            ),
                            const Expanded(
                              flex: 1,
                              child: Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Center(
                        child: Container(
                          margin: const EdgeInsets.only(top: 20, bottom: 20),
                          height: 4,
                          width: MediaQuery.of(context).size.width / 1.5,
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 41, 148, 178)),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        padding: const EdgeInsets.only(bottom: 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromRGBO(40, 148, 177, 1)),
                        child: Column(
                          children: [
                            const Center(
                                child: Text(
                              "تقيمي",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )),
                            Container(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 5),
                              child: Table(
                                border: TableBorder.all(color: Colors.white),
                                children: [
                                  const TableRow(
                                      decoration: BoxDecoration(
                                          color:
                                              Color.fromRGBO(177, 215, 224, 1),
                                          shape: BoxShape.rectangle),
                                      children: [
                                        Text(
                                          "المعلم",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 17,
                                              color: Color.fromRGBO(
                                                  55, 89, 114, 1),
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "التقيم",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 17,
                                              color: Color.fromRGBO(
                                                  55, 89, 114, 1),
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ]),
                                  TableRow(
                                      decoration: const BoxDecoration(
                                        color: Color.fromRGBO(177, 215, 224, 1),
                                      ),
                                      children: [
                                        const Text(
                                          "سلطان الحزمي",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 17,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            ...List.generate(
                                                5,
                                                (index) => const Icon(
                                                      Icons.star_rounded,
                                                      color: Colors.amber,
                                                    ))
                                          ],
                                        )
                                      ]),
                                  TableRow(
                                      decoration: const BoxDecoration(
                                        color: Color.fromRGBO(177, 215, 224, 1),
                                      ),
                                      children: [
                                        const Text(
                                          " خالد عمر",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 17,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            ...List.generate(
                                                5,
                                                (index) => const Icon(
                                                      Icons.star_rounded,
                                                      color: Colors.amber,
                                                    ))
                                          ],
                                        )
                                      ]),
                                  TableRow(
                                      decoration: const BoxDecoration(
                                        color: Color.fromRGBO(177, 215, 224, 1),
                                      ),
                                      children: [
                                        const Text(
                                          " سعود الاحمدي",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 17,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            ...List.generate(
                                                5,
                                                (index) => const Icon(
                                                      Icons.star_rounded,
                                                      color: Colors.amber,
                                                    ))
                                          ],
                                        )
                                      ]),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ]),
            ),
          ),
        ));
  }
}
