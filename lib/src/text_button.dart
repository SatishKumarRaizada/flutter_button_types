import 'package:flutter/material.dart';

class FlutterTextButton extends StatefulWidget {
  final String buttonText;
  final Function onTap;
  final Color? textColor;
  final Color? buttonColor;
  final double buttonWidth;
  final double buttonHeight;

  const FlutterTextButton({
    Key? key,
    required this.buttonText,
    required this.onTap,
    this.textColor = Colors.white,
    this.buttonColor = Colors.blue,
    this.buttonHeight = 45.00,
    this.buttonWidth = 300.00,
  }) : super(key: key);

  @override
  State<FlutterTextButton> createState() => _FlutterTextButtonState();
}

class _FlutterTextButtonState extends State<FlutterTextButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: widget.buttonColor,
        minimumSize: Size(widget.buttonWidth, widget.buttonHeight),
        primary: Colors.white,
      ),
      onPressed: () {
        widget.onTap();
      },
      child: Text(
        widget.buttonText,
        style: TextStyle(color: widget.textColor),
      ),
    );
  }
}
