import 'package:flutter/material.dart';
import 'package:gpay_clone/constants/constant_size.dart';

import '../../constants/constant_fonts.dart';

class ContactPayScreen extends StatelessWidget {
  const ContactPayScreen({super.key, required this.name, required this.email});
  final String name;
  final String email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leadingWidth: 25,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 30,
              height: 30,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFF498744),
              ),
              child: const Center(
                  child: Text(
                "A",
                style: TextStyle(fontFamily: ConstantFonts.googleSansRegular, color: Colors.white, fontSize: 20),
              )),
            ),
            SizeConstant.getWidthSpace(10),
            Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                name,
                style: const TextStyle(fontSize: 14),
              ),
              Text(
                email,
                style: const TextStyle(fontSize: 12),
              ),
            ])
          ],
        ),
        actions: [
          const InkWell(
            child: Icon(Icons.call),
          ),
          SizeConstant.getWidthSpace(5),
          const InkWell(
            child: Icon(Icons.more_vert_outlined),
          ),
          SizeConstant.getWidthSpace(5),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(40), color: Colors.blue),
              child: const Text(
                "Pay",
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizeConstant.getWidthSpace(10),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(40), color: Colors.blue),
              child: const Text(
                "Request",
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizeConstant.getWidthSpace(10),
            Flexible(
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.zero,
                    filled: true,
                    fillColor: Colors.grey.shade200,
                    border: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(50)),
                    hintText: "   Message....",
                    hintStyle: const TextStyle(color: Colors.grey),
                    suffix: const InkWell(
                      child: Icon(Icons.send_outlined),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
