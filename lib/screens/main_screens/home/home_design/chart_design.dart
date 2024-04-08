import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trades_website/core/consts.dart';

import '../../../../core/clickable_widget.dart';
import 'trade_chart.dart';

class ChartDesign extends StatelessWidget {
  const ChartDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> daysList = [
      "1y",
      "1m",
      "5d",
      "1d",
      "5h",
    ];
    return Container(
      height: 547.27,
      width: 594.7,
      margin: const EdgeInsets.fromLTRB(0, 7.3, 7.3, 7.3),
      decoration: BoxDecoration(
        color: const Color(0xFF1D2631),
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
                      text: 'Chart',
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
                          "assets/app_icons/add.svg",
                        ),
                        padding: const EdgeInsets.only(right: 6),
                        onPressed: () {},
                      ),
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
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(4, 4, 4, 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          IconButtonWidget(
                            icon: SvgPicture.asset(
                              "assets/app_icons/add1.svg",
                            ),
                            padding: const EdgeInsets.only(right: 10),
                          ),
                          IconButtonWidget(
                            icon: SvgPicture.asset(
                              "assets/app_icons/1h.svg",
                            ),
                            padding: const EdgeInsets.only(right: 10),
                          ),
                          IconButtonWidget(
                            icon: SvgPicture.asset(
                              "assets/app_icons/trade1.svg",
                            ),
                            padding: const EdgeInsets.only(right: 10),
                          ),
                          IconButtonWidget(
                            icon: SvgPicture.asset(
                              "assets/app_icons/indicator.svg",
                            ),
                            padding: const EdgeInsets.only(right: 10),
                          ),
                          IconButtonWidget(
                            icon: SvgPicture.asset(
                              "assets/app_icons/share.svg",
                            ),
                            padding: const EdgeInsets.only(right: 10),
                          ),
                          IconButtonWidget(
                            icon: SvgPicture.asset(
                              "assets/app_icons/undo.svg",
                            ),
                            padding: const EdgeInsets.only(right: 10),
                          ),
                          IconButtonWidget(
                            icon: SvgPicture.asset(
                              "assets/app_icons/redo.svg",
                            ),
                            padding: const EdgeInsets.only(right: 10),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          IconButtonWidget(
                            icon: SvgPicture.asset(
                              "assets/app_icons/settings2.svg",
                            ),
                            padding: const EdgeInsets.only(right: 10),
                          ),
                          IconButtonWidget(
                            icon: SvgPicture.asset(
                              "assets/app_icons/camera.svg",
                            ),
                            padding: EdgeInsets.zero,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Expanded(child: TradeChart()),
                  // Image.asset("assets/app_images/chart.png"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: List.generate(
                          daysList.length,
                          (index) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 8),
                              child: Text(
                                daysList[index],
                                style: const TextStyle(
                                  color: whiteColor,
                                  fontSize: 10.22,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const Text(
                            "18:16:47 (UTC) % log auto",
                            style: TextStyle(
                              color: whiteColor,
                              fontSize: 10.22,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Container(
                            height: 15,
                            width: 0.73,
                            color: const Color(0xFFE0E3EB),
                            margin: const EdgeInsets.symmetric(horizontal: 8),
                          ),
                          const Text(
                            "%  log  ",
                            style: TextStyle(
                              color: whiteColor,
                              fontSize: 10.22,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const Text(
                            "auto",
                            style: TextStyle(
                              color: Color(0xFF477BFF),
                              fontSize: 10.22,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
