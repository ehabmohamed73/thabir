import 'package:flutter/material.dart';
import 'package:teacher_rating/core/constant/colors.dart';
import 'package:teacher_rating/view/widget/shared/view_pdf.dart';

class RowCertificates extends StatelessWidget {
  const RowCertificates({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 5),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        certificateButton(context),
        certificateButton(context),
        certificateButton(context),
      ]),
    );
  }

  Widget certificateButton(BuildContext context) {
    return MaterialButton(
      color: AppColor.seconed,
      elevation: 0,
      height: 40,
      minWidth: 30,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: const BorderSide(
              color: AppColor.primary,
              width: 2,
              strokeAlign: BorderSide.strokeAlignOutside)),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return ViewPdf();
          },
        ));
      },
      child: const Icon(
        Icons.picture_as_pdf,
        color: Colors.white,
        size: 20,
      ),
    );
  }
}
