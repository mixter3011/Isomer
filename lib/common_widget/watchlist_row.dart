import 'package:fintech/common/color_extensions.dart';
import 'package:flutter/material.dart';

class WatchlistRow extends StatelessWidget {
  final Map<String, dynamic> sObj;
  final VoidCallback onPressed;

  const WatchlistRow({
    Key? key,
    required this.sObj,
    required this.onPressed,
  }) : super(key: key);

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
              Container(
                height: 40,
                width: 40,
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: TColor.gray70.withOpacity(0.5),
                  ),
                  color: TColor.gray60.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(10),
                ),
                alignment: Alignment.center,
                child: Column(children: [
                  Text(
                  "Jun",
                  style: TextStyle(
                    color: TColor.gray30,
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "25",
                  style: TextStyle(
                    color: TColor.gray30,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                ],),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  sObj["name"],
                  style: TextStyle(
                    color: TColor.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              _buildTag(sObj["tag"]), // Display corresponding tag
              const SizedBox(width: 8),
              Text(
                "\₹${sObj["price"]}",
                style: TextStyle(
                  color: TColor.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTag(String tag) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: TColor.gray30.withOpacity(0.2), // You can change the color here
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        tag, // Use the tag provided in sObj
        style: const TextStyle(
          color: Colors.white, // You can customize the text color here
          fontSize: 12, // You can customize the font size here
        ),
      ),
    );
  }
}
