import 'package:flutter/material.dart';
import 'package:teacher_rating/core/constant/colors.dart';

class CustomChoseBtn extends StatelessWidget {
  const CustomChoseBtn(
      {Key? key, required this.btnChiled, required this.btnWidth})
      : super(key: key);
  final Widget btnChiled;
  final double btnWidth;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: btnWidth,
      height: 50,
      decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
                color: Color.fromARGB(123, 0, 0, 0),
                offset: Offset(0, 5),
                blurRadius: 2,
                blurStyle: BlurStyle.normal)
          ],
          color: Colors.white,
          border: Border.all(color: AppColor.primary, width: 2),
          borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: btnChiled,
      ),
    );
  }
}
