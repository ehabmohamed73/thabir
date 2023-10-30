import 'package:flutter/material.dart';

class CustomTextAuth extends StatelessWidget {
  const CustomTextAuth({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.start,
      text,
      style: const TextStyle(
          fontSize: 15, fontWeight: FontWeight.w700, color: Colors.black),
    );
  }
}
