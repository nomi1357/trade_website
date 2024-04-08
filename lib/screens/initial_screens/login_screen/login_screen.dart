import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:trades_website/core/button_widget.dart';
import 'package:trades_website/core/consts.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:trades_website/screens/initial_screens/forgot_screen/forgot_page.dart';
import 'package:trades_website/screens/initial_screens/register_screen/register_page.dart';

import '../../../core/text_form_field_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var myFormKey = GlobalKey<FormState>();
  TextEditingController myKeyController = TextEditingController();
  TextEditingController mySecretController = TextEditingController();
  TextEditingController myEmailController = TextEditingController();
  TextEditingController myPasswordController = TextEditingController();
  bool isLoginWithKey = true;

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
              padding: const EdgeInsets.fromLTRB(100, 20, 100, 40),
              color: mainBgColorTwo,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: Image.asset(
                      "assets/app_images/main_logo.png",
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Center(
                    child: LocaleText(
                      "login",
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
                  ButtonWidget(
                    text: Locales.string(
                      context,
                      isLoginWithKey ? "login_password" : "login_api",
                    ),
                    height: 64,
                    width: double.infinity,
                    btnColor: mainBgColorTwo,
                    borderColor: const Color(0xFF0D59A7),
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    textColor: whiteColor,
                    borderRadius: 6,
                    onPressed: () {
                      setState(() {
                        isLoginWithKey = !isLoginWithKey;
                      });
                    },
                  ),
                  const SizedBox(height: 40),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          height: 1,
                          width: double.infinity,
                          color: whiteColor.withOpacity(.20),
                          margin: const EdgeInsets.only(right: 23),
                        ),
                      ),
                      const LocaleText(
                        "or",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: whiteColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 1,
                          width: double.infinity,
                          color: whiteColor.withOpacity(.20),
                          margin: const EdgeInsets.only(left: 23),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  isLoginWithKey
                      ? Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const LocaleText(
                              "key",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: whiteColor,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            TextFormFieldWidget(
                              myController: myKeyController,
                              textInputType: TextInputType.text,
                              textInputAction: TextInputAction.next,
                              validator: RequiredValidator(
                                errorText: Locales.string(context, "required"),
                              ),
                            ),
                            const LocaleText(
                              "secret",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: whiteColor,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            TextFormFieldWidget(
                              myController: mySecretController,
                              textInputType: TextInputType.text,
                              textInputAction: TextInputAction.done,
                              validator: RequiredValidator(
                                errorText: Locales.string(context, "required"),
                              ),
                            ),
                          ],
                        )
                      : Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
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
                              textInputAction: TextInputAction.next,
                              validator: RequiredValidator(
                                errorText: Locales.string(context, "required"),
                              ),
                            ),
                            const LocaleText(
                              "password",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: whiteColor,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            TextFormFieldWidget(
                              myController: myPasswordController,
                              textInputType: TextInputType.text,
                              textInputAction: TextInputAction.done,
                              isGiveBottomPadding: false,
                              validator: RequiredValidator(
                                errorText: Locales.string(context, "required"),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          const ForgotPage(),
                                    ),
                                  );
                                },
                                child: const LocaleText(
                                  "forgot_password",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: Color(0xFF0D59A7),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 16),
                          ],
                        ),
                  ButtonWidget(
                    text: Locales.string(context, "login_small"),
                    height: 64,
                    width: double.infinity,
                    btnColor: const Color(0xFF0D59A7),
                    borderColor: const Color(0xFF0D59A7),
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    textColor: whiteColor,
                    borderRadius: 12,
                    onPressed: () {},
                  ),
                  const SizedBox(height: 90),
                  Center(
                    child: RichText(
                      text: TextSpan(
                        text: Locales.string(context, "do_not"),
                        style: const TextStyle(
                          color: whiteColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: Locales.string(context, "signup"),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        const RegisterPage(),
                                  ),
                                );
                              },
                            style: const TextStyle(
                              color: Color(0xFF0D59A7),
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
