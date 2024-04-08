import 'package:flutter/material.dart';
import 'package:trades_website/screens/main_screens/api/api_widget.dart';

import '../../../../core/consts.dart';

class ApiDesign extends StatelessWidget {
  const ApiDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 1274,
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(30, 12, 30, 70),
      decoration: BoxDecoration(
        color: mainBgColorOne,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(
          color: const Color(0xFF333D4E),
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const TitleInsideWidget(
            text: "API Overview",
          ),
          RichText(
            text: const TextSpan(
              text: 'TRADERS ',
              style: TextStyle(
                color: textColorOne,
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: ' offers a fully featured ',
                  style: TextStyle(
                    color: textColorOne,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextSpan(
                  text: 'REST API',
                  style: TextStyle(
                    color: whiteColor,
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    decoration: TextDecoration.underline,
                    decorationColor: whiteColor,
                  ),
                ),
                TextSpan(
                  text: ' and a powerful streaming ',
                  style: TextStyle(
                    color: textColorOne,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextSpan(
                  text: 'WebSocket\nAPI',
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
                      '. All market and user data is available and updates in real-time.',
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
          RichText(
            text: const TextSpan(
              text: 'The ',
              style: TextStyle(
                color: textColorOne,
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: 'TRADERS ',
                  style: TextStyle(
                    color: textColorOne,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextSpan(
                  text:
                      'APIs are open and complete. Every function used by the ',
                  style: TextStyle(
                    color: textColorOne,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextSpan(
                  text: 'TRADERS\n',
                  style: TextStyle(
                    color: textColorOne,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextSpan(
                  text:
                      'website is exposed via the API, allowing developers full control to build any kind\nof application on top of ',
                  style: TextStyle(
                    color: textColorOne,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextSpan(
                  text: ' TRADERS. ',
                  style: TextStyle(
                    color: textColorOne,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          RichText(
            text: const TextSpan(
              text: 'The completeness of ',
              style: TextStyle(
                color: textColorOne,
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: 'TRADERS ',
                  style: TextStyle(
                    color: textColorOne,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextSpan(
                  text:
                      'API is best-in-class and unique in the trading\nspace.  ',
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
          const TitleInsideWidget(
            text: "API Resources",
          ),
          const UnderlineTitleWidget(
            text: "REST API",
          ),
          const UnderlineTitleWidget(
            text: "Interactive REST API Explorer",
          ),
          const UnderlineTitleWidget(
            text: "WebSocket API",
          ),
          const SizedBox(height: 20),
          const TitleInsideWidget(
            text: "API Announcements",
          ),
          const UnderlineTitleWidget(
            text: "API Announcements",
          ),
          const UnderlineTitleWidget(
            text: "API Announcement RSS Feed",
          ),
          const SizedBox(height: 20),
          const TitleInsideWidget(
            text: "API Keys",
          ),
          const UnderlineTitleWidget(
            text: "Using API Keys",
          ),
          const UnderlineTitleWidget(
            text: "API Key Management",
          ),
          const SizedBox(height: 20),
          const TitleInsideWidget(
            text: "Samples",
          ),
          const UnderlineTitleWidget(
            text: "Sample API Connectors",
          ),
          const UnderlineTitleWidget(
            text: "Sample Market Making Bot",
          ),
          const SizedBox(height: 20),
          const TitleInsideWidget(
            text: "Historical Data",
          ),
          RichText(
            text: const TextSpan(
              text:
                  'Daily historical extracts of commonly queried public BitMEX API data are\navailable on ',
              style: TextStyle(
                color: textColorOne,
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: 'public.traders.com',
                  style: TextStyle(
                    color: whiteColor,
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    decoration: TextDecoration.underline,
                    decorationColor: whiteColor,
                  ),
                ),
                TextSpan(
                  text: ' (Testnet data ',
                  style: TextStyle(
                    color: textColorOne,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextSpan(
                  text: 'is also available',
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
                      "). These should be\nused in favour of pagination via the REST API. ",
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
          const TitleInsideWidget(
            text: "Additional Resources",
          ),
          RichText(
            text: const TextSpan(
              text: 'Additional API resources and FAQ’s can be found ',
              style: TextStyle(
                color: textColorOne,
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: 'here.',
                  style: TextStyle(
                    color: whiteColor,
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    decoration: TextDecoration.underline,
                    decorationColor: whiteColor,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const TitleInsideWidget(
            text: "BitcoinCharts API",
          ),
          RichText(
            text: const TextSpan(
              text: 'BitMEX implements the full ',
              style: TextStyle(
                color: textColorOne,
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: 'BitcoinCharts API',
                  style: TextStyle(
                    color: whiteColor,
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    decoration: TextDecoration.underline,
                    decorationColor: whiteColor,
                  ),
                ),
                TextSpan(
                  text: ' starting at\n',
                  style: TextStyle(
                    color: textColorOne,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextSpan(
                  text: 'https://www.traders.com/api/bitcoincharts.',
                  style: TextStyle(
                    color: whiteColor,
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    decoration: TextDecoration.underline,
                    decorationColor: whiteColor,
                  ),
                ),
                TextSpan(
                  text: " The BitcoinCharts API is a simple way\nto access ",
                  style: TextStyle(
                    color: textColorOne,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextSpan(
                  text: 'trade',
                  style: TextStyle(
                    color: whiteColor,
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    decoration: TextDecoration.underline,
                    decorationColor: whiteColor,
                  ),
                ),
                TextSpan(
                  text: " and ",
                  style: TextStyle(
                    color: textColorOne,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextSpan(
                  text: 'orderbook',
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
                      " data in a format that is compatible with other\nchanges ",
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
          const TitleInsideWidget(
            text: "UDF API",
          ),
          RichText(
            text: const TextSpan(
              text: 'TRADERS ',
              style: TextStyle(
                color: textColorOne,
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
              children: <TextSpan>[
                TextSpan(
                  text:
                      'also implements the UDF API popularized by TradingView. The base URL\nis ',
                  style: TextStyle(
                    color: textColorOne,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextSpan(
                  text: 'https://www.traders.com/api/udf ',
                  style: TextStyle(
                    color: whiteColor,
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    decoration: TextDecoration.underline,
                    decorationColor: whiteColor,
                  ),
                ),
                TextSpan(
                  text: 'and you can view an overview ',
                  style: TextStyle(
                    color: textColorOne,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextSpan(
                  text: "here.",
                  style: TextStyle(
                    color: whiteColor,
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    decoration: TextDecoration.underline,
                    decorationColor: whiteColor,
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
