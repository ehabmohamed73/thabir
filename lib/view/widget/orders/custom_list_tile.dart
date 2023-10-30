import 'package:flutter/material.dart';
import 'package:teacher_rating/core/constant/colors.dart';
import 'package:teacher_rating/view/screen/contract.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile(
      {Key? key, required this.ordrTitle, required this.orderSubTitle})
      : super(key: key);
  final String ordrTitle, orderSubTitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xffB6EDFF),
          border: Border.all(color: const Color(0xff2994B2), width: 3),
          borderRadius: BorderRadius.circular(20)),
      child: ListTile(
        isThreeLine: true,
        contentPadding: const EdgeInsets.all(10),
        title: Text(ordrTitle),
        subtitle: Text(orderSubTitle),
        trailing: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                flex: 1,
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  minWidth: 20,
                  color: AppColor.primary,
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => Contract(),
                      ),
                    );
                  },
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("عرض"),
                      Icon(
                        Icons.check,
                        color: Colors.green,
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 3),
              Expanded(
                flex: 1,
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  color: AppColor.primary,
                  textColor: Colors.white,
                  onPressed: () {},
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("حذف"),
                      Icon(
                        Icons.cancel_sharp,
                        color: Colors.red,
                      )
                    ],
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
