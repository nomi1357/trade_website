import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trades_website/core/clickable_widget.dart';
import 'package:trades_website/core/consts.dart';
import 'package:trades_website/screens/main_screens/home/home_design/footer_design.dart';

import '../home/home_design/top_header_design.dart';
import 'copy_trade_design/bitcoin_design.dart';
import 'copy_trade_design/copy_trade_design.dart';
import 'copy_trade_design/faq_design.dart';

class CopyTradeScreen extends StatefulWidget {
  const CopyTradeScreen({Key? key}) : super(key: key);

  @override
  State<CopyTradeScreen> createState() => _CopyTradeScreenState();
}

class _CopyTradeScreenState extends State<CopyTradeScreen> {
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
                selectedScreenOneIndex: 3,
              ),
              BitcoinDesign(
                onApplyTab: () {},
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 80),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const CopyTradeDesign(),
                    const SizedBox(height: 26),

                    //tab bar...
                    DefaultTabController(
                      length: 2,
                      child: TabBar(
                        isScrollable: true,
                        tabAlignment: TabAlignment.start,
                        overlayColor:
                            MaterialStateProperty.all(Colors.transparent),
                        dividerColor: Colors.transparent,
                        indicator: const UnderlineTabIndicator(
                          borderSide: BorderSide(
                            width: 3,
                            color: Color(0xFF0D59A7),
                          ),
                          insets: EdgeInsets.symmetric(horizontal: 40.0),
                        ),
                        labelColor: const Color(0xFFEAECEF),
                        labelPadding: const EdgeInsets.only(right: 24),
                        unselectedLabelColor: const Color(0xFF848E9C),
                        labelStyle: const TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w500,
                        ),
                        unselectedLabelStyle: const TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w500,
                        ),
                        indicatorColor: const Color(0xFF0D59A7),
                        tabs: [
                          const Tab(
                            text: 'Portfolio List',
                          ),
                          const Tab(
                            text: 'My Favorites',
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 26),
                    Row(
                      children: <Widget>[
                        Container(
                          height: 36,
                          width: 67,
                          margin: const EdgeInsets.only(right: 20),
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: const Color(0xFF474D57),
                              width: 0.73,
                            ),
                          ),
                          child: Center(
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                const Text(
                                  "7D",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFFEAECEF),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(width: 6),
                                SvgPicture.asset(
                                  "assets/app_icons/down_side.svg",
                                  colorFilter: const ColorFilter.mode(
                                    Color(0xFFEAECEF),
                                    BlendMode.srcIn,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: DefaultTabController(
                            length: 7,
                            child: SizedBox(
                              height: 36,
                              child: TabBar(
                                isScrollable: true,
                                tabAlignment: TabAlignment.start,
                                dividerColor: Colors.transparent,
                                overlayColor: MaterialStateProperty.all(
                                    Colors.transparent),
                                indicatorSize: TabBarIndicatorSize.tab,
                                indicator: BoxDecoration(
                                  color: const Color(0xFF2B3139),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                labelColor: const Color(0xFFEAECEF),
                                indicatorColor: const Color(0xFF2B3139),
                                unselectedLabelColor: const Color(0xFF848E9C),
                                labelStyle: const TextStyle(
                                  fontSize: 13.45,
                                  fontWeight: FontWeight.w500,
                                ),
                                unselectedLabelStyle: const TextStyle(
                                  fontSize: 13.45,
                                  fontWeight: FontWeight.w500,
                                ),
                                tabs: const [
                                  Tab(
                                    text: 'PnL',
                                  ),
                                  Tab(
                                    text: 'ROI',
                                  ),
                                  Tab(
                                    text: 'MDD',
                                  ),
                                  Tab(
                                    text: 'AUM',
                                  ),
                                  Tab(
                                    text: 'Copy Traders',
                                  ),
                                  Tab(
                                    text: 'Copy Traders PnL',
                                  ),
                                  Tab(
                                    text: 'Sharpe Ratio',
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            IconButtonWidget(
                              icon: SvgPicture.asset(
                                  "assets/copy_trade_icons/search.svg"),
                              padding: const EdgeInsets.only(right: 25),
                            ),
                            IconButtonWidget(
                              icon: SvgPicture.asset(
                                  "assets/copy_trade_icons/filter.svg"),
                              padding: EdgeInsets.zero,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 370,
                      child: Center(
                        child: SvgPicture.asset(
                            "assets/copy_trade_icons/no_found.svg"),
                      ),
                    ),
                    const FAQDesign(),
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
