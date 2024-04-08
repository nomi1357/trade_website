import 'package:flutter/material.dart';
import 'package:trades_website/screens/main_screens/contracts/contracts_widget.dart';

import '../../../../core/consts.dart';

class ContractOneDesign extends StatelessWidget {
  const ContractOneDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const ContractTitleWidget(
          text: "Overview",
        ),
        RichText(
          text: const TextSpan(
            text: 'A ',
            style: TextStyle(
              color: textColorOne,
              fontSize: 15,
              height: 2,
              fontWeight: FontWeight.w400,
            ),
            children: <TextSpan>[
              TextSpan(
                text: 'Perpetual Swap ',
                style: TextStyle(
                  color: textColorOne,
                  fontSize: 15,
                  height: 2,
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextSpan(
                text: 'is an innovative product invented by ',
                style: TextStyle(
                  color: textColorOne,
                  fontSize: 15,
                  height: 2,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(
                text: 'TRADERS ',
                style: TextStyle(
                  color: textColorOne,
                  fontSize: 15,
                  height: 2,
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextSpan(
                text: '. The Perpetual\nContract is similar to a traditional ',
                style: TextStyle(
                  color: textColorOne,
                  fontSize: 15,
                  height: 2,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(
                text: 'Futures Contract',
                style: TextStyle(
                  color: whiteColor,
                  fontSize: 15,
                  height: 2,
                  fontWeight: FontWeight.w700,
                  decoration: TextDecoration.underline,
                  decorationColor: whiteColor,
                ),
              ),
              TextSpan(
                text: ', but has a few differences:',
                style: TextStyle(
                  color: textColorOne,
                  fontSize: 15,
                  height: 2,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(
                text: '\n\nThere is no expiry or settlement (subject to the ',
                style: TextStyle(
                  color: textColorOne,
                  fontSize: 15,
                  height: 2,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(
                text: 'Early Settlement',
                style: TextStyle(
                  color: whiteColor,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  decoration: TextDecoration.underline,
                  decorationColor: whiteColor,
                ),
              ),
              TextSpan(
                text: ').\n',
                style: TextStyle(
                  color: textColorOne,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(
                text:
                    'Perpetual Contracts mimic a margin-based spot market and hence trade close to\nthe underlying reference Index Price.',
                style: TextStyle(
                  color: textColorOne,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(
                text: '\nThe ',
                style: TextStyle(
                  color: whiteColor,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(
                text: 'Funding',
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
                    ' mechanism is used to tether contracts to their underlying spot price.',
                style: TextStyle(
                  color: textColorOne,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(
                text: '\nThis is in contrast to a ',
                style: TextStyle(
                  color: textColorOne,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(
                text: 'Futures Contract',
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
                    ' which may trade at significantly different\nprices due to basis.',
                style: TextStyle(
                  color: textColorOne,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(
                text:
                    '\nEach perpetual contract has its own details which can be found in its Contract\nSpecifications. These details include:',
                style: TextStyle(
                  color: textColorOne,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(
                text: '\nReference Index\nFunding Rate\nMaximum Leverage:',
                style: TextStyle(
                  color: textColorOne,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        const ContractTitleWidget(
          text: "Leverage",
          fontSize: 15,
        ),
        RichText(
          text: const TextSpan(
            text:
                'Perpetual contracts do not require traders to post 100% of collateral as margin,\nbecause of this you can trade with leverage of up to 100x on some of TRADERS\ncontracts. Margin on TRADERS is denominated in Bitcoin and otherncryptocurrencies, allowing traders to speculate on the future value of its products\nusing only Bitcoin or other cryptocurrencies.',
            style: TextStyle(
              color: textColorOne,
              fontSize: 15,
              height: 2,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        const SizedBox(height: 20),
        const ContractTitleWidget(
          text: "Payout",
          fontSize: 15,
        ),
        RichText(
          text: const TextSpan(
            text: 'TRADERS ',
            style: TextStyle(
              color: textColorOne,
              fontSize: 15,
              height: 2,
              fontWeight: FontWeight.w600,
            ),
            children: [
              TextSpan(
                text:
                    'offers perpetual contracts that have inverse, linear and quanto payouts.\nThis document explains the key differences between these payouts, and some\nimplications for traders.',
                style: TextStyle(
                  color: textColorOne,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
