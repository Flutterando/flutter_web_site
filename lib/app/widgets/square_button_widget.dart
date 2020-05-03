import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SquareButtonWidget extends StatelessWidget {
  const SquareButtonWidget({
    Key key,
    this.color,
    this.onPressed,
    this.label,
    this.labelColor,
    this.fontSize,
  }) : super(key: key);

  final Color color;
  final VoidCallback onPressed;
  final String label;
  final Color labelColor;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onPressed,
      child: Container(
        color: color ?? Color(0xff25E2B1),
        padding: EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 10,
        ),
        child: Text(
          label.toUpperCase() ?? '',
          style: GoogleFonts.firaCode(
            color: labelColor ?? Colors.white,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}
