import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trades_website/core/button_widget.dart';
import 'package:trades_website/core/consts.dart';

import '../trade_clan_widget.dart';

class TabsDesign extends StatelessWidget {
  const TabsDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 138.64,
      width: double.infinity,
      margin: const EdgeInsets.only(top: 24),
      decoration: BoxDecoration(
        color: mainBgColorTwo,
        borderRadius: BorderRadius.circular(4),
        border: Border.all(
          color: const Color(0xFF333D4E),
          width: 0.73,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 32,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 4),
            decoration: const BoxDecoration(
              color: mainBgColorTwo,
              border: Border(
                bottom: BorderSide(
                  color: Color(0xFF333D4E),
                  width: 0.73,
                ),
              ),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                //tab bar...
                DefaultTabController(
                  length: 2,
                  child: TabBar(
                    isScrollable: true,
                    tabAlignment: TabAlignment.start,
                    dividerColor: Colors.transparent,
                    indicatorSize: TabBarIndicatorSize.tab,
                    labelColor: whiteColor,
                    unselectedLabelColor: textColorOne,
                    labelStyle: TextStyle(
                      fontSize: 12.45,
                      fontWeight: FontWeight.w600,
                    ),
                    unselectedLabelStyle: TextStyle(
                      fontSize: 12.45,
                      fontWeight: FontWeight.w600,
                    ),
                    indicatorColor: whiteColor,
                    tabs: [
                      Tab(
                        text: 'All Guilds Ranking',
                      ),
                      Tab(
                        text: 'Top Traders',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 20.45,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 4),
            decoration: const BoxDecoration(
              color: mainBgColorTwo,
              border: Border(
                bottom: BorderSide(
                  color: blackColor,
                  width: 0.73,
                ),
              ),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                ClanTextWidget(
                  flex: 1,
                  text: "Rank",
                  fontSize: 10.4,
                  fontWeight: FontWeight.w400,
                  textColor: textColorOne,
                ),
                ClanTextWidget(
                  flex: 6,
                  text: "Name",
                  fontSize: 10.4,
                  fontWeight: FontWeight.w400,
                  textColor: textColorOne,
                ),
                ClanTextWidget(
                  flex: 2,
                  text: "Pnl",
                  fontSize: 10.4,
                  fontWeight: FontWeight.w400,
                  textColor: textColorOne,
                ),
                ClanTextWidget(
                  flex: 2,
                  text: "Volume",
                  fontSize: 10.4,
                  fontWeight: FontWeight.w400,
                  textColor: textColorOne,
                ),
                ClanTextWidget(
                  flex: 2,
                  text: "Pot",
                  fontSize: 10.4,
                  fontWeight: FontWeight.w400,
                  textColor: textColorOne,
                ),
                ClanTextWidget(
                  flex: 2,
                  text: "Pot Pnl",
                  fontSize: 10.4,
                  fontWeight: FontWeight.w400,
                  textColor: textColorOne,
                ),
                ClanTextWidget(
                  flex: 2,
                  text: "Members",
                  fontSize: 10.4,
                  fontWeight: FontWeight.w400,
                  textColor: textColorOne,
                ),
                ClanTextWidget(
                  flex: 3,
                  text: "Socials",
                  fontSize: 10.4,
                  fontWeight: FontWeight.w400,
                  textColor: textColorOne,
                ),
                Expanded(
                  flex: 1,
                  child: SizedBox(),
                ),
              ],
            ),
          ),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            primary: false,
            shrinkWrap: true,
            itemCount: 40,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 38,
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 6),
                decoration: BoxDecoration(
                  color: index.isOdd ? mainBgColorTwo : mainBgColorOne,
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      ClanTextWidget(
                        flex: 1,
                        text: "${index + 1}",
                      ),
                      const ClanTextWidget(
                        flex: 6,
                        text: "PepeCup Army",
                        icon: "assets/trade_clan_icons/profile.png",
                        isShowIcon: true,
                        isUnderline: true,
                      ),
                      const ClanTextWidget(
                        flex: 2,
                        text: "\$ 0.00",
                      ),
                      const ClanTextWidget(
                        flex: 2,
                        text: "\$ 0.00",
                      ),
                      const ClanTextWidget(
                        flex: 2,
                        text: "\$ 0.00",
                      ),
                      const ClanTextWidget(
                        flex: 2,
                        text: "\$ 0.00",
                      ),
                      const ClanTextWidget(
                        flex: 2,
                        text: "8/249",
                      ),
                      Expanded(
                        flex: 3,
                        child: Row(
                          children: <Widget>[
                            SvgPicture.asset(
                                "assets/trade_clan_icons/twitter.svg"),
                            const SizedBox(width: 2),
                            SvgPicture.asset(index.isOdd
                                ? "assets/trade_clan_icons/game.svg"
                                : "assets/trade_clan_icons/share.svg"),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: ButtonWidget(
                          text: "Log In",
                          height: 25.4,
                          width: 56.64,
                          btnColor: const Color(0xFF3B4756),
                          borderColor: const Color(0xFF3B4756),
                          fontSize: 11.56,
                          fontWeight: FontWeight.w400,
                          textColor: whiteColor,
                          borderRadius: 3.56,
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
