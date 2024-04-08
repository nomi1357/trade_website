import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trades_website/core/button_widget.dart';
import 'package:trades_website/core/clickable_widget.dart';
import 'package:trades_website/core/consts.dart';

//how widget...
class HowWidget extends StatelessWidget {
  final String icon, title, subTitle;

  const HowWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 265,
      width: 298,
      decoration: BoxDecoration(
        color: const Color(0xFFF9FAFB),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SvgPicture.asset(
              icon,
            ),
            const SizedBox(height: 20),
            Text(
              title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: blackColor,
                fontSize: 19,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 18),
            Text(
              subTitle,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: blackColor,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//trade text widget...
class TradeTextWidget extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final String icon;
  final Color textColor;
  final bool isShowIcon;

  final int flex;

  const TradeTextWidget({
    Key? key,
    required this.text,
    this.fontSize = 18,
    this.fontWeight = FontWeight.w700,
    this.icon = "",
    this.textColor = whiteColor,
    this.isShowIcon = false,
    this.flex = 1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          if (isShowIcon) SvgPicture.asset(icon),
          if (isShowIcon) const SizedBox(width: 20),
          Expanded(
            child: Text(
              text,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: textColor,
                fontSize: fontSize,
                fontWeight: fontWeight,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//lead items widget...
class LeadItemWidget extends StatelessWidget {
  final String image, title, subTitle, amount, yhtAmount, ratio, hjgAmount;
  final bool isUp;
  final Function()? onMockTap, onCopyTap;

  const LeadItemWidget({
    Key? key,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.amount,
    required this.yhtAmount,
    required this.ratio,
    required this.hjgAmount,
    this.onMockTap,
    this.onCopyTap,
    this.isUp = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 272,
      width: 396,
      margin: const EdgeInsets.only(right: 15),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFF111A24),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Image.asset(image),
              const SizedBox(width: 12),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: whiteColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      SvgPicture.asset("assets/trade_crypto_icons/person.svg"),
                      const SizedBox(width: 8),
                      Text(
                        subTitle,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: whiteColor,
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "4E ASD (USDT)",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: whiteColor.withOpacity(.60),
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      amount,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: isUp ? greenColorTwo : redColorTwo,
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'YHT',
                        style: const TextStyle(
                          color: whiteColor,
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: yhtAmount,
                            style: TextStyle(
                              color: isUp ? greenColorTwo : redColorTwo,
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SvgPicture.asset("assets/trade_crypto_icons/chart.svg"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              RichText(
                text: TextSpan(
                  text: 'HJG (USDT) ',
                  style: TextStyle(
                    color: whiteColor.withOpacity(.60),
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: hjgAmount,
                      style: const TextStyle(
                        color: whiteColor,
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              RichText(
                text: TextSpan(
                  text: "Ratio ",
                  style: TextStyle(
                    color: whiteColor.withOpacity(.60),
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: ratio,
                      style: const TextStyle(
                        color: whiteColor,
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              ButtonWidget(
                text: "Mock",
                height: 30,
                width: 111,
                btnColor: const Color(0xFF363839),
                borderColor: const Color(0xFF363839),
                fontSize: 14,
                fontWeight: FontWeight.w700,
                textColor: whiteColor,
                borderRadius: 4,
                onPressed: () {},
              ),
              SizedBox(width: 10),
              Expanded(
                child: ButtonWidget(
                  text: "Copy Trade",
                  height: 30,
                  width: double.infinity,
                  btnColor: blueColor,
                  borderColor: blueColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  textColor: whiteColor,
                  borderRadius: 4,
                  onPressed: () {},
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

//trade list items widget...
class TradeListItemsWidget extends StatelessWidget {
  final String name, lastPrice, lastPriceUSD, change24, volume24;
  final Function()? onTradeNowTap;

  const TradeListItemsWidget({
    Key? key,
    required this.name,
    required this.lastPrice,
    required this.lastPriceUSD,
    required this.change24,
    required this.volume24,
    this.onTradeNowTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 73,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.transparent,
        border: Border(
          top: BorderSide(
            color: Color(0xFFF8F8F8),
            width: 0.5,
          ),
          bottom: BorderSide(
            color: Color(0xFFF8F8F8),
            width: 0.5,
          ),
        ),
      ),
      child: Center(
        child: Row(
          children: <Widget>[
            TradeTextWidget(
              text: name,
              flex: 2,
              isShowIcon: true,
              icon: "assets/trade_crypto_icons/eth.svg",
            ),
            const SizedBox(width: 5),
            TradeTextWidget(
              text: lastPrice,
              fontSize: 16,
              isShowIcon: true,
              icon: "assets/trade_crypto_icons/up_shape.svg",
            ),
            const SizedBox(width: 5),
            TradeTextWidget(
              text: lastPriceUSD,
              fontSize: 16,
            ),
            const SizedBox(width: 5),
            TradeTextWidget(
              text: change24,
              fontSize: 16,
              fontWeight: FontWeight.w400,
              textColor: const Color(0xFF07B66E),
            ),
            const SizedBox(width: 5),
            TradeTextWidget(
              text: volume24,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
            const SizedBox(width: 5),
            Expanded(
              flex: 1,
              child: ButtonWidget(
                text: "Trade Now",
                height: 44,
                width: 130,
                btnColor: const Color(0xFF0D59A7),
                borderColor: const Color(0xFF0D59A7),
                fontSize: 16,
                fontWeight: FontWeight.w700,
                textColor: whiteColor,
                borderRadius: 8,
                onPressed: onTradeNowTap,
              ),
            )
          ],
        ),
      ),
    );
  }
}

//testimonials items widget...
class TestimonialsItemWidget extends StatelessWidget {
  final String image, title, subTitle, personImage, name, profession, ratting;

  const TestimonialsItemWidget({
    Key? key,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.name,
    required this.profession,
    required this.ratting,
    required this.personImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            height: 376,
            width: 600,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            bottom: 30,
            child: Container(
              height: 252,
              width: 497,
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: const Color(0xFF111A24),
                borderRadius: BorderRadius.circular(18),
                border: Border.all(
                  color: whiteColor.withOpacity(.45),
                  width: 1,
                ),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 20,
                    offset: const Offset(0, 4),
                    color: whiteColor.withOpacity(.09),
                  )
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: whiteColor,
                      fontSize: 21,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    subTitle,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: whiteColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        height: 44,
                        width: 44,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(personImage),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              name,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                color: whiteColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              personImage,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: whiteColor.withOpacity(.50),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          SvgPicture.asset("assets/trade_crypto_icons/star.png"),
                          const SizedBox(width: 6),
                          Text(
                            "($ratting)",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              color: whiteColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//questions widget...
class QuestionWidget extends StatelessWidget {
  final String question;
  final bool isHighlight;
  final Function()? onTap;

  const QuestionWidget({
    Key? key,
    required this.question,
    this.isHighlight = false,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWellWidget(
      onTap: onTap,
      child: Container(
        height: 72,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        color: isHighlight ? const Color(0xFF37404B) : mainBgColorOne,
        child: Center(
          child: Row(
            children: <Widget>[
              Container(
                height: 24,
                width: 24,
                margin: const EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  color: isHighlight
                      ? const Color(0xFF0D59A7)
                      : const Color(0xFFA5A6F6),
                  shape: BoxShape.circle,
                ),
              ),
              Expanded(
                child: Text(
                  question,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: whiteColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              SvgPicture.asset(
                "assets/trade_crypto_icons/right_side.svg",
                colorFilter: ColorFilter.mode(
                  isHighlight
                      ? const Color(0xFF0D59A7)
                      : const Color(0xFFA5A6F6),
                  BlendMode.srcIn,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
