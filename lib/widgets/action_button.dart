import 'package:flutter/material.dart';
import 'package:gpay_clone/constants/constant_colors.dart';
import 'package:gpay_clone/constants/constant_fonts.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({super.key, required this.title, required this.icon, required this.onTap});
  final String title;
  final VoidCallback onTap;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: ConstantColors.primaryBlueColor,),
          const SizedBox(height: 2,),
          Text(title, maxLines: 2, textAlign: TextAlign.center,style: const TextStyle(color: ConstantColors.blackColor, fontSize: 14, fontFamily: ConstantFonts.googleSansMedium),)
        ],
      ),
    );
  }
}
