import 'package:flutter/material.dart';
import 'package:teacher_rating/core/constant/colors.dart';

class CustomSearchItems extends StatelessWidget {
  const CustomSearchItems({Key? key, required this.txt}) : super(key: key);
  final String txt;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          border: Border.all(color: AppColor.primary, width: 2),
          borderRadius: BorderRadius.circular(10)),
      child: Text(
        txt,
        style: TextStyle(color: AppColor.primary),
      ),
    );
  }
}
