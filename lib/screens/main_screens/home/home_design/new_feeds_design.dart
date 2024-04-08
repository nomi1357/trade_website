
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trades_website/core/consts.dart';

import '../../../../core/clickable_widget.dart';

class NewFeedsDesign extends StatelessWidget {
  const NewFeedsDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 197.02,
      width: 294,
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
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Text(
                    'News Feed',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: whiteColor,
                      fontSize: 10.22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
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

          //tab bar...
          DefaultTabController(
            length: 2,
            child: Container(
              height: 23,
              color: mainBgColorTwo,
              child: const TabBar(
                dividerColor: Colors.transparent,
                indicatorSize: TabBarIndicatorSize.tab,
                labelColor: whiteColor,
                unselectedLabelColor: Color(0xFFC3C5C4),
                labelStyle: TextStyle(
                  fontSize: 9.49,
                  fontWeight: FontWeight.w500,
                ),
                unselectedLabelStyle: TextStyle(
                  fontSize: 9.49,
                  fontWeight: FontWeight.w500,
                ),
                indicator: BoxDecoration(
                  color: blueColor,
                ),
                tabs: [
                  Tab(
                    text: 'General',
                  ),
                  Tab(
                    text: 'Trending',
                  )
                ],
              ),
            ),
          ),

          const Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  NewFeedWidget(
                    title: "CoinDesk Feed",
                    time: "3 min",
                    detail:
                        "Coinbase: Investigating Delayed Crypto Sends/Receives (Link)",
                    tag1: "Coinbase",
                    tag2: "Crypto",
                  ),
                  NewFeedWidget(
                    title: "BeInCrypto News",
                    time: "4 min",
                    detail:
                        "Japan to Consider Bitcoin Investment After Setting Interest Rates at 0%",
                    tag1: "Bitcoin",
                    tag2: "Marco",
                  ),
                  NewFeedWidget(
                    title: "CoinDesk Feed",
                    time: "3 min",
                    detail:
                        "Coinbase: Investigating Delayed Crypto Sends/Receives (Link)",
                    tag1: "Coinbase",
                    tag2: "Crypto",
                    isLast: true,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//new feed widget...
class NewFeedWidget extends StatelessWidget {
  final String title, time, detail, tag1, tag2;
  final bool isLast;

  const NewFeedWidget({
    super.key,
    required this.title,
    required this.time,
    required this.detail,
    required this.tag1,
    required this.tag2,
    this.isLast = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: mainBgColorTwo,
        border: isLast
            ? const Border()
            : const Border(
                bottom: BorderSide(
                  color: Color(0xFF191919),
                  width: 0.73,
                ),
              ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: textColorOne,
                    fontSize: 9.49,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Text(
                time,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: textColorOne,
                  fontSize: 9.49,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          Text(
            detail,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: whiteColor,
              fontSize: 9.49,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 4),
          Row(
            children: <Widget>[
              Text(
                "• $tag1",
                textAlign: TextAlign.left,
                softWrap: true,
                style: const TextStyle(
                  color: textColorOne,
                  fontSize: 7.59,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "• $tag2",
                textAlign: TextAlign.left,
                softWrap: true,
                style: const TextStyle(
                  color: Color(0xFF65BFFF),
                  fontSize: 7.59,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
