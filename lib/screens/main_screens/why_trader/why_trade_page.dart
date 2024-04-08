import 'package:flutter/material.dart';
import 'package:trades_website/core/consts.dart';
import 'package:trades_website/core/responsive.dart';
import 'package:trades_website/screens/main_screens/why_trader/why_trader_screens.dart';

class WhyTradePage extends StatefulWidget {
  const WhyTradePage({Key? key}) : super(key: key);

  @override
  State<WhyTradePage> createState() => _WhyTradePageState();
}

class _WhyTradePageState extends State<WhyTradePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: mainBgColorTwo,
        body: Responsive(
          mobile: Container(
            color: mainBgColorTwo,
          ),
          tablet: Container(
            color: mainBgColorTwo,
          ),
          desktop: const WhyTraderScreen(),
        ),
      ),
    );
  }
}
