import 'package:flutter/material.dart';
import 'package:trades_website/core/button_widget.dart';
import 'package:trades_website/core/consts.dart';


class WhyTraderDesign extends StatelessWidget {
  const WhyTraderDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 227,
      width: double.infinity,
      margin: const EdgeInsets.only(top: 35, bottom: 30),
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        color: blackColor.withOpacity(.20),
        borderRadius: BorderRadius.circular(20),
        image: const DecorationImage(
          image:
          AssetImage("assets/trade_clan_icons/trade1.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Text(
              "Why Choose Traders",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: whiteColor,
                fontSize: 44,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              "Why Choose Traders world of trading, coupled with a commitment to personalized strategies\ntailored to your financial goals. Customer Support Strong Security",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFFCBD0D7),
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 6),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ButtonWidget(
                  text: "Customer Support",
                  height: 40,
                  width: 167,
                  btnColor: blueColor,
                  borderColor: blueColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  textColor: whiteColor,
                  borderRadius: 4,
                  onPressed: () {},
                ),
                const SizedBox(width: 10),
                ButtonWidget(
                  text: "Strong Security",
                  height: 40,
                  width: 149,
                  btnColor: Colors.transparent,
                  borderColor: const Color(0xFFFAFAFA),
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  textColor: const Color(0xFFFAFAFA),
                  borderRadius: 4,
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
