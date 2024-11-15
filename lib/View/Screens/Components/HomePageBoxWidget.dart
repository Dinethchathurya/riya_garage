import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../AppColors.dart';

class HomePageBoxWidget extends StatelessWidget {
  const HomePageBoxWidget({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
    required this.text, required this.boxWidth,
  });

  final double screenWidth;
  final double screenHeight;
  final String text;
  final double boxWidth;

  @override
  Widget build(BuildContext context) {
    return
      Container(
      width: screenWidth * 0.45,
      height: screenHeight * 0.2,
      decoration: BoxDecoration(
        color: AppColors.themeBlue,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5), // Shadow color with opacity
            spreadRadius: 4, // How much the shadow spreads
            blurRadius: 8,   // Softening the shadow (higher value means more blur)
            offset: const Offset(5, 5), // Offset in the x and y directions
          ),
        ],// Make it a circle
      ),
      margin: EdgeInsets.only(top: screenHeight * 0.05),
      child: Center(
        child: Text(text, style: const TextStyle(
          color: Colors.white,
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        ),
        ),
      ),
    );
  }
}