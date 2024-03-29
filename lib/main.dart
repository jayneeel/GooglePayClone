import 'package:flutter/material.dart';
import 'package:gpay_clone/constants/constant_fonts.dart';
import 'package:gpay_clone/screens/home/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: ConstantFonts.googleSansRegular,
      ),
      home: const HomeScreen(),
    );
  }
}
