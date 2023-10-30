import 'package:flutter/material.dart';
import 'package:teacher_rating/core/constant/colors.dart';

class CustomBtnAuth extends StatelessWidget {
  const CustomBtnAuth(
      {Key? key,
      required this.onPressed,
      required this.btnText,
      required this.iconData})
      : super(key: key);
  final void Function() onPressed;
  final String btnText;
  final IconData iconData;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: MaterialButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
            side: const BorderSide(color: AppColor.primary, width: 3)),
        color: const Color(0xA02994B2),
        textColor: Colors.white,
        onPressed: onPressed,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(btnText),
            const SizedBox(width: 20),
            Icon(
              iconData,
              color: AppColor.primary,
              size: 30,
            )
          ],
        ),
      ),
    );
  }
}
