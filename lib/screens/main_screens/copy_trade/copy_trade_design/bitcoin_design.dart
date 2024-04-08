import 'package:flutter/material.dart';
import 'package:trades_website/core/button_widget.dart';
import 'package:trades_website/core/consts.dart';

class BitcoinDesign extends StatelessWidget {
  final Function()? onApplyTab;

  const BitcoinDesign({Key? key, this.onApplyTab}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 68,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 80),
      decoration: BoxDecoration(
        color: const Color(0xFF0D59A7).withOpacity(.12),
      ),
      child: Center(
        child: Row(
          children: <Widget>[
            Image.asset("assets/copy_trade_icons/btc.png"),
            const SizedBox(width: 16),
            const Expanded(
              child: Text(
                "Be a Lead Trader, enjoy 25% profit share!",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Color(0xFFEAECEF),
                  fontSize: 19,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(width: 16),
            ButtonWidget(
              text: "Register",
              height: 32,
              width: 93,
              btnColor: blueColor,
              borderColor: blueColor,
              fontSize: 13.34,
              fontWeight: FontWeight.w500,
              textColor: whiteColor,
              borderRadius: 6,
              onPressed: onApplyTab,
            ),
          ],
        ),
      ),
    );
  }
}
