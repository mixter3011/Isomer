import 'package:fintech/common/color_extensions.dart';
import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final double fontSize;
  final FontWeight fontWeight;
  const SecondaryButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.fontSize = 14,
    this.fontWeight = FontWeight.w600,
  });

  @override
  Widget build(BuildContext context){
    return InkWell(
                onTap: () {},
                child: Container(
                  height: 59,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage("assets/images/secodry_btn.png"),
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    title,
                    style: TextStyle(
                        color: TColor.white,
                        fontSize: fontSize,
                        fontFamily: 'Inter',
                        fontWeight: fontWeight),
                  ),
                ),
              );
            }
          }