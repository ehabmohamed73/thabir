import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:teacher_rating/core/constant/colors.dart';
import 'package:teacher_rating/view/widget/shared/bottm_nav_bar.dart';

class StudentRate extends StatelessWidget {
  const StudentRate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('تقيم الطلاب'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(181, 41, 148, 178),
      ),
      bottomNavigationBar: BottmNavBar(),
      body: Directionality(
          textDirection: TextDirection.rtl,
          child: Stack(
            children: [
              Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(top: 100, right: 10, left: 10),
                  decoration: BoxDecoration(
                      color: Color(0xD82994B2),
                      border: Border.all(
                          color: Color(0x602994B2),
                          width: 6,
                          strokeAlign: BorderSide.strokeAlignOutside),
                      borderRadius: BorderRadius.circular(20)),
                  child: Container(
                    margin: EdgeInsets.only(top: 60, right: 10),
                    child: ListView(
                      children: [
                        Text(
                          "اختار الطالب",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                        DropdownButtonFormField(
                          elevation: 0,
                          isDense: true,
                          alignment: Alignment.centerRight,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide:
                                      BorderSide(color: AppColor.primary))),
                          items: const [
                            DropdownMenuItem(
                              alignment: Alignment.centerRight,
                              enabled: true,
                              value: 'Option 1',
                              child: Text('احمد خالد'),
                            ),
                            DropdownMenuItem(
                              alignment: Alignment.centerRight,
                              value: 'Option 2',
                              child: Text('ايلاف صالح'),
                            ),
                            DropdownMenuItem(
                              alignment: Alignment.centerRight,
                              value: 'Option 3',
                              child: Text('ردينا محمد'),
                            ),
                          ],
                          onChanged: (value) {},
                        ),
                        SizedBox(height: 110),
                        Text(
                          " التقيم :",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                        Container(
                          height: 50,
                          decoration: BoxDecoration(
                              color: Color(0xffB6EDFF),
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              ...List.generate(
                                  3,
                                  (index) => Image.asset(
                                        "assets/star1.png",
                                        width: 50,
                                      )),
                              ...List.generate(
                                  2,
                                  (index) => Image.asset(
                                        "assets/star.png",
                                        // height: 30,
                                        scale: 0.6,
                                      )),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
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
                          maxLines: 3,
                          initialValue:
                              '\nدراسة جدول الضرب(4,7,9)\nابني لدية مشكلة',
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            prefixIcon: Icon(
                              Icons.note_alt_outlined,
                              color: Colors.black,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: Color(0xffB6EDFF), width: 3),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: Color(0xffB6EDFF), width: 3),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 80, vertical: 20),
                          decoration: BoxDecoration(
                              color: Color(0xDA2994B2),
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  color: Color(0xffB6EDFF), width: 3)),
                          child: MaterialButton(
                            onPressed: () {},
                            child: Row(
                              // mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
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
                  )),
              Positioned(
                  top: 60,
                  right: 150,
                  child: Text(
                    "سلطان الحزمي",
                    style: TextStyle(fontSize: 18),
                  )),
              Positioned(
                top: 150,
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
