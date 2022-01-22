import 'package:flutter/material.dart';

class FlutterOutlineButton extends StatefulWidget {
  final String buttonText;
  final Function onTap;
  final Color? textColor;
  final Color? buttonColor;
  final Color primaryButtonColor;
  final double buttonWidth;
  final double buttonHeight;
  final double buttonRadius;
  final double buttonBorderWidth;

  const FlutterOutlineButton({
    Key? key,
    required this.buttonText,
    required this.onTap,
    this.textColor = Colors.blue,
    this.buttonColor = Colors.blue,
    this.buttonHeight = 45.00,
    this.buttonWidth = 300.00,
    this.primaryButtonColor = Colors.blue,
    this.buttonRadius = 5.0,
    this.buttonBorderWidth = 1.0,
  }) : super(key: key);

  @override
  State<FlutterOutlineButton> createState() => _FlutterOutlineButtonState();
}

class _FlutterOutlineButtonState extends State<FlutterOutlineButton> {
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        minimumSize: Size(widget.buttonWidth, widget.buttonHeight),
        primary: widget.primaryButtonColor,
        side: BorderSide(
          color: widget.primaryButtonColor,
          width: widget.buttonBorderWidth,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            (widget.buttonRadius),
          ),
        ),
      ),
      onPressed: () {
        widget.onTap();
      },
      child: Text(
        widget.buttonText,
      ),
    );
  }
}
