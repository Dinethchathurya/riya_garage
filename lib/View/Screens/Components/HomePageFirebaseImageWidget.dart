import 'package:flutter/cupertino.dart';
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
        color: Colors.grey,
        borderRadius: BorderRadius.circular(20),  // Make it a circle
      ),
      margin: EdgeInsets.only(top: screenHeight * 0.05),
    );
  }
}
