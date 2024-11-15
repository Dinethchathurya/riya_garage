import 'package:flutter/material.dart';

import '../AppColors.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text("bajaj",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: AppColors.color7,
      ),
      body: SafeArea(
        child: Column(
        children: [
          Center(
            child: Container(
              width: screenWidth * 0.8,
              height: screenHeight * 0.3, // Keep container height the same
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
                ],
              ),
              margin: EdgeInsets.only(top: screenHeight * 0.08),
              child: Center(
                child: Image.asset(
                  'assets/Maintenance-Repairs-icon.png',
                  width: screenWidth * 0.8, // Increase the image size (adjust as needed)
                  height: screenHeight * 0.3, // Adjust height as needed
                  fit: BoxFit.cover, // Maintain the aspect ratio of the image
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              width: screenWidth * 0.8,
              height: screenHeight * 0.3,
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
              margin: EdgeInsets.only(top: screenHeight * 0.1),
              child: Center(
                child: Image.asset('assets/SpareParts-BodyParts-icon.png',
                  width: screenWidth * 0.8,
                  height: screenHeight * 0.6,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )
        ],
      ),
      ),
    );
  }
}
