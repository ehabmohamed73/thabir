import 'package:flutter/material.dart';
import 'package:teacher_rating/core/constant/colors.dart';

class OrderNavButton extends StatelessWidget {
  const OrderNavButton({Key? key, required this.btnText}) : super(key: key);
  final String btnText;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: AppColor.primary,
      textColor: Colors.white,
      onPressed: () {},
      child: Text(btnText),
    );
  }
}
