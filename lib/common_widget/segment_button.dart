import 'package:fintech/common/color_extensions.dart';
import 'package:flutter/material.dart';

class SegmentButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final bool isActive;
  const SegmentButton({super.key, required this.title, required this.onPressed, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return InkWell(
     onTap: onPressed,
     child: Container(
        decoration: isActive ? BoxDecoration(
          border: Border.all(
            color: TColor.border.withOpacity(0.15),
            ),
            color: TColor.gray60.withOpacity(0.2),
            borderRadius: BorderRadius.circular(12),
            ): null,
            alignment: Alignment.center,
            child: Text(
              title,
              style: TextStyle(
              color: isActive ? TColor.white : TColor.gray30,
              fontSize: 12, 
              fontWeight: FontWeight.w600),
              ),
             ),
            );
          }
        }