import 'package:flutter/material.dart';
import 'package:trades_website/core/clickable_widget.dart';
import 'package:trades_website/core/consts.dart';

//title widget...
class TitleWidget extends StatelessWidget {
  final String text;

  const TitleWidget({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18, bottom: 12),
      child: Text(
        text,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(
          color: textColorOne,
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

//selected title widget...
class SelectedTitleWidget extends StatelessWidget {
  final String text;
  final bool isSelected;
  final Function()? onTap;

  const SelectedTitleWidget({
    super.key,
    required this.text,
    required this.isSelected,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWellWidget(
      onTap: onTap,
      child: Container(
        height: 40,
        width: double.infinity,
        padding: const EdgeInsets.only(left: 18, right: 18),
        margin: const EdgeInsets.only(bottom: 1),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFF3B4756) : const Color(0xFF1D2631),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Text(
                text,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: whiteColor,
                  fontSize: 14,
                  fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
                ),
              ),
            ),
            if (isSelected) const SizedBox(width: 5),
            if (isSelected)
              Text(
                "•",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: whiteColor,
                  fontSize: 14,
                  fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
                ),
              ),
          ],
        ),
      ),
    );
  }
}

//title inside widget...
class TitleInsideWidget extends StatelessWidget {
  final String text;

  const TitleInsideWidget({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Text(
        text,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(
          color: whiteColor,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

//underline text widget...
class UnderlineTitleWidget extends StatelessWidget {
  final String text;

  const UnderlineTitleWidget({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: Text(
        text,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(
          color: whiteColor,
          fontSize: 14,
          fontWeight: FontWeight.w400,
          decorationColor: whiteColor,
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }
}
