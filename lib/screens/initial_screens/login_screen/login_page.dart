import 'package:flutter/material.dart';
import 'package:trades_website/core/consts.dart';
import 'package:trades_website/core/responsive.dart';

import 'login_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
          desktop: const LoginScreen(),
        ),
      ),
    );
  }
}
