import 'package:flutter/material.dart';
import 'package:trades_website/core/consts.dart';
import 'package:trades_website/screens/main_screens/home/home_design/footer_design.dart';

import '../home/home_design/top_header_design.dart';
import 'api_design/api_design.dart';
import 'api_widget.dart';

class ApiScreen extends StatefulWidget {
  const ApiScreen({Key? key}) : super(key: key);

  @override
  State<ApiScreen> createState() => _ApiScreenState();
}

class _ApiScreenState extends State<ApiScreen> {
  int selectedIndex = 1;

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
                isBlue: true,
                lineColor: blackColor,
                selectedScreenTwoIndex: 6,
              ),

              Container(
                color: mainBgColorTwo,
                padding: const EdgeInsets.only(
                    top: 48, right: 80, left: 80, bottom: 110),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 1274,
                      width: 260,
                      margin: const EdgeInsets.only(right: 30),
                      padding: const EdgeInsets.fromLTRB(8, 30, 8, 30),
                      decoration: BoxDecoration(
                        color: mainBgColorOne,
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(
                          color: const Color(0xFF333D4E),
                          width: 1,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const TitleWidget(
                            text: "DOCUMENTATION",
                          ),
                          SelectedTitleWidget(
                            text: "Overview",
                            isSelected: selectedIndex == 1 ? true : false,
                            onTap: () {
                              setState(() {
                                selectedIndex = 1;
                              });
                            },
                          ),
                          SelectedTitleWidget(
                            text: "Changelog",
                            isSelected: selectedIndex == 2 ? true : false,
                            onTap: () {
                              setState(() {
                                selectedIndex = 2;
                              });
                            },
                          ),
                          SelectedTitleWidget(
                            text: "API RSS Feed",
                            isSelected: selectedIndex == 3 ? true : false,
                            onTap: () {
                              setState(() {
                                selectedIndex = 3;
                              });
                            },
                          ),
                          const SizedBox(height: 28),
                          const TitleWidget(
                            text: "USING THE BITMEX APITATION",
                          ),
                          SelectedTitleWidget(
                            text: "REST API",
                            isSelected: selectedIndex == 4 ? true : false,
                            onTap: () {
                              setState(() {
                                selectedIndex = 4;
                              });
                            },
                          ),
                          SelectedTitleWidget(
                            text: "REST API Message Format",
                            isSelected: selectedIndex == 5 ? true : false,
                            onTap: () {
                              setState(() {
                                selectedIndex = 5;
                              });
                            },
                          ),
                          SelectedTitleWidget(
                            text: "Interactive REST API Explorer",
                            isSelected: selectedIndex == 6 ? true : false,
                            onTap: () {
                              setState(() {
                                selectedIndex = 6;
                              });
                            },
                          ),
                          SelectedTitleWidget(
                            text: "WebSocket API",
                            isSelected: selectedIndex == 7 ? true : false,
                            onTap: () {
                              setState(() {
                                selectedIndex = 7;
                              });
                            },
                          ),
                          SelectedTitleWidget(
                            text: "Trading Rules",
                            isSelected: selectedIndex == 8 ? true : false,
                            onTap: () {
                              setState(() {
                                selectedIndex = 8;
                              });
                            },
                          ),
                          const SizedBox(height: 28),
                          const TitleWidget(
                            text: "API KEYS",
                          ),
                          SelectedTitleWidget(
                            text: "Using API Keys",
                            isSelected: selectedIndex == 9 ? true : false,
                            onTap: () {
                              setState(() {
                                selectedIndex = 9;
                              });
                            },
                          ),
                          const SizedBox(height: 28),
                          const TitleWidget(
                            text: "COMPANIES USING BITMEX",
                          ),
                          SelectedTitleWidget(
                            text: "Automated Trading",
                            isSelected: selectedIndex == 10 ? true : false,
                            onTap: () {
                              setState(() {
                                selectedIndex = 10;
                              });
                            },
                          ),
                          SelectedTitleWidget(
                            text: "Charting",
                            isSelected: selectedIndex == 11 ? true : false,
                            onTap: () {
                              setState(() {
                                selectedIndex = 11;
                              });
                            },
                          ),
                          const SizedBox(height: 28),
                          const TitleWidget(
                            text: "LINK",
                          ),
                          SelectedTitleWidget(
                            text: "Careers",
                            isSelected: selectedIndex == 12 ? true : false,
                            onTap: () {
                              setState(() {
                                selectedIndex = 12;
                              });
                            },
                          ),
                          SelectedTitleWidget(
                            text: "BitMEX Testnet",
                            isSelected: selectedIndex == 13 ? true : false,
                            onTap: () {
                              setState(() {
                                selectedIndex = 13;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                    const Expanded(
                      child: ApiDesign(),
                    ),
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
