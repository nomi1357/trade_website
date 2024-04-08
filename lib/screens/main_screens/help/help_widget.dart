import 'package:flutter/material.dart';
import 'package:trades_website/core/consts.dart';

//knowledge widget...
class KnowledgeWidget extends StatelessWidget {
  final String text;

  const KnowledgeWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(4),
        border: Border.all(
          color: const Color(0xFFDDDDDD),
          width: 1,
        ),
      ),
      child: Align(
        alignment: Alignment.centerLeft,
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
      ),
    );
  }
}

//help text widget...
class HelpTextWidget extends StatelessWidget {
  final String text;

  const HelpTextWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text(
        text,
        maxLines: 3,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(
          color: Color(0xFF0D59A7),
          fontSize: 16,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
