import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trades_website/core/consts.dart';

import '../../../../core/clickable_widget.dart';

class BottomTabsDesign extends StatelessWidget {
  const BottomTabsDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> positionTitleList = [
      "Account",
      "Symbol",
      "Size",
      "Value",
      "Entry Price",
      "Mark Price",
      "Liq. Price",
      "Margin",
      "Leverage",
      "Position PNL",
      "ROE %",
      "Unrealised PNL",
      "Realised PNL",
      "Delev.",
      "Close Position",
    ];
    return Container(
      height: 145,
      width: double.infinity,
      margin: const EdgeInsets.fromLTRB(7.3, 0, 7.3, 7.3),
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                //tab bar...
                const Expanded(
                  child: DefaultTabController(
                    length: 6,
                    child: TabBar(
                      isScrollable: true,
                      tabAlignment: TabAlignment.start,
                      dividerColor: Color(0xFF333D4E),
                      indicatorSize: TabBarIndicatorSize.tab,
                      labelColor: whiteColor,
                      unselectedLabelColor: textColorOne,
                      labelStyle: TextStyle(
                        fontSize: 10.22,
                        fontWeight: FontWeight.w600,
                      ),
                      unselectedLabelStyle: TextStyle(
                        fontSize: 10.22,
                        fontWeight: FontWeight.w600,
                      ),
                      indicatorColor: whiteColor,
                      tabs: [
                        Tab(
                          text: 'Positions [0]',
                        ),
                        Tab(
                          text: 'Closed Positions',
                        ),
                        Tab(
                          text: 'Active Orders [0]',
                        ),
                        Tab(
                          text: 'Stop [0]',
                        ),
                        Tab(
                          text: 'File',
                        ),
                        Tab(
                          text: 'Order History',
                        )
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const Text(
                      "Tradable Accounts",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: whiteColor,
                        fontSize: 9.49,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    IconButtonWidget(
                      icon: SvgPicture.asset(
                        "assets/app_icons/settings1.svg",
                      ),
                      padding: const EdgeInsets.only(left: 6, right: 6),
                    ),
                    IconButtonWidget(
                      icon: SvgPicture.asset(
                        "assets/app_icons/link.svg",
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
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 3, 30, 3),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(positionTitleList.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Text(
                      positionTitleList[index],
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: positionTitleList[index] == "Liq. Price"
                            ? const Color(0xFFFF4158)
                            : textColorOne,
                        fontSize: 8.54,
                        fontWeight: positionTitleList[index] == "Liq. Price"
                            ? FontWeight.w600
                            : FontWeight.w400,
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),
          Container(
            height: 16,
            width: double.infinity,
            padding: EdgeInsets.only(left: 10),
            decoration: const BoxDecoration(
              color: mainBgColorTwo,
              border: Border(
                top: BorderSide(
                  color: Color(0xFF191919),
                  width: 0.73,
                ),
                bottom: BorderSide(
                  color: Color(0xFF191919),
                  width: 0.73,
                ),
              ),
            ),
            child: const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "No data",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: whiteColor,
                  fontSize: 9.49,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
