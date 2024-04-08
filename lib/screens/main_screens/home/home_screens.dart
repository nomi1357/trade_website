import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trades_website/core/clickable_widget.dart';
import 'package:trades_website/core/consts.dart';
import 'package:trades_website/screens/main_screens/buy_sell/buy_sell_page.dart';
import 'package:trades_website/screens/main_screens/home/home_design/footer_design.dart';
import 'package:trades_website/screens/main_screens/home/home_design/left_one_design.dart';
import 'package:trades_website/screens/main_screens/home/home_design/order_book_design.dart';

import 'home_design/bottom_tabs_design.dart';
import 'home_design/chart_design.dart';
import 'home_design/depth_chart_design.dart';
import 'home_design/left_two_design.dart';
import 'home_design/new_feeds_design.dart';
import 'home_design/recent_trade_design.dart';
import 'home_design/top_header_design.dart';
import 'home_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isShowLogin = false;

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
                selectedScreenOneIndex: 1,
              ),

              //header two...
              Container(
                height: 50,
                width: double.infinity,
                padding: const EdgeInsets.only(left: 30, right: 12),
                decoration: const BoxDecoration(
                  color: mainBgColorTwo,
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xFF333D4E),
                      width: 0.73,
                    ),
                  ),
                ),
                child: Row(
                  children: <Widget>[
                    InkWellWidget(
                      onTap: () {
                        setState(() {
                          isShowLogin = !isShowLogin;
                        });
                      },
                      child: Container(
                        height: 50,
                        width: 180,
                        color: mainBgColorTwo,
                        margin: const EdgeInsets.only(right: 15),
                        child: Center(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        SvgPicture.asset(
                                            "assets/app_icons/star.svg"),
                                        const Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 4.5),
                                          child: Text(
                                            "XBTUSD",
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                              color: whiteColor,
                                              fontSize: 14.23,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ),
                                        const Text(
                                          "Perpetual",
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            color: textColorOne,
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 3),
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        SvgPicture.asset(
                                            "assets/app_icons/xbt.svg"),
                                        const SizedBox(width: 4),
                                        SvgPicture.asset(
                                            "assets/app_icons/100x.svg"),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 24),
                              SvgPicture.asset(
                                  "assets/app_icons/down_side1.svg"),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 0.73,
                      margin: const EdgeInsets.only(right: 10),
                      color: const Color(0xFF333D4E),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          const Expanded(
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  ColumnDataWidget(
                                    title: "64,374.5",
                                    titleColor: Color(0xFF00DA85),
                                    titleSize: 17.51,
                                    titleWeight: FontWeight.w600,
                                    subTitle: "-4.41%",
                                    subTitleColor: Color(0xFFFF4158),
                                    subTitleSize: 10.22,
                                    subTitleWeight: FontWeight.w700,
                                    isShowIcon: true,
                                    isGiveHeight: false,
                                  ),
                                  ColumnDataWidget(
                                    title: "Mark Price",
                                    subTitle: "64,345.72",
                                  ),
                                  ColumnDataWidget(
                                    title: "24H Volume",
                                    subTitle: "1,217,276,300 USD",
                                  ),
                                  ColumnDataWidget(
                                    title: "Funding Rate",
                                    subTitle: "0.0100%",
                                  ),
                                  ColumnDataWidget(
                                    title: "Next Funding",
                                    subTitle: "In 2 hours",
                                  ),
                                  ColumnDataWidget(
                                    title: "High Price",
                                    subTitle: "68,300.5",
                                  ),
                                  ColumnDataWidget(
                                    title: "Low Price",
                                    subTitle: "62,362",
                                  ),
                                  ColumnDataWidget(
                                    title: "Open Interest",
                                    subTitle: "268,921,200 USD",
                                  ),
                                  ColumnDataWidget(
                                    title: "High Price",
                                    subTitle: "68,300.5",
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              const SizedBox(width: 20),
                              SvgPicture.asset("assets/app_icons/category.svg"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              //left side...
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  isShowLogin
                      ? const LeftTwoDesign()
                      : LeftOneDesign(
                          onTapBuySell: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const BuySellPage(),
                              ),
                            );
                          },
                        ),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  OrderBookDesign(),
                                  NewFeedsDesign(),
                                ],
                              ),
                              ChartDesign(),
                              Column(
                                children: <Widget>[
                                  RecentTradeDesign(),
                                  DepthChartDesign(),
                                ],
                              )
                            ],
                          ),
                        ),
                        BottomTabsDesign()
                      ],
                    ),
                  ),
                ],
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
