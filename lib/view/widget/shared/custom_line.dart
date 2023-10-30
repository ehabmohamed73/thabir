import 'package:flutter/material.dart';

class CustomLine extends StatelessWidget {
  const CustomLine(
      {Key? key,
      required this.lineColor,
      required this.divWith,
      required this.height,
      this.marginTop,
      this.marginBottom})
      : super(key: key);
  final Color lineColor;
  final double divWith;
  final double height;
  final double? marginTop, marginBottom;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin:
            EdgeInsets.only(top: marginTop ?? 20, bottom: marginBottom ?? 5),
        height: height,
        width: MediaQuery.of(context).size.width / divWith,
        decoration: BoxDecoration(color: lineColor),
      ),
    );
  }
}
