import 'package:flutter/material.dart';
import 'package:trades_website/core/consts.dart';
import 'package:trades_website/screens/main_screens/home/home_design/footer_design.dart';

import '../home/home_design/top_header_design.dart';
import 'trade_clan_design/clan_features_design.dart';
import 'trade_clan_design/how_to_create_clan_design.dart';
import 'trade_clan_design/tabs_design.dart';
import 'trade_clan_design/trade_clan_design.dart';

class TraderClanScreen extends StatefulWidget {
  const TraderClanScreen({Key? key}) : super(key: key);

  @override
  State<TraderClanScreen> createState() => _TraderClanScreenState();
}

class _TraderClanScreenState extends State<TraderClanScreen> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: mainBgColorTwo,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              //header one...
              TopHeaderDesign(
                isBlue: true,
                lineColor: blackColor,
                selectedScreenOneIndex: 1,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 80),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    TradeClanDesign(),
                    Row(
                      children: <Widget>[
                        HowToCreateClanDesign(),
                        Expanded(
                          child: ClanFeaturesDesign(),
                        ),
                      ],
                    ),

                    //tabs design...
                    TabsDesign(),
                    SizedBox(height: 110),
                  ],
                ),
              ),

              //bottom...
              FooterDesign(),
            ],
          ),
        ),
      ),
    );
  }
}
