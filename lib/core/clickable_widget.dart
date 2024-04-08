import 'package:flutter/material.dart';

//ink well widget...
class InkWellWidget extends StatelessWidget {
  final Function()? onTap;
  final Widget child;

  const InkWellWidget({Key? key, this.onTap, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      child: child,
    );
  }
}

class IconButtonWidget extends StatelessWidget {
  final Function()? onPressed;
  final Widget icon;
  final EdgeInsets padding;

  const IconButtonWidget({
    Key? key,
    this.onPressed,
    required this.icon,
    this.padding = const EdgeInsets.only(right: 15),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      padding: padding,
      constraints: BoxConstraints(),
      icon: icon,
    );
  }
}
