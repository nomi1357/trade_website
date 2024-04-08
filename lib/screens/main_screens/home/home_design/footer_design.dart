import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trades_website/core/consts.dart';

import '../../../../core/clickable_widget.dart';
import '../home_widget.dart';

class FooterDesign extends StatelessWidget {
  const FooterDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 453,
      width: double.infinity,
      color: mainBgColorOne,
      padding: const EdgeInsets.fromLTRB(80, 70, 80, 42),
      margin: const EdgeInsets.only(top: 24),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SvgPicture.asset(
                    "assets/app_icons/main_logo.svg",
                  ),
                  const SizedBox(height: 33),
                  const Text(
                    "Having access to diverse options\nallows users to explore different\ninvestment opportunities and diversify ",
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: whiteColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 45),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      IconButtonWidget(
                        icon: SvgPicture.asset(
                          "assets/app_icons/twitter.svg",
                        ),
                        padding: const EdgeInsets.only(right: 12),
                      ),
                      IconButtonWidget(
                        icon: SvgPicture.asset(
                          "assets/app_icons/facebook.svg",
                        ),
                        padding: const EdgeInsets.only(right: 12),
                      ),
                      IconButtonWidget(
                        icon: SvgPicture.asset(
                          "assets/app_icons/instagram.svg",
                        ),
                        padding: const EdgeInsets.only(right: 12),
                      ),
                      IconButtonWidget(
                        icon: SvgPicture.asset(
                          "assets/app_icons/cat.svg",
                        ),
                        padding: EdgeInsets.zero,
                      ),
                    ],
                  ),
                ],
              ),
              const Expanded(
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        BottomTextWidget(
                          text: "TRADE",
                          isShowUnderline: true,
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                        ),
                        BottomTextWidget(
                          text: "BUY CRYPTO",
                          isShowUnderline: true,
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                        ),
                        BottomTextWidget(
                          text: "CLANS",
                          isShowUnderline: true,
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                        ),
                        BottomTextWidget(
                          text: "INFORMATION",
                          isShowUnderline: true,
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    Row(
                      children: <Widget>[
                        BottomTextWidget(
                          text: "About",
                        ),
                        BottomTextWidget(
                          text: "Customer Support",
                        ),
                        BottomTextWidget(
                          text: "Free eBooks",
                        ),
                        BottomTextWidget(
                          text: "Free eBooks",
                        ),
                      ],
                    ),
                    SizedBox(height: 23),
                    Row(
                      children: <Widget>[
                        BottomTextWidget(
                          text: "Features",
                        ),
                        BottomTextWidget(
                          text: "Delivery Details",
                        ),
                        BottomTextWidget(
                          text: "Development Tutorial",
                        ),
                        BottomTextWidget(
                          text: "Development Tutorial",
                        ),
                      ],
                    ),
                    SizedBox(height: 23),
                    Row(
                      children: <Widget>[
                        BottomTextWidget(
                          text: "Works",
                        ),
                        BottomTextWidget(
                          text: "Terms & Conditions",
                        ),
                        BottomTextWidget(
                          text: "How to - Blog",
                        ),
                        BottomTextWidget(
                          text: "How to - Blog",
                        ),
                      ],
                    ),
                    SizedBox(height: 23),
                    Row(
                      children: <Widget>[
                        BottomTextWidget(
                          text: "Career",
                        ),
                        BottomTextWidget(
                          text: "Privacy Policy",
                        ),
                        BottomTextWidget(
                          text: "Youtube Playlist",
                        ),
                        BottomTextWidget(
                          text: "Youtube Playlist",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            height: 1,
            width: double.infinity,
            color: const Color(0xFFE2E8F0),
            margin: const EdgeInsets.only(top: 80, bottom: 40),
          ),
          const Text(
            "© Copyright 2025, All Rights Reserved by TRADERS",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Color(0xFF71717A),
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
