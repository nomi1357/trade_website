import 'package:flutter/material.dart';
import 'package:trades_website/core/consts.dart';
import 'package:trades_website/core/responsive.dart';
import 'package:trades_website/screens/main_screens/buy_sell/buy_sell_screens.dart';

class BuySellPage extends StatefulWidget {
  const BuySellPage({Key? key}) : super(key: key);

  @override
  State<BuySellPage> createState() => _BuySellPageState();
}

class _BuySellPageState extends State<BuySellPage> {
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
          desktop: const BuySellScreen(),
        ),
      ),
    );
  }
}
