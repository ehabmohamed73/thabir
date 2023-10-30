import 'package:flutter/material.dart';
import 'package:teacher_rating/view/widget/orders/ratingListtile.dart';
import 'package:teacher_rating/view/widget/shared/custom_app_bar.dart';

class TeacherRating extends StatelessWidget {
  const TeacherRating({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: CustomAppBar(' تقيمي', () {}),
        body: Container(
          padding: const EdgeInsets.all(10),
          child: ListView(children: const [
            SizedBox(height: 10),
            RatingCustomListTile(ordrTitle: "ايلاف صالح", starNum: 3),
            SizedBox(height: 10),
            RatingCustomListTile(ordrTitle: "احمد خالد", starNum: 4),
            SizedBox(height: 10),
            RatingCustomListTile(ordrTitle: "ايلاف صالح", starNum: 5),
          ]),
        ),
      ),
    );
  }
}
