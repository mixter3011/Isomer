
import 'package:fintech/common/color_extensions.dart';
import 'package:flutter/material.dart';


class PrimaryButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final double fontSize;
  final FontWeight fontWeight;
  const PrimaryButton({super.key, required this.title, this.fontSize = 14, this.fontWeight = FontWeight.w600, required this.onPressed });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 60,
        decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage("assets/images/primary_btn.png"),
            ),
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                  color: TColor.secondary.withOpacity(0.25),
                  blurRadius: 10,
                  offset: const Offset(0, 5))
            ]),
        alignment: Alignment.center,
        child: Text(
          title,
          style: TextStyle(
              color: TColor.white, fontSize: fontSize, fontWeight: fontWeight),
        ),
      ),
    );
  }
}