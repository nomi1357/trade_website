import 'package:flutter/material.dart';
import 'package:trades_website/core/consts.dart';
import 'package:trades_website/screens/main_screens/home/home_design/footer_design.dart';

import '../convert/convert_widget.dart';
import '../home/home_design/top_header_design.dart';
import 'buy_crypto_design/buy_crypto_design.dart';

class BuyCryptoScreen extends StatefulWidget {
  const BuyCryptoScreen({Key? key}) : super(key: key);

  @override
  State<BuyCryptoScreen> createState() => _BuyCryptoScreenState();
}

class _BuyCryptoScreenState extends State<BuyCryptoScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: mainBgColorOne,
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
                padding: const EdgeInsets.only(
                    top: 48, right: 80, left: 80, bottom: 110),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      // height: 1080,
                      width: 234,
                      margin: const EdgeInsets.only(right: 25),
                      padding: const EdgeInsets.fromLTRB(18, 30, 18, 10),
                      decoration: BoxDecoration(
                        color: mainBgColorTwo,
                        border: Border.all(
                          color: const Color(0xFF333D4E),
                          width: 1,
                        ),
                      ),
                      child: const Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          ConvertTextWidget(
                            text: "Basic",
                            isLeftPadding: false,
                            textColor: textColorOne,
                          ),
                          ConvertTextWidget(
                            text: "* Overview (Start Here)",
                          ),
                          ConvertTextWidget(
                            text: "FAQ",
                          ),
                          ConvertTextWidget(
                            text: "Funding Rates",
                          ),
                          ConvertTextWidget(
                            text: "Fees",
                          ),
                          ConvertTextWidget(
                            text: "Contract List",
                          ),
                          ConvertTextWidget(
                            text: "Sub Accounts",
                          ),
                          SizedBox(height: 30),
                          ConvertTextWidget(
                            text: "Margin Trading",
                            isLeftPadding: false,
                            textColor: textColorOne,
                          ),
                          ConvertTextWidget(
                            text: "Auto-Deleveraging",
                          ),
                          ConvertTextWidget(
                            text: "Exchange Guide",
                          ),
                          ConvertTextWidget(
                            text: "Fair Price Marking",
                          ),
                          ConvertTextWidget(
                            text: "TRADERS Indices",
                          ),
                          ConvertTextWidget(
                            text: "Isolated and Cross Margin",
                          ),
                          ConvertTextWidget(
                            text: "Liquidation",
                          ),
                          ConvertTextWidget(
                            text: "Load Shedding",
                          ),
                          SizedBox(height: 30),
                          ConvertTextWidget(
                            text: "About BitMEX",
                            isLeftPadding: false,
                            textColor: textColorOne,
                          ),
                          ConvertTextWidget(
                            text: "About BitMEX",
                          ),
                          ConvertTextWidget(
                            text: "TRADERS Blog",
                          ),
                          ConvertTextWidget(
                            text: "Knowledge Base",
                          ),
                          ConvertTextWidget(
                            text: "Community",
                          ),
                          ConvertTextWidget(
                            text: "Contact",
                          ),
                        ],
                      ),
                    ),
                    const Expanded(
                      child: BuyCryptoDesign(),
                    ),
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
