import 'package:flutter/material.dart';
import 'package:trades_website/core/button_widget.dart';
import 'package:trades_website/core/consts.dart';
import 'package:trades_website/screens/main_screens/wallet/wallet_widget.dart';

class WalletListDesign extends StatelessWidget {
  const WalletListDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 40),
          child: Row(
            children: <Widget>[
              WalletTextWidget(
                flex: 2,
                text: "Coin",
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
              WalletTextWidget(
                flex: 2,
                text: "Equity(\$)",
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
              WalletTextWidget(
                flex: 2,
                text: "Cash Balance",
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
              WalletTextWidget(
                flex: 2,
                text: "WithDrawable Balance",
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
              WalletTextWidget(
                flex: 6,
                text: "Actions",
                fontSize: 14,
                fontWeight: FontWeight.w600,
                isCenter: true,
              ),
            ],
          ),
        ),
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          primary: false,
          shrinkWrap: true,
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                height: 80,
                width: 1386,
                margin: const EdgeInsets.only(bottom: 30),
                decoration: BoxDecoration(
                  color: mainBgColorTwo,
                  border: Border(
                    top: BorderSide(
                      color: whiteColor.withOpacity(.35),
                      width: 0.5,
                    ),
                    bottom: BorderSide(
                      color: whiteColor.withOpacity(.35),
                      width: 0.5,
                    ),
                  ),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const WalletTextWidget(
                        flex: 2,
                        text: "Bitcoin",
                        subText: "BTC",
                        isSubText: true,
                        icon: "assets/trade_clan_icons/bitcoin.svg",
                        isShowIcon: true,
                        textColor: whiteColor,
                      ),
                      const WalletTextWidget(
                        flex: 2,
                        text: "0.53553",
                      ),
                      const WalletTextWidget(
                        flex: 2,
                        text: "\$124.4",
                      ),
                      const WalletTextWidget(
                        flex: 2,
                        text: "\$2000",
                      ),
                      Expanded(
                        flex: 8,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            ButtonWidget(
                              text: "Deposit",
                              height: 44,
                              width: 108,
                              btnColor: mainBgColorOne,
                              borderColor: mainBgColorOne,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              textColor: textColorOne,
                              borderRadius: 4,
                              onPressed: () {},
                            ),
                            const SizedBox(width: 18),
                            ButtonWidget(
                              text: "Withdraw",
                              height: 44,
                              width: 108,
                              btnColor: mainBgColorOne,
                              borderColor: mainBgColorOne,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              textColor: textColorOne,
                              borderRadius: 4,
                              onPressed: () {},
                            ),
                            const SizedBox(width: 18),
                            ButtonWidget(
                              text: "Transfer",
                              height: 44,
                              width: 108,
                              btnColor: mainBgColorOne,
                              borderColor: mainBgColorOne,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              textColor: textColorOne,
                              borderRadius: 4,
                              onPressed: () {},
                            ),
                            const SizedBox(width: 18),
                            ButtonWidget(
                              text: "Trade",
                              height: 44,
                              width: 108,
                              btnColor: mainBgColorOne,
                              borderColor: mainBgColorOne,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              textColor: textColorOne,
                              borderRadius: 4,
                              onPressed: () {},
                            ),
                            const SizedBox(width: 18),
                            ButtonWidget(
                              text: "Buy",
                              height: 44,
                              width: 108,
                              btnColor: mainBgColorOne,
                              borderColor: mainBgColorOne,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              textColor: textColorOne,
                              borderRadius: 4,
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
