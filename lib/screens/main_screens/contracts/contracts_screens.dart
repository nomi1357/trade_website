import 'package:flutter/material.dart';
import 'package:trades_website/core/consts.dart';
import 'package:trades_website/screens/main_screens/contracts/contract_design/contract_two_design.dart';
import 'package:trades_website/screens/main_screens/home/home_design/footer_design.dart';

import '../home/home_design/top_header_design.dart';
import 'contract_design/contract_one_design.dart';
import 'contracts_widget.dart';

class ContractsScreen extends StatefulWidget {
  const ContractsScreen({Key? key}) : super(key: key);

  @override
  State<ContractsScreen> createState() => _ContractsScreenState();
}

class _ContractsScreenState extends State<ContractsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: mainBgColorTwo,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              //header one...
              const TopHeaderDesign(
                isBlue: true,
                lineColor: blackColor,
                selectedScreenTwoIndex: 1,
              ),

              Padding(
                padding: const EdgeInsets.only(
                    top: 48, right: 80, left: 80, bottom: 110),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: 300,
                          margin: const EdgeInsets.only(right: 28),
                          padding: const EdgeInsets.fromLTRB(18, 40, 18, 90),
                          decoration: BoxDecoration(
                            color: mainBgColorTwo,
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                              color: const Color(0xFF333D4E),
                              width: 1,
                            ),
                          ),
                          child: const Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              ContractsTextWidget(
                                text: "Overview",
                                isHeading: true,
                              ),
                              ContractsTextWidget(
                                text: "Leverage",
                                isLeftPadding: 15,
                              ),
                              ContractsTextWidget(
                                text: "Payout",
                                isLeftPadding: 15,
                              ),
                              ContractsTextWidget(
                                text: "List Of Contracts",
                                isLeftPadding: 15,
                              ),
                              ContractsTextWidget(
                                text: "Contract Summary",
                                isLeftPadding: 15,
                                isHeading: true,
                              ),
                              ContractsTextWidget(
                                text: "What is a Quanto Contract?",
                                isHeading: true,
                              ),
                              ContractsTextWidget(
                                text: "What is an Inverse Contract?",
                                isHeading: true,
                              ),
                              ContractsTextWidget(
                                text: "What is a Linear Contract?",
                                isHeading: true,
                              ),
                              ContractsTextWidget(
                                text: "Mechanics of Perpetual Markets",
                                isHeading: true,
                              ),
                              ContractsTextWidget(
                                text: "Funding",
                                isLeftPadding: 15,
                              ),
                              ContractsTextWidget(
                                text: "Funding Rate Calculations",
                                isLeftPadding: 15,
                              ),
                              ContractsTextWidget(
                                text: "Interest Rate Component",
                                isLeftPadding: 30,
                              ),
                              ContractsTextWidget(
                                text: "Premium / Discount Component",
                                isLeftPadding: 30,
                              ),
                              ContractsTextWidget(
                                text: "Final Funding Rate Calculation",
                                isLeftPadding: 15,
                              ),
                              ContractsTextWidget(
                                text: "Funding Rate Caps",
                                isLeftPadding: 30,
                              ),
                              ContractsTextWidget(
                                text: "Funding Fees",
                                isLeftPadding: 30,
                              ),
                              ContractsTextWidget(
                                text: "More Information",
                                isLeftPadding: 15,
                              ),
                            ],
                          ),
                        ),
                        const Expanded(
                          child: ContractOneDesign(),
                        ),
                      ],
                    ),
                    const SizedBox(height: 60),
                    const ContractTwoDesign(),
                  ],
                ),
              ),

              //bottom...
              const FooterDesign(),
            ],
          ),
        ),
      ),
    );
  }
}
