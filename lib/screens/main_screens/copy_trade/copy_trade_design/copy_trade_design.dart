import 'package:flutter/material.dart';
import 'package:trades_website/core/consts.dart';

class CopyTradeDesign extends StatelessWidget {
  const CopyTradeDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      margin: const EdgeInsets.only(top: 35, bottom: 40),
      padding: const EdgeInsets.only(top: 30),
      decoration: BoxDecoration(
        color: blackColor.withOpacity(.20),
        borderRadius: BorderRadius.circular(20),
        image: const DecorationImage(
          image: AssetImage("assets/trade_clan_icons/trade1.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            "Copy Trading",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: whiteColor,
              fontSize: 44,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 8),
          Text(
            "Follow the world's top crypto traders and copy their trades with one click",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Color(0xFFCBD0D7),
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
