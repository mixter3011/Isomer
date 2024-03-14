import 'package:fintech/common/color_extensions.dart';
import 'package:flutter/material.dart';

class SIPHomeRow extends StatelessWidget {
  final Map sObj;
  final VoidCallback onPressed;
  const SIPHomeRow({
    super.key, 
    required this.sObj, 
    required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: InkWell(
       borderRadius: BorderRadius.circular(16),
       onTap: onPressed,
       child: Container(
        height: 64,
         padding: const EdgeInsets.all(10),
         decoration: BoxDecoration(
            border: Border.all(
              color: TColor.border.withOpacity(0.15),
              ),
              color: TColor.gray60.withOpacity(0.2),
              borderRadius: BorderRadius.circular(16),
              ),
              alignment: Alignment.center,
              child: Row(
                children: [
                  Image.asset( 
                    sObj["icon"], 
                    width: 40, 
                    height: 40,
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      sObj["name"],
                      style: TextStyle(
                      color: TColor.white,
                      fontSize: 14, 
                      fontWeight: FontWeight.w600),
                      ),
                     ),
      
                     const SizedBox(width: 8),
      
                     Text(
                      "\$${ sObj["price"]}",
                      style: TextStyle(
                      color: TColor.white,
                      fontSize: 14, 
                      fontWeight: FontWeight.w600),
                      ),
                    ],
                   ),
                  ),
                 ),
                );
              }
             }