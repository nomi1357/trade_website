import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trades_website/core/button_widget.dart';
import 'package:trades_website/core/consts.dart';

import '../trade_clan_widget.dart';

class ClanFeaturesDesign extends StatelessWidget {
  const ClanFeaturesDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 424,
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: mainBgColorTwo,
        borderRadius: BorderRadius.circular(4),
        border: Border.all(
          color: const Color(0xFF333D4E),
          width: 1,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            "Clan Features & Advantages",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: whiteColor,
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 29),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
                  children: <Widget>[
                    const ClanColumnWidget(
                      title: "Dedicated Trollbox",
                      subTitle:
                      "Each Guild has it’s own, private trollbox - share intel & strategize in secret!",
                    ),
                    const ClanColumnWidget(
                      title: "Dedicated Support Team",
                      subTitle:
                      "Each team has their own support team with direct contact on messenger",
                    ),
                    const ClanColumnWidget(
                      title: "Share 20% of the fees",
                      subTitle:
                      "20% of the feesis given for redistribution among guild members - rules are set by the admins",
                    ),
                    ButtonWidget(
                      text: "Learn More",
                      height: 40,
                      width: 107,
                      btnColor: Colors.transparent,
                      borderColor:
                      const Color(0xFFFAFAFA),
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      textColor: whiteColor,
                      borderRadius: 4,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 30),
              Expanded(
                child: Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
                  children: <Widget>[
                    const ClanColumnWidget(
                      title: "Up to 1,000+ traders",
                      subTitle:
                      "The more traders, the more volume, the more fees and rewards to share",
                    ),
                    const ClanColumnWidget(
                      title: "Stream your trades",
                      subTitle:
                      "Read Only order & position to guild member to share intel and strategy in",
                    ),
                    const ClanColumnWidget(
                      title: "Immediate intel",
                      subTitle:
                      "You can see streaming orders & positions of your guild to catch potential trends and strategies fast",
                    ),
                  ],
                ),
              ),
            ],
          ),


        ],
      ),
    );
  }
}
