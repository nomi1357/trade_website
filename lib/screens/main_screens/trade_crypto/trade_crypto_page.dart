import 'package:flutter/material.dart';
import 'package:trades_website/core/consts.dart';
import 'package:trades_website/core/responsive.dart';
import 'package:trades_website/screens/main_screens/trade_crypto/trade_crypto_screens.dart';

class TradeCryptoPage extends StatefulWidget {
  const TradeCryptoPage({Key? key}) : super(key: key);

  @override
  State<TradeCryptoPage> createState() => _TradeCryptoPageState();
}

class _TradeCryptoPageState extends State<TradeCryptoPage> {
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
          desktop: const TraderCryptoScreen(),
        ),
      ),
    );
  }
}
