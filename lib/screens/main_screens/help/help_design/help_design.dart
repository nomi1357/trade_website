import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trades_website/core/consts.dart';

class HelpDesign extends StatefulWidget {
  const HelpDesign({Key? key}) : super(key: key);

  @override
  State<HelpDesign> createState() => _HelpDesignState();
}

class _HelpDesignState extends State<HelpDesign> {
  TextEditingController mySearchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 227,
      width: double.infinity,
      margin: const EdgeInsets.only(top: 35, bottom: 30),
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        color: blackColor.withOpacity(.20),
        borderRadius: BorderRadius.circular(20),
        image: const DecorationImage(
          image: AssetImage("assets/trade_clan_icons/trade1.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Text(
              "How can we help?",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: whiteColor,
                fontSize: 32,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              height: 40,
              width: 600,
              child: TextField(
                controller: mySearchController,
                maxLines: 1,
                style: const TextStyle(
                  color: whiteColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  fillColor: mainBgColorTwo,
                  filled: true,
                  hintText: "Search TRADERS FAQs",
                  hintStyle: const TextStyle(
                    color: whiteColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                  prefixIcon:
                      SvgPicture.asset("assets/trade_clan_icons/search.svg"),
                  prefixIconConstraints: const BoxConstraints(
                    minHeight: 10,
                    minWidth: 55,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(
                      color: Color(0xFFDDDDDD),

                      width: 1,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(
                      color: Color(0xFFDDDDDD),
                      width: 1,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(
                      color: Color(0xFFDDDDDD),

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
    );
  }
}
