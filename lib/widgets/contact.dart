import 'package:flutter/material.dart';
import 'package:gpay_clone/constants/constant_colors.dart';
import 'package:gpay_clone/constants/constant_fonts.dart';
import 'package:gpay_clone/constants/constant_size.dart';
import 'dart:math' as math;
class Contact extends StatelessWidget {
  const Contact({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 120,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xFFC9C5BE)),
              shape: BoxShape.circle,
              color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0),
            ),
            child: Center(child: Text(name[0].toUpperCase(), style: const TextStyle(fontFamily: ConstantFonts.googleSansRegular, color: Colors.white, fontSize: 20),)),
          ),
          SizeConstant.getHeightSpace(8),
          Text(name, style: const TextStyle(fontSize: 14, color: ConstantColors.blackColor))
        ],
      ),
    );
  }
}
