import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trades_website/core/button_widget.dart';
import 'package:trades_website/core/clickable_widget.dart';
import 'package:trades_website/core/consts.dart';
import 'package:trades_website/screens/main_screens/home/home_design/footer_design.dart';

import '../copy_trade/copy_trade_design/faq_design.dart';
import '../home/home_design/top_header_design.dart';
import 'trade_crypto_widget.dart';

class TraderCryptoScreen extends StatefulWidget {
  const TraderCryptoScreen({Key? key}) : super(key: key);

  @override
  State<TraderCryptoScreen> createState() => _TraderCryptoScreenState();
}

class _TraderCryptoScreenState extends State<TraderCryptoScreen> {
  TextEditingController myEmailController = TextEditingController();
  int _currentPage = 1;
  int _tCurrentPage = 1;
  late PageController _controller;
  late PageController _tController;
  int selectedQuestion = 2;

  _onChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  _onTChanged(int index) {
    setState(() {
      _tCurrentPage = index;
    });
  }

  @override
  void initState() {
    super.initState();
    _controller = PageController(
      viewportFraction: 0.35,
      initialPage: 1,
    );
    _tController = PageController(
      viewportFraction: 0.53,
      initialPage: 1,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: mainBgColorOne,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              //header one...
              const TopHeaderDesign(
                isBlue: true,
                lineColor: blueColor,
                selectedScreenOneIndex: 2,
              ),
              Container(
                height: 800,
                width: double.infinity,
                padding: const EdgeInsets.fromLTRB(70, 60, 70, 30),
                decoration: const BoxDecoration(
                  color: blueColor,
                  image: DecorationImage(
                    image: AssetImage("assets/app_images/design.png"),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Image.asset(
                        "assets/trade_crypto_icons/design.png",
                        height: 550,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const SizedBox(height: 100),
                        Text(
                          "Trade for a Good Wealth",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: whiteColor.withOpacity(.70),
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 14),
                        const Text(
                          "Trade Crypto Derivatives",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: whiteColor,
                            fontSize: 55,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          "Trade Options, Perpetuals, Futures and Spot at Deribit.\n"
                          "Sign up and get started today.",
                          style: TextStyle(
                            color: whiteColor,
                            fontSize: 24,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(height: 54),
                        Container(
                          height: 66,
                          width: 550,
                          padding: const EdgeInsets.fromLTRB(11, 0, 11, 0),
                          decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: const Color(0xFFD0D5DD),
                              width: 1,
                            ),
                          ),
                          child: Center(
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: TextField(
                                    controller: myEmailController,
                                    maxLines: 1,
                                    style: const TextStyle(
                                      color: Color(0xFF757575),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    textInputAction: TextInputAction.done,
                                    keyboardType: TextInputType.text,
                                    decoration: const InputDecoration(
                                      fillColor: whiteColor,
                                      filled: true,
                                      hintText: "Enter your email",
                                      hintStyle: TextStyle(
                                        color: Color(0xFF757575),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                      ),
                                      enabledBorder: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      border: InputBorder.none,
                                      contentPadding: EdgeInsets.symmetric(
                                        horizontal: 20,
                                        // vertical: 13.5,
                                      ),
                                    ),
                                  ),
                                ),
                                ButtonWidget(
                                  text: "Get started",
                                  height: 48,
                                  width: 160,
                                  btnColor: const Color(0xFF0D59A7),
                                  borderColor: const Color(0xFF0D59A7),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  textColor: whiteColor,
                                  borderRadius: 8,
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.fromLTRB(80, 110, 80, 30),
                decoration: const BoxDecoration(
                  color: mainBgColorTwo,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      "How it works",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: whiteColor,
                        fontSize: 44,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 32),
                    const Text(
                      "Trading websites facilitate the buying and selling of financial assets through online platforms,\nconnecting traders worldwide in real-time transactions.",
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: whiteColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 70),
                    const SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          HowWidget(
                            title: "1. Create Account",
                            subTitle:
                                "Create and verify your\naccount in minutes.",
                            icon: "assets/trade_crypto_icons/user.svg",
                          ),
                          SizedBox(width: 50),
                          HowWidget(
                            title: "2. Fund your account",
                            subTitle:
                                "Use Bitcoin, Ethereum or\nUSDC to fund your account.",
                            icon: "assets/trade_crypto_icons/fund.svg",
                          ),
                          SizedBox(width: 50),
                          HowWidget(
                            title: "3. Start Trading",
                            subTitle:
                                "Use all our advanced strategy\ntools to get the most out of\nyour trades.",
                            icon: "assets/trade_crypto_icons/share.svg",
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 120),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            const Text(
                              "Options",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Color(0xFF0D59A7),
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            RichText(
                              text: const TextSpan(
                                text: '24h volume: ',
                                style: TextStyle(
                                  color: Color(0xFF898989),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: '\$3,594,320,372.29 ',
                                    style: TextStyle(
                                      color: Color(0xFF898989),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        const SizedBox(width: 50),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            const Text(
                              "Futures",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: whiteColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            RichText(
                              text: const TextSpan(
                                text: '24h volume: ',
                                style: TextStyle(
                                  color: Color(0xFF898989),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: '\$2,922,714,330.74 ',
                                    style: TextStyle(
                                      color: Color(0xFF898989),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    Container(
                      height: 1,
                      width: double.infinity,
                      color: const Color(0xFFF8F8F8),
                      margin: const EdgeInsets.only(top: 10, bottom: 30),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        IconButtonWidget(
                          icon: SvgPicture.asset(
                            "assets/trade_crypto_icons/top.svg",
                          ),
                          padding: const EdgeInsets.only(right: 8),
                        ),
                        IconButtonWidget(
                          icon: SvgPicture.asset(
                            "assets/trade_crypto_icons/highest.svg",
                          ),
                          padding: const EdgeInsets.only(right: 8),
                        ),
                        IconButtonWidget(
                          icon: SvgPicture.asset(
                            "assets/trade_crypto_icons/worst.svg",
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 35),
                    const Row(
                      children: <Widget>[
                        TradeTextWidget(
                          text: "Name",
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          flex: 2,
                        ),
                        SizedBox(width: 5),
                        TradeTextWidget(
                          text: "Last Price",
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                        SizedBox(width: 5),
                        TradeTextWidget(
                          text: "Last Price (USD)",
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                        SizedBox(width: 5),
                        TradeTextWidget(
                          text: "24H Change",
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                        SizedBox(width: 5),
                        TradeTextWidget(
                          text: "24H Volume",
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                        SizedBox(width: 5),
                        Expanded(
                          flex: 1,
                          child: SizedBox(),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Column(
                      children: List.generate(8, (index) {
                        return const TradeListItemsWidget(
                          name: "ETH-29MAR24-1500-P",
                          lastPrice: "0.0006",
                          lastPriceUSD: "\$1.94",
                          change24: "+500.00%",
                          volume24: "\$241.99k",
                        );
                      }),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const Text(
                          "Explore our exchange",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Color(0xFF0D59A7),
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(width: 10),
                        SvgPicture.asset(
                          "assets/trade_crypto_icons/arrow_right.svg",
                          colorFilter: const ColorFilter.mode(
                            Color(0xFF0D59A7),
                            BlendMode.srcIn,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 110),
                    const Text(
                      "Top Lead Portfolios",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: whiteColor,
                        fontSize: 44,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 40),
                    SizedBox(
                      height: 272,
                      child: PageView.builder(
                        scrollDirection: Axis.horizontal,
                        onPageChanged: _onChanged,
                        controller: _controller,
                        itemCount: 4,
                        itemBuilder: (context, int index) {
                          return LeadItemWidget(
                            image: "assets/trade_crypto_icons/portfolio.png",
                            title: "Google Limited",
                            subTitle: "80 / 70",
                            amount: "+23,653.556",
                            yhtAmount: "+56.533%",
                            hjgAmount: "\$646,353.89",
                            ratio: "5.56",
                            onMockTap: () {},
                            onCopyTap: () {},
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 18),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const Text(
                          "View all lead traders",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Color(0xFF0D59A7),
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(width: 10),
                        SvgPicture.asset(
                          "assets/trade_crypto_icons/arrow_right.svg",
                          colorFilter: const ColorFilter.mode(
                            Color(0xFF0D59A7),
                            BlendMode.srcIn,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List<Widget>.generate(
                        4,
                        (int index) {
                          return AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            height: 12,
                            width: (index == _currentPage) ? 40 : 10,
                            margin: const EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: (index == _currentPage)
                                  ? const Color(0xFF0D59A7)
                                  : const Color(0xFF0D59A7).withOpacity(0.20),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 110),
                    const Text(
                      "Testimonials",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: whiteColor,
                        fontSize: 44,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 500,
                      child: PageView.builder(
                        scrollDirection: Axis.horizontal,
                        onPageChanged: _onTChanged,
                        controller: _tController,
                        itemCount: 4,
                        itemBuilder: (context, int index) {
                          return const TestimonialsItemWidget(
                            image: "assets/trade_crypto_icons/trade.png",
                            title: "Revolutionized My Trading ",
                            subTitle:
                                "I\'ve been trading cryptocurrencies for years, but it wasn\'t until I joined this platform that I truly felt confident in my strategies.",
                            personImage: "assets/trade_crypto_icons/person.png",
                            name: "CryptoProTrader88",
                            profession: "Business man",
                            ratting: "5.0",
                          );
                        },
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List<Widget>.generate(
                        4,
                        (int index) {
                          return AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            height: 12,
                            width: (index == _tCurrentPage) ? 40 : 10,
                            margin: const EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: (index == _tCurrentPage)
                                  ? const Color(0xFF0D59A7)
                                  : const Color(0xFF0D59A7).withOpacity(0.20),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 110),
                    Container(
                      height: 300,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            blackColor,
                            blackColor,
                            const Color(0xFF1F5256).withOpacity(.70),
                            const Color(0xFF29517A),
                          ],
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 50,
                            offset: const Offset(0, 23),
                            color: const Color(0xFF101828).withOpacity(.18),
                          )
                        ],
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(18),
                            ),
                            child: Image.asset(
                                "assets/trade_crypto_icons/coin1.png"),
                          ),
                          Positioned(
                            right: 0,
                            top: 0,
                            child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(18),
                              ),
                              child: Image.asset(
                                  "assets/trade_crypto_icons/coin.png"),
                            ),
                          ),
                          Container(
                            height: 66,
                            width: 550,
                            margin: const EdgeInsets.only(top: 100),
                            padding: const EdgeInsets.fromLTRB(11, 0, 11, 0),
                            decoration: BoxDecoration(
                              color: whiteColor,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: const Color(0xFFD0D5DD),
                                width: 1,
                              ),
                            ),
                            child: Center(
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    child: TextField(
                                      controller: myEmailController,
                                      maxLines: 1,
                                      style: const TextStyle(
                                        color: Color(0xFF757575),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      textInputAction: TextInputAction.done,
                                      keyboardType: TextInputType.text,
                                      decoration: const InputDecoration(
                                        fillColor: whiteColor,
                                        filled: true,
                                        hintText: "Enter your email",
                                        hintStyle: TextStyle(
                                          color: Color(0xFF757575),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                        ),
                                        enabledBorder: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        border: InputBorder.none,
                                        contentPadding: EdgeInsets.symmetric(
                                          horizontal: 20,
                                          // vertical: 13.5,
                                        ),
                                      ),
                                    ),
                                  ),
                                  ButtonWidget(
                                    text: "Get started",
                                    height: 48,
                                    width: 160,
                                    btnColor: const Color(0xFF0D59A7),
                                    borderColor: const Color(0xFF0D59A7),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    textColor: whiteColor,
                                    borderRadius: 8,
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 110),
                    const FAQDesign(),
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
