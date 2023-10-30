import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teacher_rating/core/constant/appRoots.dart';
import 'package:teacher_rating/core/constant/colors.dart';
import 'package:teacher_rating/view/widget/shared/customSearchItems.dart';

class CustomSearch extends StatelessWidget {
  const CustomSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ابحث هنا'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: ListView(
          children: [
            Container(
              height: 50,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: const BorderSide(color: AppColor.primary),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: const BorderSide(color: AppColor.primary),
                    ),
                    filled: true,
                    fillColor: const Color.fromARGB(106, 41, 148, 178),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: const BorderSide(color: AppColor.primary),
                    ),
                    hintStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                    ),
                    suffixIcon: const Icon(
                      Icons.cancel,
                      color: Colors.lightBlueAccent,
                    ),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.white,
                    )),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomSearchItems(txt: "السعر"),
                CustomSearchItems(txt: "التخصص"),
                CustomSearchItems(txt: "الاسم"),
                CustomSearchItems(txt: "ID"),
              ],
            ),
            ...List.generate(1, (int index) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                    color: const Color(0xffB6EDFF),
                    border: Border.all(color: AppColor.primary, width: 3),
                    borderRadius: BorderRadius.circular(20)),
                child: ListTile(
                  title: Column(children: [
                    const Text("خالد عمر "),
                    const Text("ID : 121"),
                    Center(
                      child: Container(
                        margin: const EdgeInsets.only(top: 3, bottom: 2),
                        height: 4,
                        width: MediaQuery.of(context).size.width / 2,
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 41, 148, 178)),
                      ),
                    ),
                  ]),
                  subtitle: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(" بكالوريوس لغة عربية"),
                      ]),
                  leading: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: AppColor.primary, width: 3),
                          borderRadius: BorderRadius.circular(10)),
                      child: Image.asset("assets/t5.jpg")),
                  trailing: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Expanded(
                          flex: 1,
                          child: MaterialButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            color: AppColor.primary,
                            textColor: Colors.white,
                            onPressed: () {
                              Get.toNamed(AppRoots.teachrPro);
                            },
                            child: const Text("عرض الملف "),
                          ),
                        ),
                        const SizedBox(height: 3),
                        Expanded(
                          flex: 1,
                          child: MaterialButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            color: AppColor.primary,
                            textColor: Colors.white,
                            onPressed: () {
                              Get.toNamed(AppRoots.contract);
                            },
                            child: const Text("طلب المعلم"),
                          ),
                        ),
                      ]),
                  onTap: () {},
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
