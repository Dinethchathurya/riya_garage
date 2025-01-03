import 'package:flutter/material.dart';

import '../../AppColors.dart';

class SecondPageBoxWidget extends StatelessWidget {
  const SecondPageBoxWidget({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
    required this.margin, required this.image,
  });

  final double screenWidth;
  final double screenHeight;
  final double margin;
  final String image;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth <=600 ? screenWidth * 0.8 : screenWidth * 0.4,
      height: screenHeight * 0.3, // Keep container height the same
      decoration: BoxDecoration(
        color: AppColors.themeBlue,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5), // Shadow color with opacity
            spreadRadius: 6, // How much the shadow spreads
            blurRadius: 8,   // Softening the shadow (higher value means more blur)
            offset: const Offset(0, 0), // Offset in the x and y directions
          ),
        ],
      ),
      margin: EdgeInsets.only(top: screenHeight * margin),
      child: Center(
        child: Image.asset(
          image,
          width: screenWidth * 0.8, // Increase the image size (adjust as needed)
          height: screenHeight * 0.3, // Adjust height as needed
          fit: BoxFit.cover, // Maintain the aspect ratio of the image
        ),
      ),
    );
  }
}
