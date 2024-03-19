import 'package:flutter/material.dart';

class CounselorDetailIcons extends StatelessWidget {
  final String value;
  final String subtitle;
  final Icon iconType;
  const CounselorDetailIcons({
    super.key,
    required this.subtitle,
    required this.iconType,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          alignment: Alignment.center,
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(27, 143, 199, 1),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            icon: iconType,
            onPressed: () {},
          ),
        ),
        const SizedBox(width: 10),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              value,
              style: const TextStyle(
                color: Color.fromRGBO(0, 0, 0, 1),
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              subtitle,
              style: const TextStyle(
                color: Color.fromRGBO(42, 42, 42, 1),
                fontSize: 11,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const SizedBox(
          width: 10,
        )
      ],
    );
  }
}
