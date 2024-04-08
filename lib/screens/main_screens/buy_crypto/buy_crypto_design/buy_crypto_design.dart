import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trades_website/core/button_widget.dart';
import 'package:trades_website/core/consts.dart';
import 'package:trades_website/screens/main_screens/buy_crypto/buy_crypto_widget.dart';

class BuyCryptoDesign extends StatefulWidget {
  const BuyCryptoDesign({Key? key}) : super(key: key);

  @override
  State<BuyCryptoDesign> createState() => _BuyCryptoDesignState();
}

enum PaymentMethod { card, bank, other }

class _BuyCryptoDesignState extends State<BuyCryptoDesign> {
  TextEditingController myCardNumberController = TextEditingController();
  TextEditingController myDateController = TextEditingController();
  TextEditingController myCVVController = TextEditingController();
  PaymentMethod paymentMethodSelected = PaymentMethod.card;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
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
                "Buy Crypto",
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
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  height: 462,
                  width: 557,
                  margin: const EdgeInsets.only(bottom: 26),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
                  decoration: BoxDecoration(
                    color: mainBgColorOne,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text(
                        "Payment Methods",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: whiteColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      RadioWidget(
                        images: "assets/app_images/buy.png",
                        title: "Credit/Debit Cards",
                        subTitle: "Pay with your Credit / Debit Card",
                        paymentMethod: PaymentMethod.card,
                        paymentMethodSelected: paymentMethodSelected,
                        onChanged: (PaymentMethod? value) {
                          setState(() {
                            paymentMethodSelected = value!;
                          });
                        },
                        onTap: () {
                          setState(() {
                            paymentMethodSelected = PaymentMethod.card;
                          });
                        },
                      ),
                      RadioWidget(
                        isShowIcon: false,
                        title: "Direct Bank Transfer",
                        subTitle: "Make payment directly through bank account.",
                        paymentMethod: PaymentMethod.bank,
                        paymentMethodSelected: paymentMethodSelected,
                        onChanged: (PaymentMethod? value) {
                          setState(() {
                            paymentMethodSelected = value!;
                          });
                        },
                        onTap: () {
                          setState(() {
                            paymentMethodSelected = PaymentMethod.bank;
                          });
                        },
                      ),
                      RadioWidget(
                        images: "assets/app_images/buy1.png",
                        title: "Direct Bank Transfer",
                        subTitle: "Make payment directly through bank account.",
                        paymentMethod: PaymentMethod.other,
                        paymentMethodSelected: paymentMethodSelected,
                        onChanged: (PaymentMethod? value) {
                          setState(() {
                            paymentMethodSelected = value!;
                          });
                        },
                        onTap: () {
                          setState(() {
                            paymentMethodSelected = PaymentMethod.other;
                          });
                        },
                      ),
                      const SizedBox(height: 30),
                      FieldWidget(
                        hintText: "Card Number",
                        icon: "assets/trade_clan_icons/card.svg",
                        myController: myCardNumberController,
                      ),
                      const SizedBox(height: 12),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: FieldWidget(
                              hintText: "MM / YY",
                              icon: "assets/trade_clan_icons/date.svg",
                              myController: myDateController,
                            ),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: FieldWidget(
                              hintText: "CVV",
                              icon: "assets/trade_clan_icons/lock.svg",
                              myController: myCVVController,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 557,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      ButtonWidget(
                        text: "Back",
                        height: 46,
                        width: 136,
                        btnColor: whiteColor,
                        borderColor: const Color(0xFF6B72D6),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        textColor: const Color(0xFF0D59A7),
                        borderRadius: 4,
                        onPressed: () {},
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: ButtonWidget(
                          text: "Buy Now",
                          height: 46,
                          width: double.infinity,
                          btnColor: const Color(0xFF0D59A7),
                          borderColor: const Color(0xFF0D59A7),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          textColor: const Color(0xFFFAFAFA),
                          borderRadius: 4,
                          onPressed: () {},
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

