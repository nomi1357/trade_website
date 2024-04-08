import 'package:flutter/material.dart';
import 'package:trades_website/core/consts.dart';

//convert text widget...
class ConvertTextWidget extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color textColor;
  final bool isLeftPadding;

  const ConvertTextWidget({
    super.key,
    required this.text,
    this.fontSize = 14,
    this.fontWeight = FontWeight.w400,
    this.textColor = whiteColor,
    this.isLeftPadding = true,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.only(left: isLeftPadding ? 8 : 0),
        child: Text(
          text,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: textColor,
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
        ),
      ),
    );
  }
}
