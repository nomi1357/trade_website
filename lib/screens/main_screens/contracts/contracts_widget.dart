import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trades_website/core/consts.dart';

//convert text widget...
class ContractsTextWidget extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color textColor;
  final double isLeftPadding;
  final bool isHeading;

  const ContractsTextWidget({
    super.key,
    required this.text,
    this.fontSize = 14,
    this.fontWeight = FontWeight.w400,
    this.textColor = whiteColor,
    this.isLeftPadding = 0,
    this.isHeading = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.only(left: isLeftPadding),
        child: Text(
          text,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: textColor,
            fontSize: isHeading ? fontSize : 13,
            fontWeight: fontWeight,
          ),
        ),
      ),
    );
  }
}

//contract title widget...
class ContractTitleWidget extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;

  const ContractTitleWidget({
    super.key,
    required this.text,
    this.fontSize = 23,
    this.fontWeight = FontWeight.w700,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 13),
      child: Text(
        text,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          color: whiteColor,
          fontSize: fontSize,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}

//contract items widget...
class ContractItemsWidget extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final bool isUnderline, isShowIcon;
  final String icon;
  final Color textColor, boxColor;
  final int flex;

  const ContractItemsWidget({
    super.key,
    required this.text,
    this.fontSize = 14,
    this.fontWeight = FontWeight.w400,
    this.isUnderline = false,
    this.isShowIcon = false,
    this.icon = "",
    this.textColor = whiteColor,
    required this.boxColor,
    required this.flex,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Container(
        height: 40,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          color: boxColor,
          border: Border.all(
            color: const Color(0xFF333D4E),
            width: 1,
          ),
        ),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              if (isShowIcon) Image.asset(icon),
              if (isShowIcon) const SizedBox(width: 6),
              Expanded(
                child: Text(
                  text,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: textColor,
                    fontSize: fontSize,
                    fontWeight: fontWeight,
                    decorationColor: whiteColor,
                    decoration: isUnderline
                        ? TextDecoration.underline
                        : TextDecoration.none,
                  ),
                ),
              ),
              const SizedBox(width: 5),
            ],
          ),
        ),
      ),
    );
  }
}
