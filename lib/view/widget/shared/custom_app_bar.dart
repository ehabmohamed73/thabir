import 'package:flutter/material.dart';
import 'package:teacher_rating/core/constant/signup_values.dart';
import 'package:teacher_rating/view/screen/orders.dart';
import 'package:teacher_rating/view/screen/student_orders.dart';
import 'package:teacher_rating/view/widget/shared/buildPopupMenuItem.dart';

PreferredSizeWidget CustomAppBar(String txtTitel, void Function()? onTap) {
  return AppBar(
    backgroundColor: const Color(0xFF2994B2),
    title: Text(txtTitel),
    leading: InkWell(
      onTap: onTap,
      child: Container(
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
        ),
        margin: const EdgeInsets.only(right: 10),
        child: const Icon(
          Icons.menu_outlined,
          color: Color(0xFF2994B2),
        ),
      ),
    ),
    actions: [
      PopupMenuButton(
        icon: const Icon(
          Icons.notifications_none_outlined,
          color: Colors.white,
          size: 40,
        ),

        offset: const Offset(0, 57), // تحويل عمودي للقائمة

        itemBuilder: (BuildContext context) {
          return [
            PopupMenuItem(
              child: buildPopupMenuItem('طلب جديد', Icons.note_add_outlined),
              onTap: () {
                if (teacherOrStudent == 1) {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => StudentOrders(),
                    ),
                  );
                } else if (teacherOrStudent == 2) {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => Orders(),
                    ),
                  );
                }
              },
            ),
          ];
        },
      ),
    ],
    centerTitle: true,
  );
}
