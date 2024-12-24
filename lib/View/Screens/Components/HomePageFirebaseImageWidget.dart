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
      width: screenWidth * 0.60,
      height: screenWidth <= 600 ? screenHeight * 0.2 :  screenHeight * 0.28,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      margin: EdgeInsets.only(top: screenHeight * 0.05),
      child: Image.asset(
        'assets/LOGO.png',
        width: screenWidth * 0.8,
        height: screenHeight * 0.3,
        fit: BoxFit.cover,
      ),
    );
  }
}
