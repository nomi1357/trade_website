import 'package:flutter/material.dart';
import 'package:trades_website/core/consts.dart';
import 'package:trades_website/core/responsive.dart';

import 'register_screen.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
          desktop: const RegisterScreen(),
        ),
      ),
    );
  }
}
