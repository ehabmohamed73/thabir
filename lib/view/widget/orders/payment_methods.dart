import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PaymentMethods extends StatelessWidget {
  const PaymentMethods({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Column(
        children: [
          Center(
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              InkWell(
                child: Image.asset(
                  "assets/pay.png",
                  fit: BoxFit.fill,
                  width: 70,
                ),
                onTap: () {},
              ),
              SizedBox(width: 30),
              InkWell(
                child: SvgPicture.asset("assets/mada.svg", width: 80),
                onTap: () {},
              )
            ]),
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                child: SvgPicture.asset(
                  "assets/alragihi.svg",
                  width: 40,
                ),
                onTap: () {},
              ),
              InkWell(
                child: SvgPicture.asset(
                  "assets/ahli.svg",
                  width: 40,
                ),
                onTap: () {},
              ),
              InkWell(
                child: SvgPicture.asset(
                  "assets/raid.svg",
                  width: 40,
                ),
                onTap: () {},
              ),
              InkWell(
                child: SvgPicture.asset(
                  "assets/anima.svg",
                  width: 40,
                ),
                onTap: () {},
              ),
              InkWell(
                child: SvgPicture.asset(
                  "assets/algazira.svg",
                  width: 40,
                ),
                onTap: () {},
              ),
            ],
          ),
          SizedBox(height: 10),
          Center(
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              InkWell(
                child: Image.asset(
                  "assets/visa.png",
                  fit: BoxFit.fill,
                  width: 40,
                ),
                onTap: () {},
              ),
              SizedBox(width: 20),
              InkWell(
                child: Row(children: [
                  Text(
                    "masterCard",
                    style: TextStyle(fontSize: 11),
                  ),
                  Image.asset(
                    "assets/mastercard.png",
                    fit: BoxFit.fill,
                    width: 30,
                  ),
                ]),
                onTap: () {},
              )
            ]),
          ),
        ],
      ),
    );
  }
}
