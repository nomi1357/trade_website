import 'package:flutter/material.dart';
import 'package:trades_website/core/consts.dart';
import 'package:trades_website/core/responsive.dart';

import 'forgot_screens.dart';

class ForgotPage extends StatefulWidget {
  const ForgotPage({Key? key}) : super(key: key);

  @override
  State<ForgotPage> createState() => _ForgotPageState();
}

class _ForgotPageState extends State<ForgotPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: mainBgColorTwo,
        body: Responsive(
          mobile: Container(
            color: mainBgColorTwo,
          ),
          tablet: Container(
            color: mainBgColorTwo,
          ),
          desktop: const ForgotScreen(),
        ),
      ),
    );
  }
}
