import 'package:flutter/material.dart';
import 'package:trades_website/core/consts.dart';
import 'package:trades_website/core/responsive.dart';
import 'package:trades_website/screens/main_screens/home/home_design/footer_design.dart';
import 'package:trades_website/screens/main_screens/why_trader/why_trader_widget.dart';

import '../home/home_design/top_header_design.dart';
import 'why_trader_design/join_trader_design.dart';
import 'why_trader_design/why_trader_design.dart';

class WhyTraderScreen extends StatefulWidget {
  const WhyTraderScreen({Key? key}) : super(key: key);

  @override
  State<WhyTraderScreen> createState() => _WhyTraderScreenState();
}

class _WhyTraderScreenState extends State<WhyTraderScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: mainBgColorTwo,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              //header one...
              const TopHeaderDesign(
                isBlue: true,
                lineColor: blackColor,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 80),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const WhyTraderDesign(),
                    const SizedBox(height: 74),
                    const Text(
                      "Reasons to Trade Crypto Derivatives with Us",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Color(0xFFF5F9FA),
                        fontSize: 32,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      "Experience seamless trading with our advanced platform, offering competitive leverage and a wide range of cryptocurrency derivatives.",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Color(0xFFF5F9FA),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 50),
                    GridView.builder(
                      gridDelegate:
                      SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: Responsive.isDesktop(context) ? 3 : 2 ,
                        mainAxisExtent: 535,
                        mainAxisSpacing: 27,
                        crossAxisSpacing: 22,
                      ),
                      itemCount: 9,
                      physics: const NeverScrollableScrollPhysics(),
                      primary: false,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        return const WhyTradeItemsWidget(
                          image: "assets/app_images/trade1.png",
                          title: "Low Fees, High Rewards",
                          subTitle:
                          "We invented the perpetual swap, and continue to progress our products. Recently adding FX Perps - a new breed of crypto derivative.",
                        );
                      },
                    ),
                    const JoinTraderDesign(),

                  ],
                ),
              ),

              //bottom...
              const FooterDesign(),
            ],
          ),
        ),
      ),
    );
  }
}
