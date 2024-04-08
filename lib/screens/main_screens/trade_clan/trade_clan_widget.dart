import 'package:flutter/material.dart';
import 'package:trades_website/core/consts.dart';

//clan column widget...
class ClanColumnWidget extends StatelessWidget {
  final String title, subTitle;

  const ClanColumnWidget({
    super.key,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: whiteColor,
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          subTitle,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: textColorOne,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}

//clan text widget...
class ClanTextWidget extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final bool isUnderline, isShowIcon;
  final String icon;
  final Color textColor;
  final int flex;

  const ClanTextWidget({
    super.key,
    required this.text,
    this.fontSize = 11.56,
    this.fontWeight = FontWeight.w500,
    this.isUnderline = false,
    this.isShowIcon = false,
    this.icon = "",
    this.textColor = whiteColor,
    required this.flex,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          if (isShowIcon) Image.asset(icon),
          if (isShowIcon) const SizedBox(width: 6),
          Text(
            text,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: textColor,
              fontSize: fontSize,
              fontWeight: fontWeight,
              decorationColor: whiteColor,
              decoration:
              isUnderline ? TextDecoration.underline : TextDecoration.none,
            ),
          ),
          const SizedBox(width: 5),
        ],
      ),
    );
  }
}

