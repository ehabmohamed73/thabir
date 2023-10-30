import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:teacher_rating/core/constant/colors.dart';
import 'package:teacher_rating/controller/datatime_controller.dart';
import 'package:teacher_rating/view/widget/shared/bottm_nav_bar.dart';
import 'package:teacher_rating/view/widget/shared/custom_app_bar.dart';

// ignore: must_be_immutable
class ChoseDateTime extends StatelessWidget {
  ChoseDateTime({Key? key}) : super(key: key);
  DataTimeController controller = Get.put(DataTimeController());
  GlobalKey<ScaffoldState> scafKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        key: scafKey,
        appBar: CustomAppBar(' اختيار التاريخ', () {
          scafKey.currentState?.openDrawer();
        }),
        bottomNavigationBar: const BottmNavBar(),
        body: Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 40),
          decoration: BoxDecoration(
              border: Border.all(color: AppColor.primary),
              borderRadius: BorderRadius.circular(20),
              color: AppColor.seconed),
          child: Column(
            children: [
              const Center(
                child: Text(" اختار الوقت و التاريخ",
                    style: TextStyle(
                        color: AppColor.primary,
                        fontSize: 20,
                        fontWeight: FontWeight.w900)),
              ),
              GetBuilder<DataTimeController>(builder: (controller) {
                return TableCalendar(
                  selectedDayPredicate: (day) =>
                      isSameDay(day, controller.today),
                  onDaySelected: (selectedDay, focusedDay) {
                    controller.selectedDay(selectedDay, focusedDay);
                  },
                  locale: 'en_us',
                  focusedDay: controller.today!,
                  rowHeight: 40,
                  daysOfWeekStyle: const DaysOfWeekStyle(
                      weekendStyle: TextStyle(
                          color: AppColor.primary,
                          fontSize: 17,
                          overflow: TextOverflow.visible),
                      weekdayStyle: TextStyle(
                          color: AppColor.primary,
                          fontSize: 17,
                          overflow: TextOverflow.visible)),
                  firstDay: DateTime.utc(2010, 10, 16),
                  lastDay: DateTime.utc(2050, 3, 14),
                  headerStyle: const HeaderStyle(
                      formatButtonVisible: false, titleCentered: true),
                  availableGestures: AvailableGestures.all,
                );
              }),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                              fillColor:
                                  MaterialStateProperty.resolveWith<Color>(
                                      (Set<MaterialState> states) {
                                if (states.contains(MaterialState.disabled)) {
                                  return Colors.white;
                                }
                                return Color(0xff33CDF8);
                              }),
                              shape: BeveledRectangleBorder(
                                  borderRadius: BorderRadius.circular(2),
                                  side: BorderSide(
                                      color: AppColor.primary, width: 0.6)),
                              value: false,
                              onChanged: (value) {},
                            ),
                            Text(
                              "متوفر",
                              style: TextStyle(
                                  color: AppColor.primary,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                              fillColor:
                                  MaterialStateProperty.resolveWith<Color>(
                                      (Set<MaterialState> states) {
                                if (states.contains(MaterialState.disabled)) {
                                  return Colors.white;
                                }
                                return Colors.white;
                              }),
                              shape: BeveledRectangleBorder(
                                  borderRadius: BorderRadius.circular(2),
                                  side: BorderSide(
                                      color: AppColor.seconed, width: 0.6)),
                              value: false,
                              onChanged: (value) {},
                            ),
                            Text(
                              "غير متوفر",
                              style: TextStyle(
                                  color: AppColor.primary,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Checkbox(
                              fillColor:
                                  MaterialStateProperty.resolveWith<Color>(
                                      (Set<MaterialState> states) {
                                if (states.contains(MaterialState.disabled)) {
                                  return Colors.white;
                                }
                                return Colors.transparent;
                              }),
                              shape: BeveledRectangleBorder(
                                  borderRadius: BorderRadius.circular(2),
                                  side: BorderSide(
                                      color: AppColor.primary, width: 0.6)),
                              value: false,
                              onChanged: (value) {},
                            ),
                            Text("صباح")
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                              fillColor:
                                  MaterialStateProperty.resolveWith<Color>(
                                      (Set<MaterialState> states) {
                                if (states.contains(MaterialState.disabled)) {
                                  return Colors.white;
                                }
                                return Colors.green;
                              }),
                              shape: BeveledRectangleBorder(
                                  borderRadius: BorderRadius.circular(2),
                                  side: BorderSide(
                                      color: AppColor.seconed, width: 0.6)),
                              value: true,
                              onChanged: (value) {},
                            ),
                            Text("مساء")
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 70),
                decoration: BoxDecoration(
                    color: Color.fromARGB(143, 41, 148, 178),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: AppColor.primary, width: 3)),
                child: MaterialButton(
                  onPressed: () {},
                  child: Row(
                    // mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "تاكيد",
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                      Icon(
                        Icons.check_box_rounded,
                        size: 30,
                        color: Colors.green[700],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
