import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intensity_classifier_app/presentation/home/screens/home_screen.dart';
import 'package:intensity_classifier_app/utils/constants/constant_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: ConstantFonts.manropeRegular
      ),
      home: const HomeScreen(),
    );
  }
}
