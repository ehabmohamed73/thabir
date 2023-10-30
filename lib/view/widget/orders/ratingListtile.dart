import 'package:flutter/material.dart';

class RatingCustomListTile extends StatelessWidget {
  const RatingCustomListTile(
      {Key? key, required this.ordrTitle, required this.starNum})
      : super(key: key);
  final String ordrTitle;
  final int starNum;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xffB6EDFF),
          border: Border.all(color: Color(0xff2994B2), width: 3),
          borderRadius: BorderRadius.circular(20)),
      child: ListTile(
        isThreeLine: true,
        contentPadding: const EdgeInsets.all(10),
        title: Text(ordrTitle),
        subtitle: Container(
          height: 50,
          decoration: BoxDecoration(
              color: const Color(0xffB6EDFF),
              borderRadius: BorderRadius.circular(20)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(
                  starNum,
                  (index) => Image.asset(
                        "assets/star.png",
                        width: 50,
                      ))
            ],
          ),
        ),
      ),
    );
  }
}
