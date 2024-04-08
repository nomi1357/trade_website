import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_xlider/flutter_xlider.dart';

import '../../../core/clickable_widget.dart';
import '../../../core/consts.dart';

//header text...
class HeaderText extends StatelessWidget {
  final String text;
  final EdgeInsets padding;
  final Function()? onTapText;

  const HeaderText({
    Key? key,
    required this.text,
    this.padding = const EdgeInsets.only(left: 30),
    this.onTapText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWellWidget(
      onTap: onTapText,
      child: Padding(
        padding: padding,
        child: LocaleText(
          text,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: whiteColor,
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

//column data widget...
class ColumnDataWidget extends StatelessWidget {
  final String title, subTitle;
  final Color titleColor, subTitleColor;
  final double titleSize, subTitleSize;
  final FontWeight titleWeight, subTitleWeight;
  final bool isShowIcon, isGiveHeight;

  const ColumnDataWidget({
    Key? key,
    required this.title,
    required this.subTitle,
    this.titleColor = textColorOne,
    this.subTitleColor = whiteColor,
    this.titleSize = 8.76,
    this.subTitleSize = 10.22,
    this.titleWeight = FontWeight.w500,
    this.subTitleWeight = FontWeight.w700,
    this.isShowIcon = false,
    this.isGiveHeight = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 17.51),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: titleColor,
                  fontSize: titleSize,
                  fontWeight: titleWeight,
                ),
              ),
              if (isShowIcon) const SizedBox(width: 3),
              if (isShowIcon) SvgPicture.asset("assets/app_icons/arrow_up.svg"),
            ],
          ),
          if (isGiveHeight) const SizedBox(height: 3),
          Text(
            subTitle,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: subTitleColor,
              fontSize: subTitleSize,
              fontWeight: subTitleWeight,
            ),
          ),
        ],
      ),
    );
  }
}

//row data widget...
class RowDataWidget extends StatelessWidget {
  final String title, currency, amount;
  final bool isShowDownArrow;

  const RowDataWidget({
    Key? key,
    required this.title,
    this.currency = "USD",
    required this.amount,
    this.isShowDownArrow = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: whiteColor,
                  fontSize: 10.22,
                  fontWeight: FontWeight.w500,
                ),
              ),
              if (isShowDownArrow)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 3),
                  child: SvgPicture.asset("assets/app_icons/down_side3.svg"),
                ),
            ],
          ),
          Container(
            height: 22,
            width: 107,
            decoration: BoxDecoration(
              color: mainBgColorOne,
              border: Border.all(
                color: const Color(0xFF4F607B),
                width: 1,
              ),
            ),
            child: Row(
              children: <Widget>[
                Container(
                  height: 22,
                  width: 47,
                  decoration: const BoxDecoration(
                    color: Color(0xFF2C333E),
                    border: Border(
                      right: BorderSide(
                        color: Color(0xFF4F607B),
                        width: 1,
                      ),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      currency,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: textColorOne,
                        fontSize: 8,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 22,
                    color: mainBgColorTwo,
                    child: Center(
                      child: Text(
                        amount,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: whiteColor,
                          fontSize: 8,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

//buy sell button widget...
class BuySellButtonWidget extends StatelessWidget {
  final String text;
  final Color buttonColor;
  final Function()? onTapButton;

  const BuySellButtonWidget({
    Key? key,
    required this.text,
    this.onTapButton,
    required this.buttonColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 43,
      width: 84,
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(top: 6, right: 6),
              child: SvgPicture.asset("assets/app_icons/question_info.svg"),
            ),
          ),
          Text(
            text,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: whiteColor,
              fontSize: 10.22,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

//row cost data widget...
class RowCostDataWidget extends StatelessWidget {
  final String title, subTitle;
  final bool isShowUnderline;

  const RowCostDataWidget({
    Key? key,
    required this.title,
    required this.subTitle,
    this.isShowUnderline = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: Text(
              title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: whiteColor,
                fontSize: 10.22,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                subTitle,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: whiteColor,
                  decoration: isShowUnderline
                      ? TextDecoration.underline
                      : TextDecoration.none,
                  decorationColor: whiteColor,
                  fontSize: 10.22,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//check boxes widget...
class CheckBoxesWidget extends StatefulWidget {
  const CheckBoxesWidget({Key? key}) : super(key: key);

  @override
  State<CheckBoxesWidget> createState() => _CheckBoxesWidgetState();
}

class _CheckBoxesWidgetState extends State<CheckBoxesWidget> {
  bool isPost = false;
  bool isHidden = false;
  bool isReduce = false;

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return const Color(0xFF111A24);
    }
    return const Color(0xFF111A24);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 48,
      width: double.infinity,
      margin: const EdgeInsets.only(top: 3, bottom: 14),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: const Color(0xFF2E3848),
        borderRadius: BorderRadius.circular(2),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SizedBox(
                      height: 8,
                      width: 8,
                      child: Transform.scale(
                        scale: 0.7,
                        child: Checkbox(
                          checkColor: whiteColor,
                          fillColor:
                              MaterialStateProperty.resolveWith(getColor),
                          activeColor: const Color(0xFF111A24),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                          side: MaterialStateBorderSide.resolveWith(
                            (states) => const BorderSide(
                              width: 1.0,
                              color: whiteColor,
                            ),
                          ),
                          value: isPost,
                          onChanged: (bool? value) {
                            setState(() {
                              isPost = value!;
                            });
                          },
                        ),
                      ),
                    ),
                    const SizedBox(width: 4),
                    const Text(
                      "Post-Only",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: whiteColor,
                        fontSize: 10.22,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const Text(
                      "Hidden",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: whiteColor,
                        fontSize: 10.22,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(width: 4),
                    SizedBox(
                      height: 10.08,
                      width: 10.08,
                      child: Transform.scale(
                        scale: 0.7,
                        child: Checkbox(
                          checkColor: whiteColor,
                          fillColor:
                              MaterialStateProperty.resolveWith(getColor),
                          activeColor: const Color(0xFF111A24),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                          side: MaterialStateBorderSide.resolveWith(
                            (states) => const BorderSide(
                              width: 1.0,
                              color: whiteColor,
                            ),
                          ),
                          value: isHidden,
                          onChanged: (bool? value) {
                            setState(() {
                              isHidden = value!;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const Text(
                      "GoodTillCancel",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: whiteColor,
                        fontSize: 10.22,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(width: 3),
                    SvgPicture.asset(
                      "assets/app_icons/down_side1.svg",
                      colorFilter: const ColorFilter.mode(
                        whiteColor,
                        BlendMode.srcIn,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const Text(
                      "Reduce-Only",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: whiteColor,
                        fontSize: 10.22,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(width: 4),
                    SizedBox(
                      height: 10.08,
                      width: 10.08,
                      child: Transform.scale(
                        scale: 0.7,
                        child: Checkbox(
                          checkColor: whiteColor,
                          fillColor:
                              MaterialStateProperty.resolveWith(getColor),
                          activeColor: const Color(0xFF111A24),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                          side: MaterialStateBorderSide.resolveWith(
                            (states) => const BorderSide(
                              width: 1.0,
                              color: whiteColor,
                            ),
                          ),
                          value: isReduce,
                          onChanged: (bool? value) {
                            setState(() {
                              isReduce = value!;
                            });
                          },
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
    );
  }
}

//slider widget...
class SliderWidget extends StatefulWidget {
  const SliderWidget({Key? key}) : super(key: key);

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  double handlerValue = 70;
  int selectedSlideIndex = 0;
  List<String> slideList = [
    "Cross",
    "1x",
    "5x",
    "6x",
    "8x",
    "12x",
    "20x",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 14),
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: const Color(0xFF2E3848),
        borderRadius: BorderRadius.circular(2),
      ),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const Text(
                "Your Position: BTRUSD",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: whiteColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SvgPicture.asset("assets/app_icons/question_info.svg"),
                  const SizedBox(width: 6),
                  SvgPicture.asset("assets/app_icons/down_side2.svg"),
                ],
              ),
            ],
          ),
          Row(
            children: <Widget>[
              const Flexible(
                child: Text(
                  "9.74x",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: whiteColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(width: 6),
              SvgPicture.asset("assets/app_icons/edit.svg"),
            ],
          ),
          SizedBox(
            height: 20,
            child: FlutterSlider(
              handlerHeight: 15,
              handlerWidth: 5,
              handler: FlutterSliderHandler(
                child: const SizedBox(),
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
              tooltip: FlutterSliderTooltip(
                textStyle: const TextStyle(
                  color: whiteColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
                boxStyle: FlutterSliderTooltipBox(
                  decoration: BoxDecoration(
                    color: mainBgColorTwo,
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
              trackBar: FlutterSliderTrackBar(
                activeTrackBarHeight: 8,
                inactiveTrackBarHeight: 8,
                activeTrackBar: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  gradient: const LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color(0xFFFF4158),
                      Color(0xFFFD7A02),
                    ],
                  ),
                ),
                inactiveTrackBar: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  gradient: const LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color(0xFFFF4158),
                      Color(0xFFFD7A02),
                    ],
                  ),
                ),
              ),
              values: [handlerValue],
              max: 100,
              min: 0,
              onDragging: (handlerIndex, lowerValue, upperValue) {
                setState(() {
                  handlerValue = lowerValue;
                });
              },
            ),
          ),
          Container(
            height: 15,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 6),
            margin: const EdgeInsets.only(top: 5),
            decoration: BoxDecoration(
              color: const Color(0xFF3B4756),
              borderRadius: BorderRadius.circular(3),
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                  slideList.length,
                  (index) {
                    return InkWellWidget(
                      onTap: () {
                        setState(() {
                          selectedSlideIndex = index;
                        });
                      },
                      child: selectedSlideIndex == index
                          ? Container(
                              height: 15,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 6),
                              decoration: BoxDecoration(
                                color: const Color(0xFF0F1723),
                                borderRadius: BorderRadius.circular(3),
                              ),
                              child: Text(
                                slideList[index],
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  color: whiteColor,
                                  fontSize: 8.76,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            )
                          : Text(
                              slideList[index],
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                color: whiteColor,
                                fontSize: 8.76,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//row trader data widget...
class RowTradeDataWidget extends StatelessWidget {
  final String title, subTitle;

  const RowTradeDataWidget({
    Key? key,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            title,
            maxLines: 1,
            softWrap: true,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: textColorOne,
              fontSize: 10.22,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(width: 7),
          const Expanded(
            child: MySeparator(),
          ),
          const SizedBox(width: 7),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              subTitle,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: whiteColor,
                fontSize: 10.22,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//dotted line...
class MySeparator extends StatelessWidget {
  const MySeparator({
    Key? key,
    this.height = 2,
  }) : super(key: key);
  final double height;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final boxWidth = constraints.constrainWidth();
        const dashWidth = 2.0;
        final dashHeight = height;
        final dashCount = (boxWidth / (2 * dashWidth)).floor();
        return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
          children: List.generate(dashCount, (_) {
            return SizedBox(
              width: dashWidth,
              height: dashHeight,
              child: const DecoratedBox(
                decoration: BoxDecoration(
                  color: textColorOne,
                  shape: BoxShape.circle,
                ),
              ),
            );
          }),
        );
      },
    );
  }
}

//bottom text widget...
class BottomTextWidget extends StatelessWidget {
  final String text;
  final bool isShowUnderline;
  final double fontSize;
  final FontWeight fontWeight;

  const BottomTextWidget({
    Key? key,
    required this.text,
    this.isShowUnderline = false,
    this.fontSize = 14,
    this.fontWeight = FontWeight.w400,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text(
        text,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.center,
        style: TextStyle(
          decoration:
              isShowUnderline ? TextDecoration.underline : TextDecoration.none,
          decorationColor: whiteColor,
          color: whiteColor,
          fontSize: fontSize,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}

//order bool design...
class OrderBookWidget extends StatelessWidget {
  final String price, size, total;
  final bool isHeader;
  final Color barColor;
  final double barWidth;

  const OrderBookWidget({
    Key? key,
    this.price = "Price",
    this.size = "Size (USD)",
    this.total = "Total (USD)",
    this.isHeader = true,
    this.barColor = const Color(0xFF145D4A),
    this.barWidth = 100,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 13.13,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
        color: isHeader ? mainBgColorTwo : const Color(0xFF252F3B),
      ),
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    price,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: isHeader ? textColorOne : const Color(0xFF00DA85),
                      fontSize: 8.76,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    size,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: isHeader ? textColorOne : const Color(0xFF00DA85),
                      fontSize: 8.76,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Stack(
                children: <Widget>[
                  if (!isHeader)
                    Container(
                      height: 9.49,
                      width: barWidth,
                      color: barColor,
                      margin: const EdgeInsets.only(left: 7),
                    ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      total,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color:
                            isHeader ? textColorOne : const Color(0xFF00DA85),
                        fontSize: 8.76,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//recent trade design...
class RecentTradeWidget extends StatelessWidget {
  final String price, size, time;
  final bool isS;
  final Color lineColor;

  const RecentTradeWidget({
    Key? key,
    required this.price,
    required this.size,
    required this.time,
    this.isS = true,
    required this.lineColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 13.13,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
        // color: isS ? mainBgColorTwo : const Color(0xFF252F3B),
        color: lineColor,
      ),
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                height: double.infinity,
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 3),
                decoration: const BoxDecoration(
                  border: Border(
                    right: BorderSide(
                      color: Color(0xFF191919),
                      width: 0.73,
                    ),
                  ),
                ),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    price,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: isS ? redColorTwo : greenColorTwo,
                      fontSize: 8.76,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                height: double.infinity,
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 3),
                decoration: const BoxDecoration(
                  border: Border(
                    right: BorderSide(
                      color: Color(0xFF191919),
                      width: 0.73,
                    ),
                  ),
                ),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    size,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: isS ? redColorTwo : greenColorTwo,
                      fontSize: 8.76,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                height: double.infinity,
                width: double.infinity,
                margin: const EdgeInsets.only(right: 3),
                padding: const EdgeInsets.symmetric(horizontal: 3),
                decoration: const BoxDecoration(
                  border: Border(
                    right: BorderSide(
                      color: Color(0xFF191919),
                      width: 0.73,
                    ),
                  ),
                ),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    time,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: isS ? redColorTwo : greenColorTwo,
                      fontSize: 8.76,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            Text(
              isS ? "S" : "B",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: isS ? redColorTwo : greenColorTwo,
                fontSize: 8.76,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//selected widget...
class SelectedWidget extends StatelessWidget {
  final String title;
  final Function()? onTap;
  final bool isSelected;

  const SelectedWidget({
    Key? key,
    required this.title,
    this.onTap,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWellWidget(
      onTap: onTap,
      child: Container(
        height: 18.34,
        padding: const EdgeInsets.fromLTRB(8, 3, 8, 0),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFF1D59F2) : blackColor,
          borderRadius: BorderRadius.circular(58.38),
        ),
        child: Text(
          title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: whiteColor,
            fontSize: 8.76,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
