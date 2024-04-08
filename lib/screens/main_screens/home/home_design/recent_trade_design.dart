import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trades_website/core/consts.dart';

import '../../../../core/clickable_widget.dart';
import '../home_widget.dart';

class RecentTradeDesign extends StatelessWidget {
  const RecentTradeDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 372.14,
      width: 294,
      margin: const EdgeInsets.fromLTRB(0, 7.3, 7.3, 7.3),
      decoration: BoxDecoration(
        color: mainBgColorTwo,
        borderRadius: BorderRadius.circular(3),
        border: Border.all(
          color: const Color(0xFF333D4E),
          width: 0.73,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 25,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 4),
            decoration: BoxDecoration(
              color: const Color(0xFF1D2631),
              borderRadius: BorderRadius.circular(3),
              border: const Border(
                bottom: BorderSide(
                  color: Color(0xFF333D4E),
                  width: 0.73,
                ),
              ),
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  RichText(
                    text: const TextSpan(
                      text: 'Recent Trades',
                      style: TextStyle(
                        color: whiteColor,
                        fontSize: 10.22,
                        fontWeight: FontWeight.w600,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: ' XBTUSD',
                          style: TextStyle(
                            color: textColorOne,
                            fontSize: 10.22,
                            fontWeight: FontWeight.w100,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      IconButtonWidget(
                        icon: SvgPicture.asset(
                          "assets/app_icons/settings1.svg",
                        ),
                        padding: const EdgeInsets.only(right: 6),
                      ),
                      IconButtonWidget(
                        icon: SvgPicture.asset(
                          "assets/app_icons/arrow_up_down.svg",
                        ),
                        padding: const EdgeInsets.only(right: 6),
                      ),
                      IconButtonWidget(
                        icon: SvgPicture.asset(
                          "assets/app_icons/close.svg",
                        ),
                        padding: const EdgeInsets.only(right: 6),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Column(
            children: List.generate(26, (index) {
              return RecentTradeWidget(
                price: "64,612.0",
                size: "500",
                time: "6:16:38",
                lineColor:
                    index.isEven ? mainBgColorTwo : const Color(0xFF252F3B),
                isS: index == 2 ? true : false,
              );
            }),
          ),
        ],
      ),
    );
  }
}
