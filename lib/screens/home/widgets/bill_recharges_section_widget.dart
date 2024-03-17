import 'package:flutter/material.dart';

import '../../../constants/constant_colors.dart';
import '../../../constants/constant_size.dart';

class BillRechargeSection extends StatelessWidget {
  const BillRechargeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Bills & recharges",
            style: TextStyle(
              fontSize: 26,
              color: ConstantColors.blackColor,
            ),
          ),
          SizeConstant.getHeightSpace(8),
          const Text(
            "No bills due. Try adding these!",
            style: TextStyle(
              fontSize: 14,
              color: ConstantColors.blackColor,
            ),
          ),
          SizeConstant.getHeightSpace(20),
        ],
      ),
    );
  }
}
