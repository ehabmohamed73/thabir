import 'package:flutter/material.dart';
import 'package:teacher_rating/core/constant/colors.dart';

class BtnShow extends StatelessWidget {
  const BtnShow({Key? key, required this.btnText, required this.onPress})
      : super(key: key);
  final String btnText;
  final void Function() onPress;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          side: const BorderSide(color: AppColor.primary, width: 3)),
      color: const Color(0xBC2994B2),
      textColor: Colors.white,
      onPressed: onPress,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(btnText),
          const Icon(
            Icons.check,
            color: Colors.green,
          )
        ],
      ),
    );
  }
}
