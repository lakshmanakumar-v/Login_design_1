import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onTap;
  final Color? buttonColor;
  final Color? borderColor;
  final double borderRadius;
  final String text;
  final Color? textColor;
  final double? fontSize;
  final double borderWidth;
  final double? width;
  final double? height;
  const CustomButton({
    super.key,
    required this.onTap,
    this.buttonColor,
    this.borderColor,
    required this.borderRadius,
    required this.text,
    this.textColor,
    this.fontSize,
    this.borderWidth = 2,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          border:
              Border.all(color: borderColor ?? Colors.blue, width: borderWidth),
          color: buttonColor,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: textColor, fontSize: fontSize, fontFamily: "regular"),
          ),
        ),
      ),
    );
  }
}
