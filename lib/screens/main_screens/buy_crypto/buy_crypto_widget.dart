import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trades_website/core/clickable_widget.dart';
import 'package:trades_website/core/consts.dart';

import 'buy_crypto_design/buy_crypto_design.dart';

//radio widget...
class RadioWidget extends StatelessWidget {
  final String images, title, subTitle;
  final PaymentMethod paymentMethod, paymentMethodSelected;
  final Function(PaymentMethod?)? onChanged;
  final Function()? onTap;
  final bool isShowIcon;

  const RadioWidget({
    Key? key,
    this.images = "",
    required this.title,
    required this.paymentMethod,
    required this.paymentMethodSelected,
    this.onChanged,
    this.onTap,
    required this.subTitle,
    this.isShowIcon = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWellWidget(
      onTap: onTap,
      child: Container(
        height: 70,
        color: Colors.transparent,
        child: Center(
          child: Row(
            children: <Widget>[
              Radio<PaymentMethod>(
                activeColor: const Color(0xFF0D59A7),
                value: paymentMethod,
                groupValue: paymentMethodSelected,
                onChanged: onChanged,
              ),
              const SizedBox(width: 15),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: whiteColor,
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      subTitle,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: whiteColor.withOpacity(.80),
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              if (isShowIcon) const SizedBox(width: 10),
              if (isShowIcon) Image.asset(images),
            ],
          ),
        ),
      ),
    );
  }
}

//field widget...
class FieldWidget extends StatelessWidget {
  final TextEditingController myController;
  final String hintText, icon;

  const FieldWidget({
    Key? key,
    required this.hintText,
    required this.myController,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: mainBgColorTwo,
        borderRadius: BorderRadius.circular(4),
        border: Border.all(
          color: const Color(0xFFF9F9F9),
          width: 1,
        ),
      ),
      child: Center(
        child: TextField(
          controller: myController,
          maxLines: 1,
          style: const TextStyle(
            color: whiteColor,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
          textInputAction: TextInputAction.next,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            fillColor: mainBgColorTwo,
            filled: true,
            hintText: hintText,
            hintStyle: const TextStyle(
              color: whiteColor,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            border: InputBorder.none,
            suffixIcon: SvgPicture.asset(icon),
            suffixIconConstraints: const BoxConstraints(
              minHeight: 10,
              minWidth: 55,
            ),
            contentPadding: EdgeInsets.zero,
          ),
        ),
      ),
    );
  }
}
