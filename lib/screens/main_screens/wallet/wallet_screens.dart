import 'package:flutter/material.dart';
import 'package:trades_website/core/consts.dart';
import 'package:trades_website/screens/main_screens/home/home_design/footer_design.dart';

import '../home/home_design/top_header_design.dart';
import 'wallet_design/wallet_list_design.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {


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
              Container(
                height: 100,
                width: double.infinity,
                margin: const EdgeInsets.only(top: 22, bottom: 32),
                padding: const EdgeInsets.fromLTRB(80, 0, 80, 0),
                decoration: const BoxDecoration(
                  color: mainBgColorOne,
                ),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Wallet",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: whiteColor,
                      fontSize: 44,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),

              const Padding(
                padding:
                    EdgeInsets.only(top: 0, right: 80, left: 80, bottom: 80),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Total account value(USD : \$12)",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: whiteColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    WalletListDesign(),
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
