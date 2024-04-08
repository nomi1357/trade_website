import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trades_website/core/button_widget.dart';
import 'package:trades_website/core/consts.dart';

import '../trade_clan_widget.dart';

class TradeClanDesign extends StatelessWidget {
  const TradeClanDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
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
              "Trades Clans",
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
              "Trade in pack & optimize your trading",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
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
                  text: "Create Clan",
                  height: 40,
                  width: 116,
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
                  text: "Check All Clans",
                  height: 40,
                  width: 143,
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
