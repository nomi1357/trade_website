import 'package:flutter/material.dart';
import 'package:trades_website/core/button_widget.dart';
import 'package:trades_website/core/consts.dart';

class JoinTraderDesign extends StatelessWidget {
  const JoinTraderDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 227,
      width: double.infinity,
      margin: const EdgeInsets.only(top: 80, bottom: 110),
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        color: blackColor.withOpacity(.20),
        borderRadius: BorderRadius.circular(20),
        image: const DecorationImage(
          image:
          AssetImage("assets/app_images/trade.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Text(
              "Join Traders",
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
              "Follow the world's top crypto traders and copy their trades with one click",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFFCBD0D7),
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ButtonWidget(
                  text: "Log In",
                  height: 40,
                  width: 83,
                  btnColor: Colors.transparent,
                  borderColor: const Color(0xFFFAFAFA),
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  textColor: whiteColor,
                  borderRadius: 4,
                  onPressed: () {},
                ),
                const SizedBox(width: 10),
                ButtonWidget(
                  text: "Create account",
                  height: 40,
                  width: 156,
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
