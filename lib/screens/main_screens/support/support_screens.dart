import 'package:flutter/material.dart';
import 'package:trades_website/core/button_widget.dart';
import 'package:trades_website/core/consts.dart';
import 'package:trades_website/core/responsive.dart';
import 'package:trades_website/screens/main_screens/home/home_design/footer_design.dart';
import 'package:trades_website/screens/main_screens/support/support_design/support_form_design.dart';

import '../home/home_design/top_header_design.dart';

class SupportScreen extends StatefulWidget {
  const SupportScreen({Key? key}) : super(key: key);

  @override
  State<SupportScreen> createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
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
                selectedScreenTwoIndex: 5,
              ),
              Container(
                height: Responsive.isDesktop(context) ? 930 : 1650,
                width: double.infinity,
                margin: const EdgeInsets.only(top: 35, bottom: 110),
                padding: const EdgeInsets.fromLTRB(80, 40, 70, 40),
                decoration: const BoxDecoration(
                  color: mainBgColorTwo,
                  image: DecorationImage(
                    image: AssetImage("assets/support_icons/trade.png"),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Responsive.isDesktop(context)
                    ? Row(
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              const SizedBox(height: 100),
                              const Text(
                                "Need Help Contact Us",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: whiteColor,
                                  fontSize: 44,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              const SizedBox(height: 30),
                              const Text(
                                "Reach out to us for expert assistance and prompt\nsupport whenever you require help.",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Color(0xFFF5F9FA),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const SizedBox(height: 40),
                              Container(
                                height: 450,
                                width: 560,
                                padding:
                                    const EdgeInsets.fromLTRB(45, 0, 45, 0),
                                decoration: BoxDecoration(
                                  color: whiteColor,
                                  borderRadius: BorderRadius.circular(25),
                                  border: Border.all(
                                    color: const Color(0xFFEFE5FF),
                                    width: 1.58,
                                  ),
                                ),
                                child: Center(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      const Text(
                                        "Mastering the Art of Trading",
                                        style: TextStyle(
                                          color: Color(0xFF20103C),
                                          fontSize: 29,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      const SizedBox(height: 25),
                                      const Text(
                                        "Dive into the world of trading and discover strategies, tips, and insights to help you navigate the markets with confidence. Whether you're a beginner or seasoned trader",
                                        style: TextStyle(
                                          color: Color(0xFF212529),
                                          fontSize: 22,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      const SizedBox(height: 40),
                                      ButtonWidget(
                                        text: "Read Blog",
                                        height: 80,
                                        width: double.infinity,
                                        btnColor: const Color(0xFF0D59A7),
                                        borderColor: const Color(0xFF0D59A7),
                                        fontSize: 22,
                                        fontWeight: FontWeight.w700,
                                        textColor: whiteColor,
                                        borderRadius: 13,
                                        onPressed: () {},
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(width: 100),
                          const Expanded(
                            child: SupportFormWidget(),
                          )
                        ],
                      )
                    : Column(
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              const SizedBox(height: 100),
                              const Text(
                                "Need Help Contact Us",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: whiteColor,
                                  fontSize: 44,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              const SizedBox(height: 30),
                              const Text(
                                "Reach out to us for expert assistance and prompt\nsupport whenever you require help.",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Color(0xFFF5F9FA),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const SizedBox(height: 40),
                              Container(
                                height: 450,
                                width: 560,
                                padding:
                                    const EdgeInsets.fromLTRB(45, 0, 45, 0),
                                decoration: BoxDecoration(
                                  color: whiteColor,
                                  borderRadius: BorderRadius.circular(25),
                                  border: Border.all(
                                    color: const Color(0xFFEFE5FF),
                                    width: 1.58,
                                  ),
                                ),
                                child: Center(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      const Text(
                                        "Mastering the Art of Trading",
                                        style: TextStyle(
                                          color: Color(0xFF20103C),
                                          fontSize: 29,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      const SizedBox(height: 25),
                                      const Text(
                                        "Dive into the world of trading and discover strategies, tips, and insights to help you navigate the markets with confidence. Whether you're a beginner or seasoned trader",
                                        style: TextStyle(
                                          color: Color(0xFF212529),
                                          fontSize: 22,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      const SizedBox(height: 40),
                                      ButtonWidget(
                                        text: "Read Blog",
                                        height: 80,
                                        width: double.infinity,
                                        btnColor: const Color(0xFF0D59A7),
                                        borderColor: const Color(0xFF0D59A7),
                                        fontSize: 22,
                                        fontWeight: FontWeight.w700,
                                        textColor: whiteColor,
                                        borderRadius: 13,
                                        onPressed: () {},
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 40),
                          const SupportFormWidget()
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
