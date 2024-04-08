import 'package:flutter/material.dart';
import 'package:trades_website/core/button_widget.dart';

import 'package:trades_website/core/consts.dart';
import 'package:trades_website/screens/initial_screens/login_screen/login_page.dart';
import 'package:trades_website/screens/initial_screens/register_screen/register_page.dart';
import 'package:trades_website/screens/main_screens/home/home_widget.dart';

class LeftTwoDesign extends StatefulWidget {
  final Function()? onTapFormLogin;

  const LeftTwoDesign({Key? key, this.onTapFormLogin}) : super(key: key);

  @override
  State<LeftTwoDesign> createState() => _LeftTwoDesignState();
}

class _LeftTwoDesignState extends State<LeftTwoDesign> {
  int selectedTrade = 0;
  int selectedBoost = 0;

  List<String> tradeList = [
    "PERPS",
    "FUTURE",
    "BUY",
    "SPOT",
  ];
  List<String> boostList = [
    "GUILD",
    "AFFILIATES",
    "CORPORATE",
    "PROMOTIONS",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 707,
      width: 226,
      padding: const EdgeInsets.only(left: 30, right: 6, top: 7.3),
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
          Container(
            height: 288,
            width: double.infinity,
            padding: const EdgeInsets.fromLTRB(8, 0, 8, 12),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  blackColor.withOpacity(.10),
                  blackColor,
                ],
              ),
              image: const DecorationImage(
                image: AssetImage("assets/app_images/trade2.png"),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  "Trade",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: whiteColor,
                    fontSize: 35,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Text(
                  "100X",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Color(0xFFFF4158),
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const Text(
                  "Earn up to \$5,000 as\nwelcome bonus",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: whiteColor,
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 6),
                ButtonWidget(
                  text: "Sign Up",
                  height: 27,
                  width: double.infinity,
                  btnColor: blueColor,
                  borderColor: blueColor,
                  fontSize: 11,
                  fontWeight: FontWeight.w500,
                  textColor: whiteColor,
                  borderRadius: 3,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => const RegisterPage(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 6),
                ButtonWidget(
                  text: "Log In",
                  height: 27,
                  width: double.infinity,
                  btnColor: const Color(0xFF3B4756),
                  borderColor: const Color(0xFF3B4756),
                  fontSize: 11,
                  fontWeight: FontWeight.w500,
                  textColor: whiteColor,
                  borderRadius: 3,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => const LoginPage(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.only(top: 7.3),
            padding: const EdgeInsets.fromLTRB(6, 12, 6, 12),
            decoration: const BoxDecoration(
              color: Color(0xFF252F3B),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  "Trade",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: whiteColor,
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 10),
                Wrap(
                  spacing: 6,
                  runSpacing: 6,
                  children: List.generate(tradeList.length, (index) {
                    return SelectedWidget(
                      title: tradeList[index],
                      isSelected: selectedTrade == index ? true : false,
                      onTap: () {
                        setState(() {
                          selectedTrade = index;
                        });
                      },
                    );
                  }),
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.only(top: 7.3),
            padding: const EdgeInsets.fromLTRB(6, 12, 6, 12),
            decoration: const BoxDecoration(
              color: Color(0xFF252F3B),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  "Boost",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: whiteColor,
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 10),
                Wrap(
                  spacing: 6,
                  runSpacing: 6,
                  children: List.generate(boostList.length, (index) {
                    return SelectedWidget(
                      title: boostList[index],
                      isSelected: selectedBoost == index ? true : false,
                      onTap: () {
                        setState(() {
                          selectedBoost = index;
                        });
                      },
                    );
                  }),
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.only(top: 7.3),
            padding: const EdgeInsets.fromLTRB(6, 12, 6, 12),
            decoration: const BoxDecoration(
              color: Color(0xFF252F3B),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  "About",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: whiteColor,
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 10),
                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    "Fees",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: textColorOne,
                      fontSize: 10.22,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    "Security",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: textColorOne,
                      fontSize: 10.22,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    "Proof of Reserve",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: textColorOne,
                      fontSize: 10.22,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
