import 'package:flutter/material.dart';
import 'package:gpay_clone/constants/constant_colors.dart';
import 'package:gpay_clone/constants/constant_fonts.dart';
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
                const ManageMoneySection()
              ],
            ),
          )),
    );
  }
}

class ManageMoneySection extends StatelessWidget {
  const ManageMoneySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Manage your moneys",
            style: TextStyle(
              fontSize: 26,
              color: ConstantColors.blackColor,
            ),
          ),
          ManageMoneyTile(title: "Check your CIBIL Score for free", icon: Icon(Icons.electric_meter_outlined, color: ConstantColors.primaryBlueColor,),),
          SizedBox(height: 10,),
          ManageMoneyTile(title: "See transaction history", icon: Icon(Icons.restore, color: ConstantColors.primaryBlueColor,),),
          SizedBox(height: 10,),
          ManageMoneyTile(title: "Check bank balance", icon: Icon(Icons.account_balance_outlined, color: ConstantColors.primaryBlueColor,),),
          SizedBox(height: 10,),
        ],
      ),
    );
  }
}

class ManageMoneyTile extends StatelessWidget {
  const ManageMoneyTile({
    super.key, required this.title, required this.icon,
  });
  final String title;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              icon,
              SizeConstant.getWidthSpace(10),
              Text(title, style: const TextStyle(fontFamily: ConstantFonts.googleSansMedium, fontSize: 16),),
            ],
          ),
          const Icon(Icons.arrow_forward_ios, color: Colors.black87,)
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
        mainAxisAlignment: MainAxisAlignment.spaceAround,
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
