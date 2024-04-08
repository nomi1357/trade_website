import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trades_website/core/button_widget.dart';

import 'package:trades_website/core/clickable_widget.dart';
import 'package:trades_website/core/consts.dart';
import 'package:trades_website/screens/main_screens/home/home_widget.dart';

class LeftOneDesign extends StatelessWidget {
  final Function()? onTapBuySell;

  const LeftOneDesign({
    Key? key,
    this.onTapBuySell,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 707,
      width: 226,
      padding: const EdgeInsets.only(left: 30, right: 6, top: 6),
      decoration: const BoxDecoration(
        color: mainBgColorTwo,
        border: Border(
          right: BorderSide(
            color: Color(0xFF333D4E),
            width: 0.73,
          ),
        ),
      ),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              const Expanded(
                child: Text(
                  "Place Order",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: whiteColor,
                    fontSize: 12.22,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              IconButtonWidget(
                icon: SvgPicture.asset("assets/app_icons/calendar.svg"),
                padding: const EdgeInsets.only(right: 10),
              ),
              IconButtonWidget(
                icon: SvgPicture.asset("assets/app_icons/settings1.svg"),
                padding: const EdgeInsets.only(right: 10),
              ),
              IconButtonWidget(
                icon: SvgPicture.asset("assets/app_icons/down_side2.svg"),
              ),
            ],
          ),
          const SizedBox(height: 30),
          const RowDataWidget(
            title: "Total Value",
            amount: "12",
            isShowDownArrow: true,
          ),
          const RowDataWidget(
            title: "Limit Price",
            amount: "7432.8",
          ),
          const SizedBox(height: 2),

          //buy sell button...
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              // BuySellButtonWidget(
              //   text: "Buy | Long",
              //   buttonColor: greenColor,
              // ),
              IconButtonWidget(
                icon: SvgPicture.asset("assets/app_icons/buy_button.svg"),
                padding: const EdgeInsets.only(right: 10),
                onPressed: onTapBuySell,
              ),
              IconButtonWidget(
                icon: SvgPicture.asset("assets/app_icons/sell_button.svg"),
                padding: EdgeInsets.zero,
                onPressed: onTapBuySell,
              ),
            ],
          ),
          const SizedBox(height: 8),

          //cost...
          const RowCostDataWidget(
            title: "Cost",
            subTitle: "Cost",
          ),
          const SizedBox(height: 8),
          const RowCostDataWidget(
            title: "Order Size",
            subTitle: "12 USD",
            isShowUnderline: true,
          ),
          const RowCostDataWidget(
            title: "National Quantity",
            subTitle: "12 DCS",
          ),
          const RowCostDataWidget(
            title: "Total Value",
            subTitle: "24 SDA",
          ),
          const RowCostDataWidget(
            title: "Order Value",
            subTitle: "434 XBT",
          ),
          const RowCostDataWidget(
            title: "Available Balance",
            subTitle: "4667 XDT",
          ),

          //check boxes...
          const CheckBoxesWidget(),

          //slider...
          const SliderWidget(),

          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const Text(
                  "No Active Position",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: whiteColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 2),
                const Text(
                  "Create an order to open position",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: textColorOne,
                    fontSize: 8.54,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Container(
                  height: 15,
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 6),
                  margin: const EdgeInsets.only(top: 8, bottom: 17),
                  decoration: BoxDecoration(
                    color: const Color(0xFF3B4756),
                    borderRadius: BorderRadius.circular(3),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const Expanded(
                          child: Text(
                            "RISK LIMIT",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: textColorOne,
                              fontSize: 8.54,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            const Text(
                              "6.432/0XDC",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: whiteColor,
                                fontSize: 8.54,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const SizedBox(width: 6),
                            SvgPicture.asset(
                              height: 7.17,
                              width: 7.54,
                              "assets/app_icons/edit.svg",
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          //trade data...
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const Text(
                          "32,374.5",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Color(0xFF00DA85),
                            fontSize: 17.51,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(width: 3),
                        SvgPicture.asset("assets/app_icons/arrow_up.svg"),
                      ],
                    ),
                  ),
                  SvgPicture.asset(
                    "assets/app_icons/trade.svg",
                  ),
                ],
              ),
              const Text(
                "44,630.06",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: textColorOne,
                  fontSize: 10.22,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const RowTradeDataWidget(
                title: "Pricing Source",
                subTitle: "Traders Index",
              ),
              const RowTradeDataWidget(
                title: "TRADERS index price",
                subTitle: "24,402.21",
              ),
              const RowTradeDataWidget(
                title: "24 Volume",
                subTitle: "6421 USD",
              ),
              const RowTradeDataWidget(
                title: "Contract Value",
                subTitle: "46 USD",
              ),
              const RowTradeDataWidget(
                title: "Lot Size",
                subTitle: "569",
              ),
              const RowTradeDataWidget(
                title: "Minimum Trade Amount",
                subTitle: "12 USD",
              ),
              const SizedBox(height: 6),
              ButtonWidget(
                text: "More Details",
                height: 24,
                width: double.infinity,
                btnColor: const Color(0xFF3B4756),
                borderColor: const Color(0xFF3B4756),
                fontSize: 10.22,
                fontWeight: FontWeight.w600,
                textColor: whiteColor,
                borderRadius: 3,
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
