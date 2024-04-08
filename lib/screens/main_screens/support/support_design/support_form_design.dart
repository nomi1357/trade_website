import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trades_website/core/button_widget.dart';
import 'package:trades_website/core/consts.dart';
import 'package:trades_website/screens/main_screens/support/support_widget.dart';

class SupportFormWidget extends StatefulWidget {
  const SupportFormWidget({Key? key}) : super(key: key);

  @override
  State<SupportFormWidget> createState() => _SupportFormWidgetState();
}

class _SupportFormWidgetState extends State<SupportFormWidget> {
  TextEditingController myHelpController = TextEditingController();
  TextEditingController myEmailController = TextEditingController();
  TextEditingController mySubjectController = TextEditingController();
  TextEditingController myDetailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 780,
      padding: const EdgeInsets.fromLTRB(30,20,30,20),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          RichText(
            text: const TextSpan(
              text: 'I need help with',
              style: TextStyle(
                  color: Color(0xFF212529),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  overflow: TextOverflow.ellipsis),
              children: <TextSpan>[
                TextSpan(
                  text: ' * ',
                  style: TextStyle(
                      color: redColorTwo,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      overflow: TextOverflow.ellipsis),
                ),
              ],
            ),
          ),
          SupportFieldWidget(
            myController: myHelpController,
            suffixIcon: SvgPicture.asset("assets/support_icons/up_down.svg"),
          ),
          const SizedBox(height: 1),
          RichText(
            text: const TextSpan(
              text: 'The email address associated with your BitMEX account',
              style: TextStyle(
                  color: Color(0xFF212529),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  overflow: TextOverflow.ellipsis),
              children: <TextSpan>[
                TextSpan(
                  text: ' * ',
                  style: TextStyle(
                      color: redColorTwo,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      overflow: TextOverflow.ellipsis),
                ),
              ],
            ),
          ),
          SupportFieldWidget(
            myController: myEmailController,
          ),
          const SizedBox(height: 1),
          RichText(
            text: const TextSpan(
              text: 'Subject',
              style: TextStyle(
                  color: Color(0xFF212529),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  overflow: TextOverflow.ellipsis),
              children: <TextSpan>[
                TextSpan(
                  text: ' * ',
                  style: TextStyle(
                      color: redColorTwo,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      overflow: TextOverflow.ellipsis),
                ),
              ],
            ),
          ),
          SupportFieldWidget(
            myController: mySubjectController,
          ),
          RichText(
            text: const TextSpan(
              text: 'Details of your request',
              style: TextStyle(
                  color: Color(0xFF212529),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  overflow: TextOverflow.ellipsis),
            ),
          ),
          Container(
            height: 300,
            margin: const EdgeInsets.only(top: 6,bottom: 6),
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(4),
              border: Border.all(
                color: const Color(0xFFCED4DA),
                width: 1,
              ),
            ),
            child: Column(
              children: <Widget>[
                Container(
                  height: 54,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: const BoxDecoration(
                    color: whiteColor,
                    border: Border(
                      bottom: BorderSide(
                        color: Color(0xFFCED4DA),
                        width: 1,
                      ),
                    ),
                  ),
                  child: Center(
                    child: Row(
                      children: <Widget>[
                        SvgPicture.asset("assets/support_icons/b.svg"),
                        SvgPicture.asset("assets/support_icons/i.svg"),
                        SvgPicture.asset("assets/support_icons/u.svg"),
                        SvgPicture.asset("assets/support_icons/attachment.svg"),
                        const SizedBox(width: 16),
                        SvgPicture.asset("assets/support_icons/bullet1.svg"),
                        SvgPicture.asset("assets/support_icons/bullet2.svg"),
                        const SizedBox(width: 16),
                        SvgPicture.asset("assets/support_icons/right_left.svg"),
                        SvgPicture.asset("assets/support_icons/coma.svg"),
                        const SizedBox(width: 16),
                        SvgPicture.asset("assets/support_icons/align1.svg"),
                        SvgPicture.asset("assets/support_icons/align2.svg"),
                        SvgPicture.asset("assets/support_icons/align3.svg"),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: myDetailController,
                    maxLines: 10,
                    style: const TextStyle(
                      color: blackColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                      fillColor: whiteColor,
                      filled: true,
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
              ],
            ),
          ),
          RichText(
            text: const TextSpan(
              text: 'A member of our Customer Support staff will get back to you as soon as possible.',
              style: TextStyle(
                  color: Color(0xFF212529),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  overflow: TextOverflow.ellipsis),
            ),
          ),
          const SizedBox(height: 20),
          ButtonWidget(
            text: "Submit",
            height: 45,
            width: 112,
            btnColor: const Color(0xFF0D59A7),
            borderColor: const Color(0xFF0D59A7),
            fontSize: 18,
            fontWeight: FontWeight.w600,
            textColor: whiteColor,
            borderRadius: 4,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
