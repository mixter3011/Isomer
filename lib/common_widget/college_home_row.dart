import 'package:fintech/common/color_extensions.dart';
import 'package:flutter/material.dart';

class CollegeHomeRow extends StatefulWidget {
  final Map<String, dynamic> sObj;
  final VoidCallback onPressed;

  const CollegeHomeRow({
    Key? key,
    required this.sObj,
    required this.onPressed,
  }) : super(key: key);

  @override
  _CollegeHomeRowState createState() => _CollegeHomeRowState();
}

class _CollegeHomeRowState extends State<CollegeHomeRow> {
  bool isStarred = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: widget.onPressed,
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
                widget.sObj["icon"],
                width: 40,
                height: 40,
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  widget.sObj["name"],
                  style: TextStyle(
                    color: TColor.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Text(
                "${widget.sObj["price"]}",
                style: TextStyle(
                  color: TColor.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              _buildStarButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStarButton() {
    return GestureDetector(
      onTap: () {
        setState(() {
          // Toggle the state of the star button
          isStarred = !isStarred;
        });
      },
      child: Icon(
        isStarred ? Icons.star : Icons.star_border,
        color: isStarred ? Colors.blue : TColor.white,
        size: 24,
      ),
    );
  }
}
