import 'package:flutter/material.dart';
import 'package:trades_website/core/consts.dart';
import 'package:trades_website/core/responsive.dart';
import 'package:trades_website/screens/main_screens/trade_clan/trade_clan_screens.dart';

class TradeClanPage extends StatefulWidget {
  const TradeClanPage({Key? key}) : super(key: key);

  @override
  State<TradeClanPage> createState() => _TradeClanPageState();
}

class _TradeClanPageState extends State<TradeClanPage> {
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
          desktop: const TraderClanScreen(),
        ),
      ),
    );
  }
}
