import 'package:flutter/material.dart';

class FlutterCircleButton extends StatelessWidget {
  final Widget buttonIcon;
  final Color? buttonColor;
  final Function onTap;
  final double buttonElevation;
  final Color buttonBorderColor;

  const FlutterCircleButton({
    Key? key,
    required this.buttonIcon,
    required this.onTap,
    this.buttonColor = Colors.blue,
    this.buttonElevation = 0,
    this.buttonBorderColor = Colors.blue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        shape: CircleBorder(
          side: BorderSide(color: buttonBorderColor),
        ),
        elevation: buttonElevation,
        primary: buttonColor,
      ),
      onPressed: () {
        onTap();
      },
      child: buttonIcon,
    );
  }
}
