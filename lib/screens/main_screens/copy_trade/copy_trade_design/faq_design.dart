import 'package:flutter/material.dart';
import 'package:trades_website/core/consts.dart';

import '../../trade_crypto/trade_crypto_widget.dart';

class FAQDesign extends StatefulWidget {
  const FAQDesign({Key? key}) : super(key: key);

  @override
  State<FAQDesign> createState() => _FAQDesignState();
}

class _FAQDesignState extends State<FAQDesign> {
  int selectedQuestion = 2;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Text(
          "Frequently Asked Questions",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: whiteColor,
            fontSize: 44,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 40),
        SizedBox(
          width: double.infinity,
          height: 392,
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Positioned(
                right: 0,
                child: Container(
                  height: 392,
                  width: 700,
                  padding: const EdgeInsets.fromLTRB(120, 30, 120, 30),
                  decoration: BoxDecoration(
                    color: mainBgColorOne,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: whiteColor.withOpacity(.40),
                      width: 1,
                    ),
                  ),
                  child: const Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Do I need to pay to Instapay even when there is no transaction going on in my business?",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: whiteColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 40),
                        Text(
                          "Detail the range of assets or markets your trading service covers, such as stocks, forex, cryptocurrencies, commodities, etc. Clarify whether users have control over which assets their funds are invested in or if there are predefined portfolios.",
                          style: TextStyle(
                            color: whiteColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                child: Container(
                  height: 360,
                  width: 570,
                  color: mainBgColorOne,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      QuestionWidget(
                        question: "How does your trading service work?",
                        isHighlight: selectedQuestion == 1 ? true : false,
                        onTap: () {
                          setState(() {
                            selectedQuestion = 1;
                          });
                        },
                      ),
                      QuestionWidget(
                        question: "What assets or markets do you trade?",
                        isHighlight: selectedQuestion == 2 ? true : false,
                        onTap: () {
                          setState(() {
                            selectedQuestion = 2;
                          });
                        },
                      ),
                      QuestionWidget(
                        question: "What level of risk is involved?",
                        isHighlight: selectedQuestion == 3 ? true : false,
                        onTap: () {
                          setState(() {
                            selectedQuestion = 3;
                          });
                        },
                      ),
                      QuestionWidget(
                        question: "What are the fees and charges?",
                        isHighlight: selectedQuestion == 4 ? true : false,
                        onTap: () {
                          setState(() {
                            selectedQuestion = 4;
                          });
                        },
                      ),
                      QuestionWidget(
                        question:
                            "Is my personal and financial information secure?",
                        isHighlight: selectedQuestion == 5 ? true : false,
                        onTap: () {
                          setState(() {
                            selectedQuestion = 5;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 110),
      ],
    );
  }
}
