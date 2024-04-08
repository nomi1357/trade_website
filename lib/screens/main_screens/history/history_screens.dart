import 'package:flutter/material.dart';
import 'package:trades_website/core/consts.dart';
import 'package:trades_website/screens/main_screens/history/history_design/history_design.dart';
import 'package:trades_website/screens/main_screens/home/home_design/footer_design.dart';

import '../home/home_design/top_header_design.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
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
                selectedScreenTwoIndex: 2,
              ),
              Container(
                height: 100,
                width: double.infinity,
                margin: const EdgeInsets.only(top: 22, bottom: 32),
                padding: const EdgeInsets.fromLTRB(80, 0, 80, 0),
                decoration: const BoxDecoration(
                  color: mainBgColorOne,
                ),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Histories",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: whiteColor,
                      fontSize: 44,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),

              const Padding(
                padding:
                    EdgeInsets.only(top: 0, right: 80, left: 80, bottom: 110),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "All Your Transaction History in one Page",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: whiteColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    HistoryDesign(),
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
