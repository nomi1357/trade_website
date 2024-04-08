import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trades_website/core/button_widget.dart';
import 'package:trades_website/core/consts.dart';
import 'package:trades_website/screens/main_screens/home/home_design/footer_design.dart';

import '../home/home_design/top_header_design.dart';

class BuySellScreen extends StatefulWidget {
  const BuySellScreen({Key? key}) : super(key: key);

  @override
  State<BuySellScreen> createState() => _BuySellScreenState();
}

class _BuySellScreenState extends State<BuySellScreen> {
  TextEditingController mySpendController = TextEditingController();
  bool isRepeatPaymentActive = true;
  String selectedCoinOne = '';

  final List<String> coinOneItems = [
    "BTC",
    "ETH",
  ];

  String selectedCoinTwo = '';

  final List<String> coinTwoItems = [
    "USD",
  ];

  String selectedTopper = '';

  final List<String> topperTwoItems = [
    "Topper",
  ];
  String selectedPayment = '';

  final List<String> paymentTwoItems = [
    "P2P Payment",
  ];

  @override
  void initState() {
    selectedCoinOne = coinOneItems[0];
    selectedCoinTwo = coinTwoItems[0];
    selectedTopper = topperTwoItems[0];
    selectedPayment = paymentTwoItems[0];
    mySpendController.text = "100";
    super.initState();
  }

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
              ),
              Center(
                child: Container(
                  width: 600,
                  margin: const EdgeInsets.only(top: 35, bottom: 110),
                  padding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
                  decoration: BoxDecoration(
                    color: mainBgColorOne,
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          SvgPicture.asset("assets/support_icons/ring.svg"),
                          const SizedBox(width: 60),
                          const Expanded(
                            child: DefaultTabController(
                              length: 2,
                              child: TabBar(
                                dividerColor: whiteColor,
                                dividerHeight: 3,
                                indicatorWeight: 3,
                                indicatorSize: TabBarIndicatorSize.tab,
                                labelColor: whiteColor,
                                labelPadding: EdgeInsets.only(right: 24),
                                unselectedLabelColor: whiteColor,
                                labelStyle: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                                unselectedLabelStyle: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                                indicatorColor: Color(0xFF00DE89),
                                tabs: [
                                  Tab(
                                    text: 'Buy',
                                  ),
                                  Tab(
                                    text: 'Sell',
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(width: 60),
                          SvgPicture.asset("assets/support_icons/menu.svg"),
                        ],
                      ),
                      Container(
                        height: 136,
                        width: double.infinity,
                        margin: const EdgeInsets.only(top: 30, bottom: 20),
                        padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                        decoration: BoxDecoration(
                          color: mainBgColorTwo,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Text(
                              "You spend",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: whiteColor,
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: TextField(
                                    controller: mySpendController,
                                    maxLines: 1,
                                    style: const TextStyle(
                                      color: whiteColor,
                                      fontSize: 32,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    textInputAction: TextInputAction.done,
                                    keyboardType: TextInputType.text,
                                    decoration: const InputDecoration(
                                      fillColor: Colors.transparent,
                                      filled: true,
                                      enabledBorder: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      border: InputBorder.none,
                                      contentPadding: EdgeInsets.symmetric(
                                        horizontal: 20,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 58,
                                  width: 150,
                                  margin: const EdgeInsets.only(left: 20),
                                  decoration: BoxDecoration(
                                    color: whiteColor,
                                    borderRadius: BorderRadius.circular(11),
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
                                          "Currency",
                                          maxLines: 1,
                                          style: TextStyle(
                                            color: Color(0xFF141519),
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                        iconStyleData: IconStyleData(
                                          icon: SvgPicture.asset(
                                            "assets/support_icons/down_side.svg",
                                            colorFilter: const ColorFilter.mode(
                                              Color(0xFF141519),
                                              BlendMode.srcIn,
                                            ),
                                          ),
                                        ),
                                        selectedItemBuilder:
                                            (BuildContext context) {
                                          return coinTwoItems
                                              .map<Widget>((String item) {
                                            return Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 4),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: <Widget>[
                                                    if (selectedCoinTwo ==
                                                        "USD")
                                                      SvgPicture.asset(
                                                        "assets/support_icons/usd.svg",
                                                      ),
                                                    const SizedBox(width: 12),
                                                    Text(
                                                      item,
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: const TextStyle(
                                                        color:
                                                            Color(0xFF141519),
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        overflow: TextOverflow
                                                            .ellipsis,
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
                                              (item) =>
                                                  DropdownMenuItem<String>(
                                                value: item,
                                                child: item == selectedCoinTwo
                                                    ? Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .symmetric(
                                                                horizontal: 8),
                                                        child: Text(
                                                          item,
                                                          style:
                                                              const TextStyle(
                                                            color: Color(
                                                                0xFF141519),
                                                            fontSize: 20,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                          ),
                                                        ),
                                                      )
                                                    : Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .symmetric(
                                                                horizontal: 8),
                                                        child: Text(
                                                          item,
                                                          style:
                                                              const TextStyle(
                                                            color: Color(
                                                                0xFF141519),
                                                            fontSize: 20,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
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
                                          width: 150,
                                          elevation: 1,
                                          offset: const Offset(0, -10),
                                          decoration: BoxDecoration(
                                            color: whiteColor,
                                            borderRadius:
                                                BorderRadius.circular(11),
                                          ),
                                          scrollbarTheme: ScrollbarThemeData(
                                            radius: const Radius.circular(40),
                                            thickness:
                                                MaterialStateProperty.all(2),
                                            thumbVisibility:
                                                MaterialStateProperty.all(true),
                                          ),
                                        ),
                                        menuItemStyleData:
                                            const MenuItemStyleData(
                                          height: 35,
                                          padding: EdgeInsets.only(
                                              left: 10, right: 10),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        margin: const EdgeInsets.only(bottom: 20),
                        padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                        decoration: BoxDecoration(
                          color: mainBgColorTwo,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Text(
                              "You get",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: whiteColor,
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                const Expanded(
                                  child: Text(
                                    "0.00146846",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: whiteColor,
                                      fontSize: 32,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 58,
                                  width: 150,
                                  margin: const EdgeInsets.only(left: 20),
                                  decoration: BoxDecoration(
                                    color: whiteColor,
                                    borderRadius: BorderRadius.circular(11),
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
                                            color: Color(0xFF141519),
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                        iconStyleData: IconStyleData(
                                          icon: SvgPicture.asset(
                                            "assets/support_icons/down_side.svg",
                                            colorFilter: const ColorFilter.mode(
                                              Color(0xFF141519),
                                              BlendMode.srcIn,
                                            ),
                                          ),
                                        ),
                                        selectedItemBuilder:
                                            (BuildContext context) {
                                          return coinOneItems
                                              .map<Widget>((String item) {
                                            return Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 4),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: <Widget>[
                                                    if (selectedCoinOne ==
                                                        "BTC")
                                                      SvgPicture.asset(
                                                        "assets/trade_clan_icons/bitcoin.svg",
                                                      ),
                                                    if (selectedCoinOne ==
                                                        "ETH")
                                                      SvgPicture.asset(
                                                        "assets/trade_clan_icons/eth.svg",
                                                      ),
                                                    const SizedBox(width: 12),
                                                    Text(
                                                      item,
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: const TextStyle(
                                                        color:
                                                            Color(0xFF141519),
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        overflow: TextOverflow
                                                            .ellipsis,
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
                                              (item) =>
                                                  DropdownMenuItem<String>(
                                                value: item,
                                                child: item == selectedCoinOne
                                                    ? Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .symmetric(
                                                                horizontal: 8),
                                                        child: Text(
                                                          item,
                                                          style:
                                                              const TextStyle(
                                                            color: Color(
                                                                0xFF141519),
                                                            fontSize: 20,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                          ),
                                                        ),
                                                      )
                                                    : Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .symmetric(
                                                                horizontal: 8),
                                                        child: Text(
                                                          item,
                                                          style:
                                                              const TextStyle(
                                                            color: Color(
                                                                0xFF141519),
                                                            fontSize: 20,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
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
                                          width: 150,
                                          elevation: 1,
                                          offset: const Offset(0, -10),
                                          decoration: BoxDecoration(
                                            color: whiteColor,
                                            borderRadius:
                                                BorderRadius.circular(11),
                                          ),
                                          scrollbarTheme: ScrollbarThemeData(
                                            radius: const Radius.circular(40),
                                            thickness:
                                                MaterialStateProperty.all(2),
                                            thumbVisibility:
                                                MaterialStateProperty.all(true),
                                          ),
                                        ),
                                        menuItemStyleData:
                                            const MenuItemStyleData(
                                          height: 35,
                                          padding: EdgeInsets.only(
                                              left: 10, right: 10),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 15),
                            Row(
                              children: <Widget>[
                                const Expanded(
                                  child: Text(
                                    "1 BTC ≈ 64795.55 USD",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: whiteColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                Row(
                                  children: <Widget>[
                                    const Text(
                                      "By",
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        color: Color(0xFF6B6F80),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Container(
                                      width: 150,
                                      margin: const EdgeInsets.only(left: 10),
                                      color: Colors.transparent,
                                      child: Theme(
                                        data: ThemeData(
                                          splashColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                        ),
                                        child: DropdownButtonHideUnderline(
                                          child: DropdownButton2(
                                            isExpanded: true,
                                            hint: const Text(
                                              "Topper",
                                              maxLines: 1,
                                              style: TextStyle(
                                                color: whiteColor,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w400,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ),
                                            iconStyleData: IconStyleData(
                                              icon: SvgPicture.asset(
                                                "assets/support_icons/down_side.svg",
                                                colorFilter:
                                                    const ColorFilter.mode(
                                                  whiteColor,
                                                  BlendMode.srcIn,
                                                ),
                                              ),
                                            ),
                                            selectedItemBuilder:
                                                (BuildContext context) {
                                              return topperTwoItems
                                                  .map<Widget>((String item) {
                                                return Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 4),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: <Widget>[
                                                        if (selectedTopper ==
                                                            "Topper")
                                                          Image.asset(
                                                            "assets/support_icons/topper.png",
                                                          ),
                                                        const SizedBox(
                                                            width: 12),
                                                        Text(
                                                          item,
                                                          textAlign:
                                                              TextAlign.start,
                                                          style:
                                                              const TextStyle(
                                                            color: whiteColor,
                                                            fontSize: 18,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                );
                                              }).toList();
                                            },
                                            items: topperTwoItems
                                                .map(
                                                  (item) =>
                                                      DropdownMenuItem<String>(
                                                    value: item,
                                                    child: item ==
                                                            selectedTopper
                                                        ? Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .symmetric(
                                                                    horizontal:
                                                                        8),
                                                            child: Text(
                                                              item,
                                                              style:
                                                                  const TextStyle(
                                                                color:
                                                                    whiteColor,
                                                                fontSize: 20,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                              ),
                                                            ),
                                                          )
                                                        : Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .symmetric(
                                                                    horizontal:
                                                                        8),
                                                            child: Text(
                                                              item,
                                                              style:
                                                                  const TextStyle(
                                                                color:
                                                                    whiteColor,
                                                                fontSize: 20,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                              ),
                                                            ),
                                                          ),
                                                  ),
                                                )
                                                .toList(),
                                            value: selectedTopper,
                                            onChanged: (value) {
                                              setState(() {
                                                selectedTopper =
                                                    value as String;
                                              });
                                            },
                                            buttonStyleData:
                                                const ButtonStyleData(
                                              height: 35,
                                              width: double.infinity,
                                              padding: EdgeInsets.only(
                                                left: 10,
                                                right: 10,
                                              ),
                                            ),
                                            dropdownStyleData:
                                                DropdownStyleData(
                                              maxHeight: 200,
                                              width: 150,
                                              elevation: 1,
                                              offset: const Offset(0, -10),
                                              decoration: BoxDecoration(
                                                color: mainBgColorTwo,
                                                borderRadius:
                                                    BorderRadius.circular(11),
                                              ),
                                              scrollbarTheme:
                                                  ScrollbarThemeData(
                                                radius:
                                                    const Radius.circular(40),
                                                thickness:
                                                    MaterialStateProperty.all(
                                                        2),
                                                thumbVisibility:
                                                    MaterialStateProperty.all(
                                                        true),
                                              ),
                                            ),
                                            menuItemStyleData:
                                                const MenuItemStyleData(
                                              height: 35,
                                              padding: EdgeInsets.only(
                                                  left: 10, right: 10),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          const Text(
                            "Repeat payment",
                            maxLines: 1,
                            style: TextStyle(
                              color: Color(0xFF6B6F80),
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          const SizedBox(width: 12),
                          SizedBox(
                            height: 20,
                            width: 37,
                            child: FittedBox(
                              fit: BoxFit.cover,
                              child: Switch(
                                value: isRepeatPaymentActive,
                                inactiveTrackColor: const Color(0xFFBBBFCC),
                                inactiveThumbColor: whiteColor,
                                trackOutlineColor:
                                    MaterialStateProperty.resolveWith(
                                  (final Set<MaterialState> states) {
                                    if (states
                                        .contains(MaterialState.selected)) {
                                      return null;
                                    }
                                    return const Color(0xFFBBBFCC);
                                  },
                                ),
                                activeTrackColor: const Color(0xFF0D59A7),
                                onChanged: (bool value) {
                                  setState(() {
                                    isRepeatPaymentActive =
                                        !isRepeatPaymentActive;
                                  });
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        "Pay using",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Color(0xFF6B6F80),
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Container(
                        height: 80,
                        width: double.infinity,
                        margin: const EdgeInsets.only(bottom: 20, top: 20),
                        decoration: BoxDecoration(
                          color: mainBgColorTwo,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: const Color(0xFFE6DCDC),
                            width: 1.37,
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
                              iconStyleData: IconStyleData(
                                icon: Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: SvgPicture.asset(
                                    "assets/support_icons/down_side1.svg",
                                    colorFilter: const ColorFilter.mode(
                                      whiteColor,
                                      BlendMode.srcIn,
                                    ),
                                  ),
                                ),
                              ),
                              selectedItemBuilder: (BuildContext context) {
                                return paymentTwoItems
                                    .map<Widget>((String item) {
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 4),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        if (selectedPayment == "P2P Payment")
                                          SvgPicture.asset(
                                            "assets/support_icons/p2p.svg",
                                          ),
                                        const SizedBox(width: 12),
                                        Expanded(
                                          child: Text(
                                            item,
                                            textAlign: TextAlign.start,
                                            style: const TextStyle(
                                              color: whiteColor,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                }).toList();
                              },
                              items: paymentTwoItems
                                  .map(
                                    (item) => DropdownMenuItem<String>(
                                      value: item,
                                      child: item == selectedPayment
                                          ? Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 8),
                                              child: Text(
                                                item,
                                                style: const TextStyle(
                                                  color: Color(0xFF141519),
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w600,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                              ),
                                            )
                                          : Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 8),
                                              child: Text(
                                                item,
                                                style: const TextStyle(
                                                  color: Color(0xFF141519),
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w400,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                              ),
                                            ),
                                    ),
                                  )
                                  .toList(),
                              value: selectedPayment,
                              onChanged: (value) {
                                setState(() {
                                  selectedPayment = value as String;
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
                                width: 150,
                                elevation: 1,
                                offset: const Offset(0, -10),
                                decoration: BoxDecoration(
                                  color: whiteColor,
                                  borderRadius: BorderRadius.circular(11),
                                ),
                                scrollbarTheme: ScrollbarThemeData(
                                  radius: const Radius.circular(40),
                                  thickness: MaterialStateProperty.all(2),
                                  thumbVisibility:
                                      MaterialStateProperty.all(true),
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
                      ButtonWidget(
                        text: "Buy BTC",
                        height: 80,
                        width: double.infinity,
                        btnColor: const Color(0xFF0D59A7),
                        borderColor: const Color(0xFF0D59A7),
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        textColor: whiteColor,
                        borderRadius: 12,
                        onPressed: () {},
                      ),
                    ],
                  ),
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
