import 'package:flutter/material.dart';
import 'package:teacher_rating/core/constant/colors.dart';
import 'package:teacher_rating/view/widget/orders/btn_show.dart';

class CustomStudentTile extends StatelessWidget {
  const CustomStudentTile(
      {Key? key,
      required this.ordrTitle,
      required this.orderId,
      required this.orderDate,
      required this.orderSubTitle,
      required this.onPress,
      required this.path})
      : super(key: key);
  final String ordrTitle, orderId, orderDate, orderSubTitle, path;
  final void Function() onPress;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xffB6EDFF),
          border: Border.all(color: AppColor.primary, width: 3),
          borderRadius: BorderRadius.circular(20)),
      child: ListTile(
        isThreeLine: true,
        contentPadding: const EdgeInsets.all(10),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.min,
          children: [Text(ordrTitle), Text(orderId)],
        ),
        subtitle: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              orderSubTitle,
              style: TextStyle(color: Colors.green[400], fontSize: 14),
            ),
            Text(
              orderDate,
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
          ],
        ),
        trailing: SizedBox(
            height: 50,
            child: BtnShow(
              btnText: "عرض",
              onPress: onPress,
            )),
        leading: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: AppColor.primary, width: 3)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              path,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
