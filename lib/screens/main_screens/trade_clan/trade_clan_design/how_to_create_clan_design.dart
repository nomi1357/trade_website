import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trades_website/core/button_widget.dart';
import 'package:trades_website/core/consts.dart';

import '../trade_clan_widget.dart';

class HowToCreateClanDesign extends StatelessWidget {
  const HowToCreateClanDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 424,
      width: 306,
      margin: const EdgeInsets.only(right: 25),
      padding: const EdgeInsets.fromLTRB(20, 28, 20, 28),
      decoration: BoxDecoration(
        color: blueColor.withOpacity(.35),
        image: const DecorationImage(
          image: AssetImage(
              "assets/trade_clan_icons/trade2.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            "How to create a Clan",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: whiteColor,
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 16),
          const ClanColumnWidget(
            title: "Set your own rules",
            subTitle: "and how you distribute rewards",
          ),
          const ClanColumnWidget(
            title: "Invite other traders",
            subTitle:
            "The more TRADERS you stake, the more traders can join your guild",
          ),
          const ClanColumnWidget(
            title: "Collaborate & profit together",
            subTitle:
            "With your private Trollbox and ablility to stream trades strategize with other traders",
          ),
          const SizedBox(height: 10),
          ButtonWidget(
            text: "Create Clan",
            height: 40,
            width: double.infinity,
            btnColor: blueColor,
            borderColor: blueColor,
            fontSize: 14,
            fontWeight: FontWeight.w700,
            textColor: whiteColor,
            borderRadius: 4,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
