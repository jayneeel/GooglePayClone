import 'package:flutter/material.dart';
import 'package:gpay_clone/constants/constant_colors.dart';
import 'package:gpay_clone/constants/constant_size.dart';
import 'package:gpay_clone/constants/constants.dart';
import 'package:gpay_clone/widgets/action_button.dart';
import 'package:gpay_clone/widgets/bill_recharge_button.dart';

import '../widgets/bill_recharges_section_widget.dart';
import '../widgets/businesses_section_widget.dart';
import '../widgets/home_appbar_widget.dart';
import '../widgets/people_section_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const HomeAppBar(),
                Image.asset("assets/images/hero.png", width: double.infinity, height: 200),
                const HomeQuickActions(),
                const PeopleSection(),
                SizeConstant.getHeightSpace(20),
                const BusinessesSection(),
                SizeConstant.getHeightSpace(20),
                const BillRechargeSection(),
                const RechargeCategorySection(),
                SizeConstant.getHeightSpace(18),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(color: ConstantColors.blackColor),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: const Text(
                      "View all",
                      style: TextStyle(
                        color: ConstantColors.primaryBlueColor,
                      ),
                    ),
                  ),
                ),
                const OfferRewardsSection()
              ],
            ),
          )),
    );
  }
}

class OfferRewardsSection extends StatelessWidget {
  const OfferRewardsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Offers & rewards",
            style: TextStyle(
              fontSize: 26,
              color: ConstantColors.blackColor,
            ),
          ),
          const Text(
            "Manage your money",
            style: TextStyle(
              fontSize: 26,
              color: ConstantColors.blackColor,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            decoration: BoxDecoration(color: const Color(0xFFF6F7FB), borderRadius: BorderRadius.circular(30)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.credit_card,
                      color: Color(0xFF0B56CD),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFFC1ECCE),
                      ),
                      child: const Text("₹500 offer"),
                    )
                  ],
                ),
                SizeConstant.getHeightSpace(10),
                const Text("Get a credit card"),
                const Text("Save up to ₹12,000 yearly"),
                const Text(
                  "Apply now",
                  style: TextStyle(color: Color(0xFF0B56CD)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class RechargeCategorySection extends StatelessWidget {
  const RechargeCategorySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BillRechargeButton(
            iconData: Icons.mobile_friendly,
            title: "Mobile\nrecharge",
          ),
          BillRechargeButton(
            iconData: Icons.tv,
            title: "DTH / Cable\nTV",
          ),
          BillRechargeButton(
            iconData: Icons.lightbulb_outline_rounded,
            title: "Electricity\n",
          ),
          BillRechargeButton(
            iconData: Icons.car_crash_outlined,
            title: "FASTag\nrecharge",
          ),
        ],
      ),
    );
  }
}

class HomeQuickActions extends StatelessWidget {
  const HomeQuickActions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
      child: GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 8,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
          itemBuilder: (context, index) {
            return ActionButton(
              title: homeActionButtonList[index]["title"],
              icon: homeActionButtonList[index]["icon"],
              onTap: homeActionButtonList[index]["onTap"],
            );
          }),
    );
  }
}
