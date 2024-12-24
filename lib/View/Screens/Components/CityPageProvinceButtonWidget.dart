import 'package:flutter/material.dart';

import '../../AppColors.dart';

class CityPageProvinceButtonWidget extends StatelessWidget {
  const CityPageProvinceButtonWidget({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
    required this.text,
    required this.boxWidth,
  });

  final double screenWidth;
  final double screenHeight;
  final String text;
  final double boxWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth * boxWidth,
      height: screenHeight * 0.2,
      decoration: BoxDecoration(
        color: AppColors.darkBlue,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5), // Shadow color with opacity
            spreadRadius: 6, // How much the shadow spreads
            blurRadius: 8, // Softening the shadow (higher value means more blur)
            offset: const Offset(0, 0), // Offset in the x and y directions
          ),
        ], // Make it a circle
      ),
      margin: EdgeInsets.only(top: screenHeight * 0.05),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Icon(
              Icons.arrow_drop_down,
              color: Colors.white,
              size: 45.0,
            ),
          ],
        ),
      ),
    );
  }
}
