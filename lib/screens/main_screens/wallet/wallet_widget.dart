import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trades_website/core/consts.dart';

//wallet text widget...
class WalletTextWidget extends StatelessWidget {
  final String text, subText;
  final double fontSize;
  final FontWeight fontWeight;
  final bool isShowIcon, isSubText;
  final String icon;
  final Color textColor;
  final int flex;
  final bool isCenter;

  const WalletTextWidget({
    super.key,
    required this.text,
    this.fontSize = 16,
    this.fontWeight = FontWeight.w700,
    this.isShowIcon = false,
    this.icon = "",
    this.textColor = textColorOne,
    required this.flex,
    this.subText = '',
    this.isSubText = false,
    this.isCenter = false,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: isCenter
          ? Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  if (isShowIcon)
                    SvgPicture.asset(
                      icon,
                      height: 42,
                      width: 42,
                    ),
                  if (isShowIcon) const SizedBox(width: 12),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        text,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: textColor,
                          fontSize: fontSize,
                          fontWeight: fontWeight,
                        ),
                      ),
                      if (isSubText)
                        Text(
                          subText,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            color: textColorOne,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                    ],
                  ),
                  const SizedBox(width: 5),
                ],
              ),
            )
          : Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          if (isShowIcon)
            SvgPicture.asset(
              icon,
              height: 42,
              width: 42,
            ),
          if (isShowIcon) const SizedBox(width: 12),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  text,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: textColor,
                    fontSize: fontSize,
                    fontWeight: fontWeight,
                  ),
                ),
                if (isSubText)
                  Text(
                    subText,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: textColorOne,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
              ],
            ),
          ),
          const SizedBox(width: 5),
        ],
      ),
    );
  }
}
