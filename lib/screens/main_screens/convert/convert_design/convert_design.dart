import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trades_website/core/button_widget.dart';
import 'package:trades_website/core/consts.dart';

class ConvertDesign extends StatefulWidget {
  const ConvertDesign({Key? key}) : super(key: key);

  @override
  State<ConvertDesign> createState() => _ConvertDesignState();
}

class _ConvertDesignState extends State<ConvertDesign> {
  TextEditingController myCoinController = TextEditingController();
  TextEditingController myAmountController = TextEditingController();
  String selectedCoin = '';

  final List<String> coinItems = [
    "XBT",
    "XBT1",
  ];

  String selectedCurrency = '';

  final List<String> currencyItems = [
    "USDT",
  ];

  @override
  void initState() {
    selectedCoin = coinItems[0];
    selectedCurrency = currencyItems[0];
    myCoinController.text = "0.00015–5";
    myAmountController.text = "10–350,000";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 586,
      width: double.infinity,
      decoration: BoxDecoration(
        color: mainBgColorTwo,
        border: Border.all(
          color: const Color(0xFF333D4E),
          width: 1,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 45,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 33),
            decoration: BoxDecoration(
              color: const Color(0xFF1D2631),
              borderRadius: BorderRadius.circular(3),
              border: const Border(
                bottom: BorderSide(
                  color: Color(0xFF333D4E),
                  width: 1,
                ),
              ),
            ),
            child: const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Convert",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: whiteColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(22, 45, 22, 45),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            height: 35,
                            width: double.infinity,
                            margin: const EdgeInsets.only(right: 50),
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(
                                color: const Color(0xFF4F607B),
                                width: 1,
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
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  iconStyleData: IconStyleData(
                                    icon: SvgPicture.asset(
                                      "assets/app_icons/down_side.svg",
                                    ),
                                  ),
                                  selectedItemBuilder: (BuildContext context) {
                                    return coinItems.map<Widget>((String item) {
                                      return Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10),
                                          child: Text(
                                            item,
                                            textAlign: TextAlign.start,
                                            style: const TextStyle(
                                              color: whiteColor,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                        ),
                                      );
                                    }).toList();
                                  },
                                  items: coinItems
                                      .map(
                                        (item) => DropdownMenuItem<String>(
                                          value: item,
                                          child: item == selectedCoin
                                              ? Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(horizontal: 8),
                                                  child: Text(
                                                    item,
                                                    style: const TextStyle(
                                                      color: whiteColor,
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    ),
                                                  ),
                                                )
                                              : Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(horizontal: 8),
                                                  child: Text(
                                                    item,
                                                    style: const TextStyle(
                                                      color: whiteColor,
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    ),
                                                  ),
                                                ),
                                        ),
                                      )
                                      .toList(),
                                  value: selectedCoin,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedCoin = value as String;
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
                                      thumbVisibility:
                                          MaterialStateProperty.all(true),
                                    ),
                                  ),
                                  menuItemStyleData: const MenuItemStyleData(
                                    height: 35,
                                    padding:
                                        EdgeInsets.only(left: 10, right: 10),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 70),
                          Container(
                            height: 35,
                            width: double.infinity,
                            margin: const EdgeInsets.only(right: 50),
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(
                                color: const Color(0xFF4F607B),
                                width: 1,
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
                                    "Currency",
                                    maxLines: 1,
                                    style: TextStyle(
                                      color: whiteColor,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  iconStyleData: IconStyleData(
                                    icon: SvgPicture.asset(
                                      "assets/app_icons/down_side.svg",
                                    ),
                                  ),
                                  selectedItemBuilder: (BuildContext context) {
                                    return currencyItems
                                        .map<Widget>((String item) {
                                      return Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10),
                                          child: Text(
                                            item,
                                            textAlign: TextAlign.start,
                                            style: const TextStyle(
                                              color: whiteColor,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                        ),
                                      );
                                    }).toList();
                                  },
                                  items: currencyItems
                                      .map(
                                        (item) => DropdownMenuItem<String>(
                                          value: item,
                                          child: item == selectedCurrency
                                              ? Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(horizontal: 8),
                                                  child: Text(
                                                    item,
                                                    style: const TextStyle(
                                                      color: whiteColor,
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    ),
                                                  ),
                                                )
                                              : Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(horizontal: 8),
                                                  child: Text(
                                                    item,
                                                    style: const TextStyle(
                                                      color: whiteColor,
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    ),
                                                  ),
                                                ),
                                        ),
                                      )
                                      .toList(),
                                  value: selectedCurrency,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedCurrency = value as String;
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
                                      thumbVisibility:
                                          MaterialStateProperty.all(true),
                                    ),
                                  ),
                                  menuItemStyleData: const MenuItemStyleData(
                                    height: 35,
                                    padding:
                                        EdgeInsets.only(left: 10, right: 10),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 50),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            height: 35,
                            child: TextField(
                              controller: myCoinController,
                              maxLines: 1,
                              style: TextStyle(
                                color: const Color(0xFF757575).withOpacity(.40),
                                fontSize: 14.53,
                                fontWeight: FontWeight.w400,
                              ),
                              textInputAction: TextInputAction.done,
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                fillColor: mainBgColorTwo,
                                filled: true,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(4),
                                  borderSide: BorderSide(
                                    color: const Color(0xFF4F607B)
                                        .withOpacity(.40),
                                    width: 1,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(4),
                                  borderSide: BorderSide(
                                    color: const Color(0xFF4F607B)
                                        .withOpacity(.40),
                                    width: 1,
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(4),
                                  borderSide: BorderSide(
                                    color: const Color(0xFF4F607B)
                                        .withOpacity(.40),
                                    width: 1,
                                  ),
                                ),
                                contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                  // vertical: 13.5,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 19.5),
                          SvgPicture.asset("assets/app_icons/convert.svg"),
                          const SizedBox(height: 19.5),
                          SizedBox(
                            height: 35,
                            child: TextField(
                              controller: myAmountController,
                              maxLines: 1,
                              style: const TextStyle(
                                color: Color(0xFF757575),
                                fontSize: 14.53,
                                fontWeight: FontWeight.w400,
                              ),
                              textInputAction: TextInputAction.done,
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                fillColor: mainBgColorTwo,
                                filled: true,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(4),
                                  borderSide: const BorderSide(
                                    color: Color(0xFF4F607B),
                                    width: 1,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(4),
                                  borderSide: const BorderSide(
                                    color: Color(0xFF4F607B),
                                    width: 1,
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(4),
                                  borderSide: const BorderSide(
                                    color: Color(0xFF4F607B),
                                    width: 1,
                                  ),
                                ),
                                contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                  // vertical: 13.5,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 85),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Text(
                      "Frequently Asked Questions",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: whiteColor,
                        fontSize: 22.8,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    ButtonWidget(
                      text: "Get quote",
                      height: 50,
                      width: 104,
                      btnColor: const Color(0xFF0D59A7).withOpacity(.40),
                      borderColor: const Color(0xFF0D59A7).withOpacity(.40),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      textColor: whiteColor,
                      borderRadius: 4,
                      onPressed: () {},
                    ),
                  ],
                ),
                const SizedBox(height: 9),
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "What is Convert?",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: whiteColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 11),
                      Text(
                        "Will I be charged any fees for a conversion?",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: whiteColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 11),
                      Text(
                        "When will I receive the cryptocurrency I have converted?",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: whiteColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 11),
                      Text(
                        "Where can I view my conversion history?",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: whiteColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 11),
                      Text(
                        "Who should I contact if I need to speak to someone from customer support?",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: whiteColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
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
