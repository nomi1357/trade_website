import 'package:flutter/material.dart';
import 'package:trades_website/core/consts.dart';
import 'package:trades_website/core/responsive.dart';
import 'package:trades_website/screens/main_screens/buy_crypto/buy_crypto_screens.dart';

class BuyCryptoPage extends StatefulWidget {
  const BuyCryptoPage({Key? key}) : super(key: key);

  @override
  State<BuyCryptoPage> createState() => _BuyCryptoPageState();
}

class _BuyCryptoPageState extends State<BuyCryptoPage> {
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
          desktop: const BuyCryptoScreen(),
        ),
      ),
    );
  }
}
