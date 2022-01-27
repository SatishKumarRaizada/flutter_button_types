import 'package:flutter/material.dart';

class FlutterTextButton extends StatelessWidget {
  final String buttonText;
  final Function onTap;
  final Color? textColor;
  final Color? buttonColor;
  final double buttonWidth;
  final double buttonHeight;
  final double textSize;

  const FlutterTextButton({
    Key? key,
    required this.buttonText,
    required this.onTap,
    this.textColor = Colors.white,
    this.buttonColor = Colors.blue,
    this.buttonHeight = 45.00,
    this.buttonWidth = 300.00,
    this.textSize = 16,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: buttonColor,
        minimumSize: Size(buttonWidth, buttonHeight),
        primary: Colors.white,
      ),
      onPressed: () {
        onTap();
      },
      child: Text(
        buttonText,
        style: TextStyle(
          color: textColor,
          fontSize: textSize,
        ),
      ),
    );
  }
}
