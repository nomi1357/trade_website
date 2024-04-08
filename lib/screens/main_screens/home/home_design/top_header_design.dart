import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trades_website/core/button_widget.dart';
import 'package:trades_website/core/consts.dart';
import 'package:trades_website/core/responsive.dart';
import 'package:trades_website/screens/initial_screens/login_screen/login_page.dart';
import 'package:trades_website/screens/initial_screens/register_screen/register_page.dart';
import 'package:trades_website/screens/main_screens/home/home_page.dart';
import 'package:trades_website/screens/main_screens/trade_crypto/trade_crypto_page.dart';

import '../../../../core/clickable_widget.dart';
import '../../api/api_page.dart';
import '../../buy_crypto/buy_crypto_page.dart';
import '../../contracts/contracts_page.dart';
import '../../convert/convert_page.dart';
import '../../copy_trade/copy_trade_page.dart';
import '../../help/help_page.dart';
import '../../history/history_page.dart';
import '../../support/support_page.dart';
import '../../trade_clan/tarde_clan_page.dart';
import '../../wallet/wallet_page.dart';
import '../../why_trader/why_trade_page.dart';
import '../home_widget.dart';

class TopHeaderDesign extends StatefulWidget {
  final bool isBlue;
  final Color lineColor;
  final int selectedScreenOneIndex, selectedScreenTwoIndex;

  const TopHeaderDesign({
    Key? key,
    this.isBlue = false,
    this.lineColor = blackColor,
    this.selectedScreenOneIndex = 0,
    this.selectedScreenTwoIndex = 0,
  }) : super(key: key);

  @override
  State<TopHeaderDesign> createState() => _TopHeaderDesignState();
}

class _TopHeaderDesignState extends State<TopHeaderDesign> {
  String selectedScreenOne = '';

  final List<String> screenOneItems = [
    "trade",
    "trades",
    "trade_crypto",
    "copy_trade",
  ];

  String selectedScreenTwo = '';

  final List<String> screenTwoItems = [
    "information",
    "contracts",
    "history",
    "help",
    "convert",
    "customer_support",
    "api",
  ];

  String selectedLanguage = '';

  final List<String> languageItems = [
    "english",
    "korean",
  ];

  @override
  void initState() {
    selectedScreenOne = screenOneItems[widget.selectedScreenOneIndex];
    selectedScreenTwo = screenTwoItems[widget.selectedScreenTwoIndex];
    selectedLanguage = languageItems[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Responsive.isDesktop(context)
        ? Container(
            height: widget.isBlue ? 78 : 40,
            color: widget.lineColor,
            padding: EdgeInsets.only(
                left: widget.isBlue ? 80 : 30, right: widget.isBlue ? 80 : 5),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      SvgPicture.asset(
                        "assets/app_icons/main_logo.svg",
                      ),
                      DropdownButtonHideUnderline(
                        child: DropdownButton2(
                          customButton: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              HeaderText(
                                text: selectedScreenOne,
                                padding:
                                const EdgeInsets.only(left: 50, right: 8),
                              ),
                              SvgPicture.asset(
                                "assets/app_icons/down_side.svg",
                              ),
                            ],
                          ),
                          isExpanded: true,
                          iconStyleData: IconStyleData(
                            icon: SvgPicture.asset(
                              "assets/app_icons/down_side.svg",
                            ),
                          ),
                          items: screenOneItems
                              .map(
                                (item) => DropdownMenuItem<String>(
                              value: item,
                              child: item == selectedScreenOne
                                  ? Container(
                                height: double.infinity,
                                width: double.infinity,
                                color: mainBgColorTwo,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: LocaleText(
                                    item,
                                    style: const TextStyle(
                                      color: whiteColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ),
                              )
                                  : Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8),
                                child: LocaleText(
                                  item,
                                  style: const TextStyle(
                                    color: whiteColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),
                            ),
                          )
                              .toList(),
                          value: selectedScreenOne,
                          onChanged: (value) {
                            if (value == selectedScreenOne) {
                            } else {
                              if (value == "trades") {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                    const HomePage(),
                                  ),
                                );
                              }
                              if (value == "trade_crypto") {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                    const TradeCryptoPage(),
                                  ),
                                );
                              }
                              if (value == "copy_trade") {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                    const CopyTradePage(),
                                  ),
                                );
                              }
                            }
                          },
                          dropdownStyleData: const DropdownStyleData(
                            width: 110,
                            padding: EdgeInsets.zero,
                            decoration: BoxDecoration(
                              color: blackColor,
                            ),
                            offset: Offset(50, -15),
                          ),
                          menuItemStyleData: const MenuItemStyleData(
                            padding: EdgeInsets.zero,
                            height: 40,
                          ),
                        ),
                      ),
                      HeaderText(
                        text: "buy_crypto",
                        onTapText: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) =>
                              const BuyCryptoPage(),
                            ),
                          );
                        },
                      ),
                      HeaderText(
                        text: "clans",
                        onTapText: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) =>
                              const TradeClanPage(),
                            ),
                          );
                        },
                      ),
                      HeaderText(
                        text: "why_traders",
                        onTapText: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) =>
                              const WhyTradePage(),
                            ),
                          );
                        },
                      ),
                      DropdownButtonHideUnderline(
                        child: DropdownButton2(
                          customButton: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              HeaderText(
                                text: selectedScreenTwo,
                                padding:
                                const EdgeInsets.only(left: 30, right: 8),
                              ),
                              SvgPicture.asset(
                                "assets/app_icons/down_side.svg",
                              ),
                            ],
                          ),
                          isExpanded: true,
                          iconStyleData: IconStyleData(
                            icon: SvgPicture.asset(
                              "assets/app_icons/down_side.svg",
                            ),
                          ),
                          items: screenTwoItems
                              .map(
                                (item) => DropdownMenuItem<String>(
                              value: item,
                              child: item == selectedScreenTwo
                                  ? Container(
                                height: double.infinity,
                                width: double.infinity,
                                color: mainBgColorTwo,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: LocaleText(
                                    item,
                                    style: const TextStyle(
                                      color: whiteColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ),
                              )
                                  : Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8),
                                child: LocaleText(
                                  item,
                                  style: const TextStyle(
                                    color: whiteColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),
                            ),
                          )
                              .toList(),
                          value: selectedScreenTwo,
                          onChanged: (value) {
                            if (value == selectedScreenTwo) {
                            } else {
                              if (value == "contracts") {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                    const ContractsPage(),
                                  ),
                                );
                              }
                              if (value == "history") {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                    const HistoryPage(),
                                  ),
                                );
                              }
                              if (value == "help") {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                    const HelpPage(),
                                  ),
                                );
                              }
                              if (value == "convert") {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                    const ConvertPage(),
                                  ),
                                );
                              }
                              if (value == "customer_support") {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                    const SupportPage(),
                                  ),
                                );
                              }
                              if (value == "api") {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                    const ApiPage(),
                                  ),
                                );
                              }
                            }
                          },
                          dropdownStyleData: const DropdownStyleData(
                            width: 160,
                            padding: EdgeInsets.zero,
                            decoration: BoxDecoration(
                              color: blackColor,
                            ),
                            offset: Offset(50, -15),
                          ),
                          menuItemStyleData: const MenuItemStyleData(
                            padding: EdgeInsets.zero,
                            height: 40,
                          ),
                        ),
                      ),
                      DropdownButtonHideUnderline(
                        child: DropdownButton2(
                          customButton: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              HeaderText(
                                text: selectedLanguage,
                                padding:
                                const EdgeInsets.only(left: 30, right: 8),
                              ),
                              SvgPicture.asset(
                                "assets/app_icons/down_side.svg",
                              ),
                            ],
                          ),
                          isExpanded: true,
                          items: languageItems
                              .map(
                                (item) => DropdownMenuItem<String>(
                              value: item,
                              child: item == selectedLanguage
                                  ? Container(
                                height: double.infinity,
                                width: double.infinity,
                                color: mainBgColorTwo,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: LocaleText(
                                    item,
                                    style: const TextStyle(
                                      color: whiteColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ),
                              )
                                  : Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8),
                                child: LocaleText(
                                  item,
                                  style: const TextStyle(
                                    color: whiteColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),
                            ),
                          )
                              .toList(),
                          value: selectedLanguage,
                          onChanged: (value) {
                            if (value == selectedLanguage) {
                            } else {
                              if (value == "english") {
                                LocaleNotifier.of(context)!.change('en');
                                // Navigator.pushReplacement(
                                //   context,
                                //   MaterialPageRoute(
                                //     builder: (BuildContext context) =>
                                //         const HomePage(),
                                //   ),
                                // );
                              }
                              if (value == "korean") {
                                LocaleNotifier.of(context)!.change('ko');
                                // Navigator.pushReplacement(
                                //   context,
                                //   MaterialPageRoute(
                                //     builder: (BuildContext context) =>
                                //         const HomePage(),
                                //   ),
                                // );
                              }
                            }
                          },
                          dropdownStyleData: const DropdownStyleData(
                            width: 160,
                            padding: EdgeInsets.zero,
                            decoration: BoxDecoration(
                              color: blackColor,
                            ),
                            offset: Offset(50, -15),
                          ),
                          menuItemStyleData: const MenuItemStyleData(
                            padding: EdgeInsets.zero,
                            height: 40,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      IconButtonWidget(
                        icon: SvgPicture.asset("assets/app_icons/wallet.svg"),
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const WalletPage(),
                            ),
                          );
                        },
                      ),
                      IconButtonWidget(
                        icon: SvgPicture.asset(
                            "assets/app_icons/notification.svg"),
                      ),
                      IconButtonWidget(
                        icon: SvgPicture.asset("assets/app_icons/settings.svg"),
                      ),
                      IconButtonWidget(
                        icon: SvgPicture.asset("assets/app_icons/info.svg"),
                      ),
                      // if (Responsive.isDesktop(context))
                      widget.isBlue
                          ? Row(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                ButtonWidget(
                                  text: "Log In",
                                  height: 46,
                                  width: 83,
                                  btnColor: blueColor,
                                  borderColor: blueColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  textColor: whiteColor,
                                  borderRadius: 8,
                                  onPressed: () {},
                                ),
                                const SizedBox(width: 8),
                                ButtonWidget(
                                  text: "Create account",
                                  height: 46,
                                  width: 157,
                                  btnColor: const Color(0xFF1D2631),
                                  borderColor: const Color(0xFF1D2631),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  textColor: whiteColor,
                                  borderRadius: 8,
                                  onPressed: () {},
                                ),
                              ],
                            )
                          : Row(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                ButtonWidget(
                                  text: Locales.string(context, "log_in"),
                                  height: 23,
                                  width: 49,
                                  btnColor: const Color(0xFF3B4756),
                                  borderColor: const Color(0xFF3B4756),
                                  fontSize: 10.22,
                                  fontWeight: FontWeight.w500,
                                  textColor: whiteColor,
                                  borderRadius: 3,
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            const LoginPage(),
                                      ),
                                    );
                                  },
                                ),
                                const SizedBox(width: 8),
                                ButtonWidget(
                                  text:
                                      Locales.string(context, "register_small"),
                                  height: 23,
                                  width: 59,
                                  btnColor: blueColor,
                                  borderColor: blueColor,
                                  fontSize: 10.22,
                                  fontWeight: FontWeight.w500,
                                  textColor: whiteColor,
                                  borderRadius: 3,
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            const RegisterPage(),
                                      ),
                                    );
                                  },
                                ),
                                const SizedBox(width: 20),
                              ],
                            ),
                    ],
                  ),
                ],
              ),
            ),
          )
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: widget.isBlue ? 78 : 40,
                width: double.infinity,
                color: widget.lineColor,
                padding: EdgeInsets.only(
                    left: widget.isBlue ? 80 : 30,
                    right: widget.isBlue ? 80 : 5),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SvgPicture.asset(
                      "assets/app_icons/main_logo.svg",
                    ),
                    DropdownButtonHideUnderline(
                      child: DropdownButton2(
                        customButton: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            HeaderText(
                              text: selectedScreenOne,
                              padding:
                                  const EdgeInsets.only(left: 50, right: 8),
                            ),
                            SvgPicture.asset(
                              "assets/app_icons/down_side.svg",
                            ),
                          ],
                        ),
                        isExpanded: true,
                        iconStyleData: IconStyleData(
                          icon: SvgPicture.asset(
                            "assets/app_icons/down_side.svg",
                          ),
                        ),
                        items: screenOneItems
                            .map(
                              (item) => DropdownMenuItem<String>(
                                value: item,
                                child: item == selectedScreenOne
                                    ? Container(
                                        height: double.infinity,
                                        width: double.infinity,
                                        color: mainBgColorTwo,
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: LocaleText(
                                            item,
                                            style: const TextStyle(
                                              color: whiteColor,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                        ),
                                      )
                                    : Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8),
                                        child: LocaleText(
                                          item,
                                          style: const TextStyle(
                                            color: whiteColor,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      ),
                              ),
                            )
                            .toList(),
                        value: selectedScreenOne,
                        onChanged: (value) {
                          if (value == selectedScreenOne) {
                          } else {
                            if (value == "trades") {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const HomePage(),
                                ),
                              );
                            }
                            if (value == "trade_crypto") {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const TradeCryptoPage(),
                                ),
                              );
                            }
                            if (value == "copy_trade") {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const CopyTradePage(),
                                ),
                              );
                            }
                          }
                        },
                        dropdownStyleData: const DropdownStyleData(
                          width: 110,
                          padding: EdgeInsets.zero,
                          decoration: BoxDecoration(
                            color: blackColor,
                          ),
                          offset: Offset(50, -15),
                        ),
                        menuItemStyleData: const MenuItemStyleData(
                          padding: EdgeInsets.zero,
                          height: 40,
                        ),
                      ),
                    ),
                    HeaderText(
                      text: "buy_crypto",
                      onTapText: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const BuyCryptoPage(),
                          ),
                        );
                      },
                    ),
                    HeaderText(
                      text: "clans",
                      onTapText: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const TradeClanPage(),
                          ),
                        );
                      },
                    ),
                    HeaderText(
                      text: "why_traders",
                      onTapText: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const WhyTradePage(),
                          ),
                        );
                      },
                    ),
                    DropdownButtonHideUnderline(
                      child: DropdownButton2(
                        customButton: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            HeaderText(
                              text: selectedScreenTwo,
                              padding:
                                  const EdgeInsets.only(left: 30, right: 8),
                            ),
                            SvgPicture.asset(
                              "assets/app_icons/down_side.svg",
                            ),
                          ],
                        ),
                        isExpanded: true,
                        iconStyleData: IconStyleData(
                          icon: SvgPicture.asset(
                            "assets/app_icons/down_side.svg",
                          ),
                        ),
                        items: screenTwoItems
                            .map(
                              (item) => DropdownMenuItem<String>(
                                value: item,
                                child: item == selectedScreenTwo
                                    ? Container(
                                        height: double.infinity,
                                        width: double.infinity,
                                        color: mainBgColorTwo,
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: LocaleText(
                                            item,
                                            style: const TextStyle(
                                              color: whiteColor,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                        ),
                                      )
                                    : Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8),
                                        child: LocaleText(
                                          item,
                                          style: const TextStyle(
                                            color: whiteColor,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      ),
                              ),
                            )
                            .toList(),
                        value: selectedScreenTwo,
                        onChanged: (value) {
                          if (value == selectedScreenTwo) {
                          } else {
                            if (value == "contracts") {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const ContractsPage(),
                                ),
                              );
                            }
                            if (value == "history") {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const HistoryPage(),
                                ),
                              );
                            }
                            if (value == "help") {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const HelpPage(),
                                ),
                              );
                            }
                            if (value == "convert") {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const ConvertPage(),
                                ),
                              );
                            }
                            if (value == "customer_support") {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const SupportPage(),
                                ),
                              );
                            }
                            if (value == "api") {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const ApiPage(),
                                ),
                              );
                            }
                          }
                        },
                        dropdownStyleData: const DropdownStyleData(
                          width: 160,
                          padding: EdgeInsets.zero,
                          decoration: BoxDecoration(
                            color: blackColor,
                          ),
                          offset: Offset(50, -15),
                        ),
                        menuItemStyleData: const MenuItemStyleData(
                          padding: EdgeInsets.zero,
                          height: 40,
                        ),
                      ),
                    ),
                    DropdownButtonHideUnderline(
                      child: DropdownButton2(
                        customButton: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            HeaderText(
                              text: selectedLanguage,
                              padding:
                                  const EdgeInsets.only(left: 30, right: 8),
                            ),
                            SvgPicture.asset(
                              "assets/app_icons/down_side.svg",
                            ),
                          ],
                        ),
                        isExpanded: true,
                        items: languageItems
                            .map(
                              (item) => DropdownMenuItem<String>(
                                value: item,
                                child: item == selectedLanguage
                                    ? Container(
                                        height: double.infinity,
                                        width: double.infinity,
                                        color: mainBgColorTwo,
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: LocaleText(
                                            item,
                                            style: const TextStyle(
                                              color: whiteColor,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                        ),
                                      )
                                    : Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8),
                                        child: LocaleText(
                                          item,
                                          style: const TextStyle(
                                            color: whiteColor,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      ),
                              ),
                            )
                            .toList(),
                        value: selectedLanguage,
                        onChanged: (value) {
                          if (value == selectedLanguage) {
                          } else {
                            if (value == "english") {
                              LocaleNotifier.of(context)!.change('en');
                              // Navigator.pushReplacement(
                              //   context,
                              //   MaterialPageRoute(
                              //     builder: (BuildContext context) =>
                              //         const HomePage(),
                              //   ),
                              // );
                            }
                            if (value == "korean") {
                              LocaleNotifier.of(context)!.change('ko');
                              // Navigator.pushReplacement(
                              //   context,
                              //   MaterialPageRoute(
                              //     builder: (BuildContext context) =>
                              //         const HomePage(),
                              //   ),
                              // );
                            }
                          }
                        },
                        dropdownStyleData: const DropdownStyleData(
                          width: 160,
                          padding: EdgeInsets.zero,
                          decoration: BoxDecoration(
                            color: blackColor,
                          ),
                          offset: Offset(50, -15),
                        ),
                        menuItemStyleData: const MenuItemStyleData(
                          padding: EdgeInsets.zero,
                          height: 40,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: widget.isBlue ? 78 : 40,
                width: double.infinity,
                color: widget.lineColor,
                padding: EdgeInsets.only(
                    left: widget.isBlue ? 80 : 30,
                    right: widget.isBlue ? 80 : 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        IconButtonWidget(
                          icon: SvgPicture.asset("assets/app_icons/wallet.svg"),
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const WalletPage(),
                              ),
                            );
                          },
                        ),
                        IconButtonWidget(
                          icon: SvgPicture.asset(
                              "assets/app_icons/notification.svg"),
                        ),
                        IconButtonWidget(
                          icon:
                              SvgPicture.asset("assets/app_icons/settings.svg"),
                        ),
                        IconButtonWidget(
                          icon: SvgPicture.asset("assets/app_icons/info.svg"),
                        ),
                      ],
                    ),
                    widget.isBlue
                        ? Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              ButtonWidget(
                                text: Locales.string(context, "log_in"),
                                height: 46,
                                width: 83,
                                btnColor: blueColor,
                                borderColor: blueColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                textColor: whiteColor,
                                borderRadius: 8,
                                onPressed: () {},
                              ),
                              const SizedBox(width: 8),
                              ButtonWidget(
                                text: Locales.string(context, "create_account"),
                                height: 46,
                                width: 157,
                                btnColor: const Color(0xFF1D2631),
                                borderColor: const Color(0xFF1D2631),
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                textColor: whiteColor,
                                borderRadius: 8,
                                onPressed: () {},
                              ),
                            ],
                          )
                        : Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              ButtonWidget(
                                text: Locales.string(context, "log_in"),
                                height: 23,
                                width: 49,
                                btnColor: const Color(0xFF3B4756),
                                borderColor: const Color(0xFF3B4756),
                                fontSize: 10.22,
                                fontWeight: FontWeight.w500,
                                textColor: whiteColor,
                                borderRadius: 3,
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          const LoginPage(),
                                    ),
                                  );
                                },
                              ),
                              const SizedBox(width: 8),
                              ButtonWidget(
                                text: Locales.string(context, "register_small"),
                                height: 23,
                                width: 59,
                                btnColor: blueColor,
                                borderColor: blueColor,
                                fontSize: 10.22,
                                fontWeight: FontWeight.w500,
                                textColor: whiteColor,
                                borderRadius: 3,
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          const RegisterPage(),
                                    ),
                                  );
                                },
                              ),
                              const SizedBox(width: 20),
                            ],
                          ),
                  ],
                ),
              ),
            ],
          );
  }
}
