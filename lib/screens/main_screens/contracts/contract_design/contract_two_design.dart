import 'package:flutter/material.dart';
import 'package:trades_website/screens/main_screens/contracts/contracts_widget.dart';

import '../../../../core/consts.dart';

class ContractTwoDesign extends StatelessWidget {
  const ContractTwoDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const ContractTitleWidget(
          text: "List Of Contracts",
          fontSize: 15,
        ),
        const ContractTitleWidget(
          text: "Inverse Contracts",
          fontSize: 11,
        ),
        const Row(
          children: [
            ContractItemsWidget(
              flex: 1,
              text: "Contract",
              fontSize: 15,
              fontWeight: FontWeight.w700,
              textColor: textColorOne,
              boxColor: mainBgColorOne,
            ),
            ContractItemsWidget(
              flex: 1,
              text: "Contract Specs",
              fontSize: 15,
              fontWeight: FontWeight.w700,
              textColor: textColorOne,
              boxColor: mainBgColorOne,
            ),
            ContractItemsWidget(
              flex: 1,
              text: "Listed",
              fontSize: 15,
              fontWeight: FontWeight.w700,
              textColor: textColorOne,
              boxColor: mainBgColorOne,
            ),
            ContractItemsWidget(
              flex: 1,
              text: "Index",
              fontSize: 15,
              fontWeight: FontWeight.w700,
              textColor: textColorOne,
              boxColor: mainBgColorOne,
            ),
            ContractItemsWidget(
              flex: 1,
              text: "Payout Type",
              fontSize: 15,
              fontWeight: FontWeight.w700,
              textColor: textColorOne,
              boxColor: mainBgColorOne,
            ),
            ContractItemsWidget(
              flex: 1,
              text: "Max Leverage",
              fontSize: 15,
              fontWeight: FontWeight.w700,
              textColor: textColorOne,
              boxColor: mainBgColorOne,
            ),
            ContractItemsWidget(
              flex: 1,
              text: "Multiplier",
              fontSize: 15,
              fontWeight: FontWeight.w700,
              textColor: textColorOne,
              boxColor: mainBgColorOne,
            ),
          ],
        ),
        Column(
          children: List.generate(4, (index) {
            return Row(
              children: <Widget>[
                ContractItemsWidget(
                  flex: 1,
                  text: "XBTETH",
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  isUnderline: true,
                  textColor: whiteColor,
                  boxColor: index.isOdd ? mainBgColorOne : mainBgColorTwo,
                ),
                ContractItemsWidget(
                  flex: 1,
                  text: "XBTETH details",
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  isUnderline: true,
                  textColor: whiteColor,
                  boxColor: index.isOdd ? mainBgColorOne : mainBgColorTwo,
                ),
                ContractItemsWidget(
                  flex: 1,
                  text: "8/1/2023",
                  boxColor: index.isOdd ? mainBgColorOne : mainBgColorTwo,
                ),
                ContractItemsWidget(
                  flex: 1,
                  text: "CTBBTC",
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  isUnderline: true,
                  textColor: whiteColor,
                  boxColor: index.isOdd ? mainBgColorOne : mainBgColorTwo,
                ),
                ContractItemsWidget(
                  flex: 1,
                  text: "Inverse Perpetual",
                  boxColor: index.isOdd ? mainBgColorOne : mainBgColorTwo,
                ),
                ContractItemsWidget(
                  flex: 1,
                  text: "100x",
                  boxColor: index.isOdd ? mainBgColorOne : mainBgColorTwo,
                ),
                ContractItemsWidget(
                  flex: 1,
                  text: "1 EUR",
                  boxColor: index.isOdd ? mainBgColorOne : mainBgColorTwo,
                ),
              ],
            );
          }),
        ),
        const SizedBox(height: 13),
        const ContractTitleWidget(
          text: "Linear Contracts",
          fontSize: 11,
        ),
        const Row(
          children: [
            ContractItemsWidget(
              flex: 1,
              text: "Contract",
              fontSize: 15,
              fontWeight: FontWeight.w700,
              textColor: textColorOne,
              boxColor: mainBgColorOne,
            ),
            ContractItemsWidget(
              flex: 1,
              text: "Contract Specs",
              fontSize: 15,
              fontWeight: FontWeight.w700,
              textColor: textColorOne,
              boxColor: mainBgColorOne,
            ),
            ContractItemsWidget(
              flex: 1,
              text: "Listed",
              fontSize: 15,
              fontWeight: FontWeight.w700,
              textColor: textColorOne,
              boxColor: mainBgColorOne,
            ),
            ContractItemsWidget(
              flex: 1,
              text: "Index",
              fontSize: 15,
              fontWeight: FontWeight.w700,
              textColor: textColorOne,
              boxColor: mainBgColorOne,
            ),
            ContractItemsWidget(
              flex: 1,
              text: "Payout Type",
              fontSize: 15,
              fontWeight: FontWeight.w700,
              textColor: textColorOne,
              boxColor: mainBgColorOne,
            ),
            ContractItemsWidget(
              flex: 1,
              text: "Max Leverage",
              fontSize: 15,
              fontWeight: FontWeight.w700,
              textColor: textColorOne,
              boxColor: mainBgColorOne,
            ),
            ContractItemsWidget(
              flex: 1,
              text: "Multiplier",
              fontSize: 15,
              fontWeight: FontWeight.w700,
              textColor: textColorOne,
              boxColor: mainBgColorOne,
            ),
          ],
        ),
        Column(
          children: List.generate(10, (index) {
            return Row(
              children: <Widget>[
                ContractItemsWidget(
                  flex: 1,
                  text: "ACEUSDT",
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  isUnderline: true,
                  textColor: whiteColor,
                  boxColor: index.isOdd ? mainBgColorOne : mainBgColorTwo,
                ),
                ContractItemsWidget(
                  flex: 1,
                  text: "ACEUSDT details",
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  isUnderline: true,
                  textColor: whiteColor,
                  boxColor: index.isOdd ? mainBgColorOne : mainBgColorTwo,
                ),
                ContractItemsWidget(
                  flex: 1,
                  text: "8/1/2023",
                  boxColor: index.isOdd ? mainBgColorOne : mainBgColorTwo,
                ),
                ContractItemsWidget(
                  flex: 1,
                  text: "CTBBTC",
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  isUnderline: true,
                  textColor: whiteColor,
                  boxColor: index.isOdd ? mainBgColorOne : mainBgColorTwo,
                ),
                ContractItemsWidget(
                  flex: 1,
                  text: "Inverse Perpetual",
                  boxColor: index.isOdd ? mainBgColorOne : mainBgColorTwo,
                ),
                ContractItemsWidget(
                  flex: 1,
                  text: "100x",
                  boxColor: index.isOdd ? mainBgColorOne : mainBgColorTwo,
                ),
                ContractItemsWidget(
                  flex: 1,
                  text: "1 EUR",
                  boxColor: index.isOdd ? mainBgColorOne : mainBgColorTwo,
                ),
              ],
            );
          }),
        ),
        const SizedBox(height: 70),
        const ContractTitleWidget(
          text: "Contract Summary",
          fontSize: 23,
        ),
        const Row(
          children: [
            ContractItemsWidget(
              flex: 1,
              text: "Payout Type",
              fontSize: 15,
              fontWeight: FontWeight.w700,
              textColor: textColorOne,
              boxColor: mainBgColorOne,
            ),
            ContractItemsWidget(
              flex: 1,
              text: "Inverse",
              fontSize: 15,
              fontWeight: FontWeight.w700,
              textColor: whiteColor,
              boxColor: mainBgColorOne,
              isUnderline: true,
            ),
            ContractItemsWidget(
              flex: 1,
              text: "Linear",
              fontSize: 15,
              fontWeight: FontWeight.w700,
              textColor: whiteColor,
              boxColor: mainBgColorOne,
              isUnderline: true,
            ),
            ContractItemsWidget(
              flex: 1,
              text: "Quanto",
              fontSize: 15,
              fontWeight: FontWeight.w700,
              textColor: whiteColor,
              boxColor: mainBgColorOne,
              isUnderline: true,
            ),
          ],
        ),
        Column(
          children: List.generate(10, (index) {
            return Row(
              children: <Widget>[
                ContractItemsWidget(
                  flex: 1,
                  text: "Example Symbol",
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  boxColor: index.isOdd ? mainBgColorOne : mainBgColorTwo,
                ),
                ContractItemsWidget(
                  flex: 1,
                  text: "XBTUSD",
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  boxColor: index.isOdd ? mainBgColorOne : mainBgColorTwo,
                ),
                ContractItemsWidget(
                  flex: 1,
                  text: "XBTUSDT",
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  boxColor: index.isOdd ? mainBgColorOne : mainBgColorTwo,
                ),
                ContractItemsWidget(
                  flex: 1,
                  text: "ETHUSD",
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  boxColor: index.isOdd ? mainBgColorOne : mainBgColorTwo,
                ),
              ],
            );
          }),
        ),
        const SizedBox(height: 30),
        const ContractTitleWidget(
          text: "What is a Quanto Contract?",
          fontSize: 23,
        ),
        RichText(
          text: const TextSpan(
            text:
                'A quanto is a type of derivative in which the underlying is denominated in one\nurrency, but the instrument itself is settled in another currency at some fixed\nrate. Our ',
            style: TextStyle(
              color: textColorOne,
              fontSize: 15,
              height: 2,
              fontWeight: FontWeight.w400,
            ),
            children: <TextSpan>[
              TextSpan(
                text: 'Quanto Perpetuals',
                style: TextStyle(
                  color: whiteColor,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  decoration: TextDecoration.underline,
                  decorationColor: whiteColor,
                ),
              ),
              TextSpan(
                text: ' operate this way.',
                style: TextStyle(
                  color: textColorOne,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(
                text:
                    '\n\nThese contracts are designed to be easy to trade and understand, but keep in\nmind as you trade them that your underlying margin and PNL are in Bitcoin. You\nare still exposed to Bitcoin/USD price risk when trading Quanto Perpetuals, even\nthough the underlying and quote currencies are not Bitcoin.',
                style: TextStyle(
                  color: textColorOne,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 30),
        const ContractTitleWidget(
          text: "What is an Inverse Contract?",
          fontSize: 23,
        ),
        RichText(
          text: const TextSpan(
            text:
                'An inverse contract is worth a fixed amount of the quote currency. In the case of\nthe XBTUSD perpetual, each contract is worth \$1 of Bitcoin at any price.\nXBTUSD is an ',
            style: TextStyle(
              color: textColorOne,
              fontSize: 15,
              height: 2,
              fontWeight: FontWeight.w400,
            ),
            children: <TextSpan>[
              TextSpan(
                text: 'inverse contract',
                style: TextStyle(
                  color: whiteColor,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  decoration: TextDecoration.underline,
                  decorationColor: whiteColor,
                ),
              ),
              TextSpan(
                text:
                    ' because it is quoted as XBT/USD but the\nunderlying is USD/XBT or 1 / (XBT/USD). It is quoted as an inverse to facilitate\nhedging US Dollar amounts while the spot market convention is to quote the\nnumber of US Dollars per Bitcoin.',
                style: TextStyle(
                  color: textColorOne,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(
                text:
                    '\n\nThis product is suitable for traders who want to go long or short US Dollars\nagainst Bitcoin.',
                style: TextStyle(
                  color: textColorOne,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 30),
        const ContractTitleWidget(
          text: "What is a Linear Contract?",
          fontSize: 23,
        ),
        RichText(
          text: const TextSpan(
            text:
                'A linear payout is the simplest to describe, and is used for many swaps. The price\nof a ',
            style: TextStyle(
              color: textColorOne,
              fontSize: 15,
              height: 2,
              fontWeight: FontWeight.w400,
            ),
            children: <TextSpan>[
              TextSpan(
                text: 'linear contract',
                style: TextStyle(
                  color: whiteColor,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  decoration: TextDecoration.underline,
                  decorationColor: whiteColor,
                ),
              ),
              TextSpan(
                text:
                    ' is expressed as the price of the underlying against the base\ncurrency. ',
                style: TextStyle(
                  color: textColorOne,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 30),
        const ContractTitleWidget(
          text: "Mechanics of Perpetual Markets",
          fontSize: 23,
        ),
        RichText(
          text: const TextSpan(
            text:
                'When trading perpetual contracts, a trader needs to be aware of several\nmechanics of the futures market. The key components a trader needs to be\naware of are:',
            style: TextStyle(
              color: textColorOne,
              fontSize: 15,
              height: 2,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}
