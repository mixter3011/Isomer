import 'package:fintech/common/color_extensions.dart';
import 'package:flutter/material.dart';

class RoundTextField extends StatelessWidget {
  final String title;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final TextAlign titleAlign;
  final bool obscureText;
  final Color? textColor; // New property for text color
  const RoundTextField({
    Key? key,
    required this.title,
    this.titleAlign = TextAlign.left,
    this.controller,
    this.keyboardType,
    this.obscureText = false,
    this.textColor, // Initializing the new property
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                title,
                textAlign: titleAlign,
                style: TextStyle(
                  color: textColor ?? TColor.gray50, // Use textColor if provided, else default to TColor.gray50
                  fontSize: 12,
                ),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 4,
        ),
        Container(
          height: 48,
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: TColor.gray60.withOpacity(0.05),
            border: Border.all(color: TColor.gray70),
            borderRadius: BorderRadius.circular(15),
          ),
          child: TextField(
            controller: controller,
            decoration: const InputDecoration(
              focusedBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
            ),
            keyboardType: keyboardType,
            obscureText: obscureText,
            style: TextStyle(color: textColor), // Set text color of TextField
          ),
        )
      ],
    );
  }
}
