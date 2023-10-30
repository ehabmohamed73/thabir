import 'package:flutter/material.dart';
import 'package:teacher_rating/core/constant/colors.dart';

class CustomContractInput extends StatelessWidget {
  const CustomContractInput(
      {Key? key, required this.text, required this.enabled})
      : super(key: key);
  final String text;
  final bool enabled;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextField(
        decoration: InputDecoration(
          hintText: text,
          enabled: enabled,
          disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: AppColor.primary)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: AppColor.primary)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: AppColor.primary)),
        ),
      ),
    );
  }
}
