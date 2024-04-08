import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trades_website/core/consts.dart';

import '../../../../core/clickable_widget.dart';
import '../home_widget.dart';

class OrderBookDesign extends StatelessWidget {
  const OrderBookDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 342.95,
      width: 294,
      margin: const EdgeInsets.all(7.3),
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
                      text: 'OrderBook',
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
            children: List.generate(10, (index) {
              return index.isEven
                  ? const OrderBookWidget()
                  : OrderBookWidget(
                price: "64,620.0",
                size: "100",
                total: "149,000",
                isHeader: false,
                barWidth: Random().nextInt(80) + 1,
              );
            }),
          ),
          const SizedBox(height: 14),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const Text(
                "64,374.5",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: greenColorTwo,
                  fontSize: 14.59,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(width: 3),
              SvgPicture.asset("assets/app_icons/arrow_up.svg"),
              const SizedBox(width: 17),
              const Text(
                "64,344.30",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Color(0xFF81868D),
                  fontSize: 10.22,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(width: 4),
              const Text(
                "64,345.72",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: whiteColor,
                  fontSize: 10.22,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Column(
            children: List.generate(10, (index) {
              return index.isEven
                  ? const OrderBookWidget()
                  : OrderBookWidget(
                price: "64,620.0",
                size: "100",
                total: "149,000",
                isHeader: false,
                barColor: const Color(0xFF673544),
                barWidth: Random().nextInt(80) + 1,
              );
            }),
          ),
        ],
      ),
    );
  }
}
