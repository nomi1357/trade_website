import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:trades_website/core/button_widget.dart';
import 'package:trades_website/core/consts.dart';
import 'package:form_field_validator/form_field_validator.dart';

import '../../../core/text_form_field_widget.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  var myFormKey = GlobalKey<FormState>();
  TextEditingController myEmailController = TextEditingController();
  TextEditingController myPasswordController = TextEditingController();
  TextEditingController myConfirmPasswordController = TextEditingController();
  TextEditingController myUsernameController = TextEditingController();
  TextEditingController myCountryController = TextEditingController();
  TextEditingController myCodeController = TextEditingController();
  bool isTerms = false;

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return const Color(0xFF111A24);
    }
    return const Color(0xFF111A24);
  }

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
              child: Form(
                key: myFormKey,
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
                        "register",
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
                      textInputAction: TextInputAction.next,
                      validator: RequiredValidator(
                        errorText: Locales.string(context, "required"),
                      ),
                    ),
                    const LocaleText(
                      "username",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: whiteColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextFormFieldWidget(
                      myController: myUsernameController,
                      textInputType: TextInputType.name,
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
                      textInputAction: TextInputAction.next,
                      validator: RequiredValidator(
                        errorText: Locales.string(context, "required"),
                      ),
                    ),
                    const LocaleText(
                      "confirm_password",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: whiteColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextFormFieldWidget(
                      myController: myConfirmPasswordController,
                      textInputType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      validator: RequiredValidator(
                        errorText: Locales.string(context, "required"),
                      ),
                    ),
                    const LocaleText(
                      "country",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: whiteColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextFormFieldWidget(
                      myController: myCountryController,
                      textInputType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      validator: RequiredValidator(
                        errorText: Locales.string(context, "required"),
                      ),
                    ),
                    const LocaleText(
                      "code",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: whiteColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        SizedBox(
                          width: 380,
                          child: TextFormFieldWidget(
                            myController: myCodeController,
                            textInputType: TextInputType.number,
                            textInputAction: TextInputAction.done,
                            isGiveBottomPadding: false,
                            validator: RequiredValidator(
                              errorText: Locales.string(context, "required"),
                            ),
                          ),
                        ),
                        const SizedBox(width: 40),
                        const LocaleText(
                          "apply",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: whiteColor,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 14),
                    Row(
                      children: <Widget>[
                        Checkbox(
                          checkColor: whiteColor,
                          fillColor:
                              MaterialStateProperty.resolveWith(getColor),
                          activeColor: const Color(0xFF111A24),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                          side: MaterialStateBorderSide.resolveWith(
                            (states) => const BorderSide(
                              width: 1.0,
                              color: whiteColor,
                            ),
                          ),
                          value: isTerms,
                          onChanged: (bool? value) {
                            setState(() {
                              isTerms = value!;
                            });
                          },
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: RichText(
                            text: TextSpan(
                              text: Locales.string(context, "i_agree"),
                              style: const TextStyle(
                                color: whiteColor,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: Locales.string(context, "terms"),
                                  style: const TextStyle(
                                    color: Color(0xFF0D59A7),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                TextSpan(
                                  text: Locales.string(context, "privacy"),
                                  style: const TextStyle(
                                    color: whiteColor,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                TextSpan(
                                  text: Locales.string(context, "regulations"),
                                  style: const TextStyle(
                                    color: Color(0xFF0D59A7),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    ButtonWidget(
                      text: Locales.string(context, "register_small"),
                      height: 64,
                      width: double.infinity,
                      btnColor: const Color(0xFF0D59A7),
                      borderColor: const Color(0xFF0D59A7),
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      textColor: whiteColor,
                      borderRadius: 12,
                      onPressed: onButtonPressed,
                    ),
                    const SizedBox(height: 90),
                    Center(
                      child: RichText(
                        text: TextSpan(
                          text: Locales.string(context, "already"),
                          style: const TextStyle(
                            color: whiteColor,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: Locales.string(context, "login_small"),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.pop(context);
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
      ),
    );
  }
}
