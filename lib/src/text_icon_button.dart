import 'package:flutter/material.dart';

class FlutterIconButton extends StatefulWidget {
  final String buttonText;
  final Function onTap;
  final Color? textColor;
  final Color? buttonColor;
  final double buttonWidth;
  final double buttonHeight;
  final Widget buttonIcon;

  const FlutterIconButton({
    Key? key,
    required this.buttonText,
    required this.onTap,
    this.textColor = Colors.white,
    this.buttonColor = Colors.blue,
    this.buttonHeight = 45.00,
    this.buttonWidth = 300.00,
    required this.buttonIcon,
  }) : super(key: key);

  @override
  State<FlutterIconButton> createState() => _FlutterIconButtonState();
}

class _FlutterIconButtonState extends State<FlutterIconButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      style: TextButton.styleFrom(
        backgroundColor: widget.buttonColor,
        minimumSize: Size(widget.buttonWidth, widget.buttonHeight),
        primary: Colors.white,
      ),
      onPressed: () {
        widget.onTap();
      },
      label: Text(
        widget.buttonText,
        style: TextStyle(color: widget.textColor),
      ),
      icon: widget.buttonIcon,
    );
  }
}
