import 'package:flutter/material.dart';
import 'package:teacher_rating/core/constant/colors.dart';

Widget buildPopupMenuItem(String menuTitle, IconData iconData) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      Text(
        menuTitle,
        style: const TextStyle(
          color: AppColor.primary,
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      ),
      const SizedBox(width: 8),
      Icon(
        iconData,
        color: AppColor.seconed,
      ),
    ],
  );
}
