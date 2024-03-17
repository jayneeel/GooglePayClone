import 'package:flutter/material.dart';

class BillRechargeButton extends StatelessWidget {
  const BillRechargeButton({super.key, required this.iconData, required this.title});
  final IconData iconData;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
              color: Color(0xFFC1E5FD),
          ),
          child: Icon(iconData, color: const Color(0xFF011D35)),
        ),
        Text(title, style: const TextStyle(color: Color(0xFF011D35)) , textAlign: TextAlign.center)
      ],
    );
  }
}
