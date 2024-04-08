import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trades_website/core/clickable_widget.dart';
import 'package:trades_website/core/consts.dart';

class HistoryDesign extends StatefulWidget {
  const HistoryDesign({Key? key}) : super(key: key);

  @override
  State<HistoryDesign> createState() => _HistoryDesignState();
}

class _HistoryDesignState extends State<HistoryDesign> {
  String selectedCoinOne = '';

  final List<String> coinOneItems = [
    "Bitcoin",
    "Ethereum",
  ];

  String selectedCoinTwo = '';

  final List<String> coinTwoItems = [
    "Ethereum",
    "Bitcoin",
  ];

  @override
  void initState() {
    selectedCoinOne = coinOneItems[0];
    selectedCoinTwo = coinTwoItems[0];

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: double.infinity,
      margin: const EdgeInsets.fromLTRB(0, 50, 0, 0),
      padding: const EdgeInsets.fromLTRB(30, 50, 30, 50),
      decoration: BoxDecoration(
        color: mainBgColorOne,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          //tab bar...
          DefaultTabController(
            length: 3,
            child: TabBar(
              isScrollable: true,
              tabAlignment: TabAlignment.start,
              indicatorSize: TabBarIndicatorSize.label,
              overlayColor: MaterialStateProperty.all(Colors.transparent),
              dividerColor: whiteColor,
              dividerHeight: 3,
              indicatorWeight: 3,
              labelPadding: const EdgeInsets.only(bottom: 30, right: 140),
              // indicator: const UnderlineTabIndicator(
              //   borderSide: BorderSide(
              //     width: 3,
              //     color: Color(0xFF0D59A7),
              //   ),
              //   insets: EdgeInsets.symmetric(horizontal: 40.0),
              // ),
              labelColor: whiteColor,
              // labelPadding: const EdgeInsets.only(right: 24),
              unselectedLabelColor: textColorOne,
              labelStyle: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
              unselectedLabelStyle: const TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w500,
              ),
              indicatorColor: const Color(0xFF0D59A7),
              tabs: const [
                Tab(
                  text: 'Transaction  History',
                ),
                Tab(
                  text: 'Trade  History',
                ),
                Tab(
                  text: 'Order  History',
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            "Currency",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: textColorOne,
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 90),
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  height: 70,
                  width: double.infinity,
                  padding: const EdgeInsets.only(right: 24),
                  margin: const EdgeInsets.only(right: 40),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(
                      color: const Color(0xFFDDDDDD),
                      width: 0.5,
                    ),
                  ),
                  child: Theme(
                    data: ThemeData(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton2(
                        isExpanded: true,
                        hint: const Text(
                          "Coin",
                          maxLines: 1,
                          style: TextStyle(
                            color: whiteColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        iconStyleData: IconStyleData(
                          icon: SvgPicture.asset(
                            "assets/app_icons/down_side2.svg",
                          ),
                        ),
                        selectedItemBuilder: (BuildContext context) {
                          return coinOneItems.map<Widget>((String item) {
                            return Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    if (selectedCoinOne == "Bitcoin")
                                      SvgPicture.asset(
                                        "assets/trade_clan_icons/bitcoin.svg",
                                      ),
                                    if (selectedCoinOne == "Ethereum")
                                      SvgPicture.asset(
                                        "assets/trade_clan_icons/eth.svg",
                                      ),
                                    const SizedBox(width: 12),
                                    Text(
                                      item,
                                      textAlign: TextAlign.start,
                                      style: const TextStyle(
                                        color: whiteColor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }).toList();
                        },
                        items: coinOneItems
                            .map(
                              (item) => DropdownMenuItem<String>(
                                value: item,
                                child: item == selectedCoinOne
                                    ? Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8),
                                        child: Text(
                                          item,
                                          style: const TextStyle(
                                            color: whiteColor,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      )
                                    : Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8),
                                        child: Text(
                                          item,
                                          style: const TextStyle(
                                            color: whiteColor,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      ),
                              ),
                            )
                            .toList(),
                        value: selectedCoinOne,
                        onChanged: (value) {
                          setState(() {
                            selectedCoinOne = value as String;
                          });
                        },
                        buttonStyleData: const ButtonStyleData(
                          height: 35,
                          width: double.infinity,
                          padding: EdgeInsets.only(
                            left: 10,
                            right: 10,
                          ),
                        ),
                        dropdownStyleData: DropdownStyleData(
                          maxHeight: 200,
                          width: 350,
                          elevation: 1,
                          offset: const Offset(0, -10),
                          decoration: BoxDecoration(
                            color: mainBgColorTwo,
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                              color: const Color(0xFF4F607B),
                              width: 1,
                            ),
                          ),
                          scrollbarTheme: ScrollbarThemeData(
                            radius: const Radius.circular(40),
                            thickness: MaterialStateProperty.all(2),
                            thumbVisibility: MaterialStateProperty.all(true),
                          ),
                        ),
                        menuItemStyleData: const MenuItemStyleData(
                          height: 35,
                          padding: EdgeInsets.only(left: 10, right: 10),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              IconButtonWidget(
                icon: SvgPicture.asset(
                  "assets/trade_clan_icons/save.svg",
                ),
                padding: EdgeInsets.zero,
              ),
            ],
          ),
          const SizedBox(height: 30),
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  height: 70,
                  width: double.infinity,
                  padding: const EdgeInsets.only(right: 24),
                  margin: const EdgeInsets.only(right: 40),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(
                      color: const Color(0xFFDDDDDD),
                      width: 0.5,
                    ),
                  ),
                  child: Theme(
                    data: ThemeData(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton2(
                        isExpanded: true,
                        hint: const Text(
                          "Coin",
                          maxLines: 1,
                          style: TextStyle(
                            color: whiteColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        iconStyleData: IconStyleData(
                          icon: SvgPicture.asset(
                            "assets/app_icons/down_side2.svg",
                          ),
                        ),
                        selectedItemBuilder: (BuildContext context) {
                          return coinTwoItems.map<Widget>((String item) {
                            return Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    if (selectedCoinTwo == "Bitcoin")
                                      SvgPicture.asset(
                                        "assets/trade_clan_icons/bitcoin.svg",
                                      ),
                                    if (selectedCoinTwo == "Ethereum")
                                      SvgPicture.asset(
                                        "assets/trade_clan_icons/eth.svg",
                                      ),
                                    const SizedBox(width: 12),
                                    Text(
                                      item,
                                      textAlign: TextAlign.start,
                                      style: const TextStyle(
                                        color: whiteColor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }).toList();
                        },
                        items: coinTwoItems
                            .map(
                              (item) => DropdownMenuItem<String>(
                                value: item,
                                child: item == selectedCoinTwo
                                    ? Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8),
                                        child: Text(
                                          item,
                                          style: const TextStyle(
                                            color: whiteColor,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      )
                                    : Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8),
                                        child: Text(
                                          item,
                                          style: const TextStyle(
                                            color: whiteColor,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      ),
                              ),
                            )
                            .toList(),
                        value: selectedCoinTwo,
                        onChanged: (value) {
                          setState(() {
                            selectedCoinTwo = value as String;
                          });
                        },
                        buttonStyleData: const ButtonStyleData(
                          height: 35,
                          width: double.infinity,
                          padding: EdgeInsets.only(
                            left: 10,
                            right: 10,
                          ),
                        ),
                        dropdownStyleData: DropdownStyleData(
                          maxHeight: 200,
                          width: 350,
                          elevation: 1,
                          offset: const Offset(0, -10),
                          decoration: BoxDecoration(
                            color: mainBgColorTwo,
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                              color: const Color(0xFF4F607B),
                              width: 1,
                            ),
                          ),
                          scrollbarTheme: ScrollbarThemeData(
                            radius: const Radius.circular(40),
                            thickness: MaterialStateProperty.all(2),
                            thumbVisibility: MaterialStateProperty.all(true),
                          ),
                        ),
                        menuItemStyleData: const MenuItemStyleData(
                          height: 35,
                          padding: EdgeInsets.only(left: 10, right: 10),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              IconButtonWidget(
                icon: SvgPicture.asset(
                  "assets/trade_clan_icons/save.svg",
                ),
                padding: EdgeInsets.zero,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
