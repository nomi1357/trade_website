import 'package:flutter/material.dart';
import 'package:trades_website/core/consts.dart';
import 'package:trades_website/screens/main_screens/home/home_design/footer_design.dart';

import '../home/home_design/top_header_design.dart';
import 'help_design/help_design.dart';
import 'help_widget.dart';

class HelpScreen extends StatefulWidget {
  const HelpScreen({Key? key}) : super(key: key);

  @override
  State<HelpScreen> createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
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
                selectedScreenTwoIndex: 3,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 80),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const HelpDesign(),
                    const Text(
                      "Knowledge base",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: whiteColor,
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 30),
                    const Row(
                      children: <Widget>[
                        Expanded(
                          child: KnowledgeWidget(
                            text: "TRADERS Token",
                          ),
                        ),
                        SizedBox(width: 50),
                        Expanded(
                          child: KnowledgeWidget(
                            text: "TRADERS Fee",
                          ),
                        ),
                        SizedBox(width: 50),
                        Expanded(
                          child: KnowledgeWidget(
                            text: "TRADERS Token",
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                    const Row(
                      children: <Widget>[
                        Expanded(
                          child: KnowledgeWidget(
                            text: "TRADERS Token",
                          ),
                        ),
                        SizedBox(width: 50),
                        Expanded(
                          child: KnowledgeWidget(
                            text: "Tade Strategies ",
                          ),
                        ),
                        SizedBox(width: 50),
                        Expanded(
                          child: KnowledgeWidget(
                            text: "TRADERS Token",
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                    const Row(
                      children: <Widget>[
                        Expanded(
                          child: KnowledgeWidget(
                            text: "TRADERS Token",
                          ),
                        ),
                        SizedBox(width: 50),
                        Expanded(
                          child: KnowledgeWidget(
                            text: "TRADERS Token",
                          ),
                        ),
                        SizedBox(width: 50),
                        Expanded(
                          child: KnowledgeWidget(
                            text: "TRADERS Token",
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 1,
                      width: double.infinity,
                      color: const Color(0xFFEAECEF),
                      margin: const EdgeInsets.symmetric(vertical: 30),
                    ),
                    const Text(
                      "Promoted articles",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: whiteColor,
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 30),
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        HelpTextWidget(
                          text: "Official TRADERS Communication Channels",
                        ),
                        SizedBox(width: 30),
                        HelpTextWidget(
                          text: "Does Leverage affect my PNL?",
                        ),
                        SizedBox(width: 30),
                        HelpTextWidget(
                          text:
                              "Why is my deposit taking a long time to get credited?",
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        HelpTextWidget(
                          text: "Can I deposit directly from my bank?",
                        ),
                        SizedBox(width: 30),
                        HelpTextWidget(
                          text: "Why is my withdrawal taking a long time?",
                        ),
                        SizedBox(width: 30),
                        HelpTextWidget(
                          text: "Where is my withdrawal?",
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        HelpTextWidget(
                          text: "Why was my withdrawal canceled?",
                        ),
                        SizedBox(width: 30),
                        HelpTextWidget(
                          text:
                              "Why are my withdrawals disabled? (Withdrawal Ban)",
                        ),
                        SizedBox(width: 30),
                        HelpTextWidget(
                          text: "Why am I not receiving emails from TRADERS?",
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        HelpTextWidget(
                          text:
                              "Why didn't my Stop Order trigger before I was liquidated?",
                        ),
                        SizedBox(width: 30),
                        HelpTextWidget(
                          text:
                              "Why was I liquidated if the price on the chart didn't reach my Liquidation Price?",
                        ),
                        SizedBox(width: 30),
                        HelpTextWidget(
                          text: "Why am I not receiving emails from TRADERS?",
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        HelpTextWidget(
                          text: "Why was my order filled at a different price?",
                        ),
                        SizedBox(width: 30),
                        HelpTextWidget(
                          text: "Why has my Liquidation Price changed?",
                        ),
                        SizedBox(width: 30),
                        HelpTextWidget(
                          text: "Why am I not receiving emails from TRADERS?",
                        ),
                      ],
                    ),
                    const SizedBox(height: 110),
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
