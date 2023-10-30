import 'package:flutter/material.dart';
import 'package:teacher_rating/core/constant/colors.dart';
import 'package:teacher_rating/view/widget/shared/custom_line.dart';

class CustomAuthTable extends StatelessWidget {
  const CustomAuthTable(
      {Key? key, this.decController, this.dateController, this.nameControlller})
      : super(key: key);
  final TextEditingController? decController, dateController, nameControlller;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
          border: Border.all(color: AppColor.primary, width: 2),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "الوصف",
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              Text(
                "التاريخ",
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              Text(
                "اسم الملف",
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
            ],
          ),
          const CustomLine(
            lineColor: Color(0xff9E9595),
            divWith: 1,
            height: 3,
            marginTop: 2,
            marginBottom: 0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: 100,
                child: TextFormField(
                  controller: decController,
                  decoration: const InputDecoration(border: InputBorder.none),
                  keyboardType: TextInputType.multiline,
                  maxLines: 5,
                  minLines: 2,
                  initialValue: "شهادة الذكاء الاصطناعي في الرياضيات ",
                ),
              ),
              SizedBox(
                width: 100,
                child: TextFormField(
                  controller: dateController,
                  decoration: const InputDecoration(border: InputBorder.none),
                  keyboardType: TextInputType.datetime,
                  initialValue: "١٤٤٤/٣/٣",
                ),
              ),
              SizedBox(
                width: 100,
                child: TextFormField(
                  controller: nameControlller,
                  minLines: 1,
                  maxLines: 3,
                  style: const TextStyle(fontSize: 15),
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                  ),
                  keyboardType: TextInputType.datetime,
                  initialValue: "الذكاء الاصطناعي",
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
