import 'package:flutter/material.dart';
import 'package:teacher_rating/core/constant/colors.dart';

class CustomAuthInput extends StatelessWidget {
  const CustomAuthInput({
    Key? key,
    required this.text,
    required this.abscuer,
    this.suffixIcon,
    required this.textInputType,
    required this.textAlign,
    this.prefixIcon,
    this.inputLins,
    this.inputHieght,
    this.myController,
    required this.validFiled,
  }) : super(key: key);

  final String text;
  final bool abscuer;
  final Widget? suffixIcon;
  final TextInputType textInputType;
  final TextAlign textAlign;
  final Widget? prefixIcon;
  final int? inputLins;
  final double? inputHieght;
  final TextEditingController? myController;
  final String? Function(String?) validFiled;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: inputHieght ?? 50,
      child: TextFormField(
        controller: myController,
        validator: validFiled,
        textAlignVertical: TextAlignVertical.bottom,
        textAlign: textAlign,
        obscureText: abscuer,
        keyboardType: textInputType,
        cursorHeight: 20,
        maxLines: inputLins ?? 1,
        decoration: InputDecoration(
          hintText: text,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
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
