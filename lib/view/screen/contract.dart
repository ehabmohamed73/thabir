import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:teacher_rating/core/constant/colors.dart';
import 'package:teacher_rating/view/screen/chose_date_time.dart';
import 'package:teacher_rating/view/widget/contract/custom_contract_input.dart';
import 'package:teacher_rating/view/widget/shared/bottm_nav_bar.dart';
import 'package:teacher_rating/view/widget/shared/custom_app_bar.dart';
import 'package:teacher_rating/view/widget/shared/custom_drawer.dart';

// ignore: must_be_immutable
class Contract extends StatelessWidget {
  Contract({Key? key}) : super(key: key);
  GlobalKey<ScaffoldState> scafKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        key: scafKey,
        appBar: CustomAppBar(' العقد', () {
          scafKey.currentState?.openDrawer();
        }),
        bottomNavigationBar: const BottmNavBar(),
        drawer: const CustomDrawer(),
        body: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                  color: const Color(
                    0xff2994B2,
                  ),
                  width: 3)),
          padding: const EdgeInsets.all(15),
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: ListView(children: [
            const Text(
              "الاسم",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
            ),
            const CustomContractInput(text: "روئ كلنتن", enabled: false),
            const SizedBox(height: 10),
            const Text(
              "المادة المراد دراستها",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
            ),
            const CustomContractInput(
              text: "رياضيات-جدول الضرب",
              enabled: false,
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "التاريخ اليوم",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => ChoseDateTime(),
                        ));
                  },
                  icon: const Icon(Icons.calendar_today),
                  label: const Text("التاريخ"),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        const Color.fromARGB(192, 41, 148, 178)),
                    side: MaterialStateProperty.all<BorderSide>(
                      const BorderSide(color: AppColor.primary, width: 4),
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Expanded(
                  flex: 2,
                  child: Text(
                    " السعر",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: SizedBox(
                    width: 100,
                    height: 50,
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          color: Color(0xff28CA1A),
                          fontSize: 17,
                          fontWeight: FontWeight.w600),
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(top: 5),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: AppColor.primary),
                        ),
                        hintText: "300",
                        hintStyle: const TextStyle(
                            color: Color(0xff28CA1A),
                            fontSize: 17,
                            fontWeight: FontWeight.w600),
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 5),
                  child: const Text(
                    "SR",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w600),
                  ),
                )
              ],
            ),
            const SizedBox(height: 10),
            const Text(
              "المكان :",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Checkbox(
                  checkColor: Colors.white,
                  fillColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                    if (states.contains(MaterialState.disabled)) {
                      return Colors.white;
                    }
                    return AppColor.primary;
                  }),
                  value: true,
                  onChanged: (newValue) {},
                ),
                const Text('عن بعد'),
                Checkbox(
                  value: false,
                  onChanged: (newValue) {},
                ),
                const Text('حظوري'),
              ],
            ),
            const SizedBox(height: 10),
            const Text(
              "ملاحظة : ",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
            ),
            TextFormField(
              dragStartBehavior: DragStartBehavior.down,
              textAlign: TextAlign.center,
              textAlignVertical: TextAlignVertical.center,
              maxLines: 3,
              initialValue: '\nدراسة جدول الضرب(4,7,9)\nابني لدية مشكلة',
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.note_alt_outlined,
                  color: AppColor.primary,
                ),
                enabled: false,
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Color(0xffB6EDFF),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: 50,
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.cancel,
                      color: Colors.red[400],
                    ),
                    label: const Text("رفض الطلب"),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          const Color.fromARGB(183, 41, 148, 178)),
                      side: MaterialStateProperty.all<BorderSide>(
                        const BorderSide(color: Color(0xffB6EDFF), width: 4),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.check_box,
                      color: Colors.green,
                    ),
                    label: const Text("قبول الطلب"),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          const Color.fromARGB(183, 41, 148, 178)),
                      side: MaterialStateProperty.all<BorderSide>(
                        const BorderSide(color: Color(0xffB6EDFF), width: 4),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}
