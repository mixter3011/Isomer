import 'package:fintech/common/color_extensions.dart';
import 'package:flutter/material.dart';

class StatusButton extends StatelessWidget {
  final String title;
  final String value;
  final Color statuscolor;
  final VoidCallback onPressed;
  const StatusButton({
    super.key, 
    required this.title,
    required this.value, 
    required this.onPressed, 
    required this.statuscolor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
     onTap: onPressed,
     child: Stack(
      alignment: Alignment.topCenter,
       children: [
        Container(
        height: 68,
          decoration: BoxDecoration(
            border: Border.all(
              color: TColor.border.withOpacity(0.15),
              ),
              color: TColor.gray60.withOpacity(0.2),
              borderRadius: BorderRadius.circular(16),
              ),
              alignment: Alignment.center,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                    color: TColor.gray40,
                    fontSize: 12, 
                    fontWeight: FontWeight.w600),
                    ),
                    Text(
                    value,
                    style: TextStyle(
                    color: TColor.white,
                    fontSize: 14, 
                    fontWeight: FontWeight.w600),
                    ),
                   ],
                  ),
                 ),
                 Container(
                 width: 60,
                 height: 1,
                 color: statuscolor,
                 ),     
                ],
               ),
              );
             }
            }