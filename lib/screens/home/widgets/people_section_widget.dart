import 'package:flutter/material.dart';
import 'package:gpay_clone/constants/constant_size.dart';
import '../../../constants/constant_colors.dart';
import '../../../widgets/contact.dart';

class PeopleSection extends StatelessWidget {
  const PeopleSection({
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
            "People",
            style: TextStyle(
              fontSize: 26,
              color: ConstantColors.blackColor,
            ),
          ),
          SizeConstant.getHeightSpace(20),
          GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 8,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
              itemBuilder: (context, index) {
                return const Contact(name: "Neeraj Patil");
              }),
        ],
      ),
    );
  }
}
