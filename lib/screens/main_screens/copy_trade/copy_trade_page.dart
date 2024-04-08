import 'package:flutter/material.dart';
import 'package:trades_website/core/consts.dart';
import 'package:trades_website/core/responsive.dart';
import 'package:trades_website/screens/main_screens/copy_trade/copy_trade_screens.dart';

class CopyTradePage extends StatefulWidget {
  const CopyTradePage({Key? key}) : super(key: key);

  @override
  State<CopyTradePage> createState() => _CopyTradePageState();
}

class _CopyTradePageState extends State<CopyTradePage> {
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
          desktop: const CopyTradeScreen(),
        ),
      ),
    );
  }
}
