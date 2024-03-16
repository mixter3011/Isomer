import 'package:fintech/common/color_extensions.dart';
import 'package:flutter/material.dart';

class EnterpriseHomeRow extends StatefulWidget {
  final Map<String, dynamic> entObj;
  final VoidCallback onPressed;

  const EnterpriseHomeRow({
    Key? key,
    required this.entObj,
    required this.onPressed,
  }) : super(key: key);

  @override
  _EnterpriseHomeRowState createState() => _EnterpriseHomeRowState();
}

class _EnterpriseHomeRowState extends State<EnterpriseHomeRow> {
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
                widget.entObj["icon"],
                width: 40,
                height: 40,
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  widget.entObj["name"],
                  style: TextStyle(
                    color: TColor.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              _buildStarButton(),
              const SizedBox(width: 8),
              Text(
                "${widget.entObj["price"]}",
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

  Widget _buildStarButton() {
    return GestureDetector(
      onTap: () {
        setState(() {
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

  Widget _buildTag(String tag) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: TColor.gray30.withOpacity(0.2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        tag,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 12,
        ),
      ),
    );
  }
}
