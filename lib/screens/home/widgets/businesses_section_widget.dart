import 'package:flutter/material.dart';

import '../../../constants/constant_colors.dart';
import '../../../constants/constant_size.dart';
import '../../../widgets/contact.dart';
import '../../pay/contact_pay_screen.dart';

class BusinessesSection extends StatelessWidget {
  const BusinessesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Businesses",
                style: TextStyle(
                  fontSize: 26,
                  color: ConstantColors.blackColor,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: const Color(0xFFC1E5FD)),
                child: Row(
                  children: [
                    const Icon(
                      Icons.shopping_bag_outlined,
                      color: Color(0xFF041E48),
                    ),
                    SizeConstant.getWidthSpace(5),
                    const Text("Explore", style: TextStyle(color: Color(0xFF001D35)),)
                  ],
                ),
              )
            ],
          ),
          SizeConstant.getHeightSpace(20),
          GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 8,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
              itemBuilder: (context, index) {
                return InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const ContactPayScreen(
                            name: 'Neeraj Patil',
                            email: 'neerajpatil@gmail.com',
                          )));
                    },
                    child: const Contact(name: "Neeraj Patil"));
              }),
        ],
      ),
    );
  }
}
