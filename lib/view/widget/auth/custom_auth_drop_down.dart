import 'package:flutter/material.dart';
import 'package:teacher_rating/core/constant/colors.dart';

class CustomAuthDropDown extends StatelessWidget {
  const CustomAuthDropDown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      icon: Icon(Icons.arrow_drop_down_circle),
      elevation: 0,
      isDense: true,
      alignment: Alignment.centerRight,
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: AppColor.primary))),
      items: const [
        DropdownMenuItem(
          value: "1",
          alignment: Alignment.centerRight,
          enabled: true,
          child: Text('ثانوي'),
        ),
        DropdownMenuItem(
          value: "2",
          alignment: Alignment.centerRight,
          child: Text('درجة دبلوم'),
        ),
        DropdownMenuItem(
          value: "3",
          alignment: Alignment.centerRight,
          child: Text('درجة الباكالوريوس'),
        ),
      ],
      onChanged: (value) {},
    );
  }
}
