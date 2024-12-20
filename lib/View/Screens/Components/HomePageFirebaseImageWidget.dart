import 'package:flutter/material.dart';

class HomePageFirebaseImageWidget extends StatelessWidget {
  const HomePageFirebaseImageWidget({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth * 0.85,
      height: screenHeight * 0.2,
      decoration: BoxDecoration(
        //color: Colors.grey,
        borderRadius: BorderRadius.circular(20),  // Make it a circle
      ),
      margin: EdgeInsets.only(top: screenHeight * 0.05),
      child: Image.asset(
        'assets/LOGO.png',
        width: screenWidth * 0.8, // Increase the image size (adjust as needed)
        height: screenHeight * 0.3, // Adjust height as needed
        fit: BoxFit.cover, // Maintain the aspect ratio of the image
      ),
    );
  }
}
