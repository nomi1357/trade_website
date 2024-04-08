import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:trades_website/core/button_widget.dart';
import 'package:trades_website/core/consts.dart';
import 'package:form_field_validator/form_field_validator.dart';

import '../../../core/text_form_field_widget.dart';

class ForgotScreen extends StatefulWidget {
  const ForgotScreen({Key? key}) : super(key: key);

  @override
  State<ForgotScreen> createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {
  var myFormKey = GlobalKey<FormState>();
  TextEditingController myEmailController = TextEditingController();

  void onButtonPressed() {
    if (myFormKey.currentState!.validate()) {
      // if (isLoginWithKey) {
      //
      // }
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: mainBgColorOne,
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              width: 1000,
              margin: const EdgeInsets.only(top: 40, bottom: 40),
              padding: const EdgeInsets.fromLTRB(100, 40, 100, 40),
              color: mainBgColorTwo,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: Image.asset(
                      "assets/app_images/main_logo.png",
                    ),
                  ),
                  const SizedBox(height: 40),
                  const Center(
                    child: LocaleText(
                      "forgot",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: whiteColor,
                        fontSize: 40,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  const LocaleText(
                    "email",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: whiteColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextFormFieldWidget(
                    myController: myEmailController,
                    textInputType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.done,
                    validator: RequiredValidator(
                      errorText: Locales.string(context, "required"),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: ButtonWidget(
                          text: Locales.string(context, "cancel"),
                          height: 64,
                          width: double.infinity,
                          btnColor: mainBgColorTwo,
                          borderColor: const Color(0xFF0D59A7),
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          textColor: whiteColor,
                          borderRadius: 12,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      const SizedBox(width: 60),
                      Expanded(
                        child: ButtonWidget(
                          text: Locales.string(context, "submit"),
                          height: 64,
                          width: double.infinity,
                          btnColor: const Color(0xFF0D59A7),
                          borderColor: const Color(0xFF0D59A7),
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          textColor: whiteColor,
                          borderRadius: 12,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
