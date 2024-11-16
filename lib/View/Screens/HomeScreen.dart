import 'package:flutter/material.dart';

import '../AppColors.dart';
import 'Components/HomePageBoxWidget.dart';
import 'Components/HomePageFirebaseImageWidget.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        leading: Image.asset(
          'assets/Riya-icon.png',
          width: screenWidth * 0.8, // Increase the image size (adjust as needed)
          height: screenHeight * 0.3, // Adjust height as needed
          fit: BoxFit.cover, // Maintain the aspect ratio of the image
        ),
        title: const Text("Home",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: AppColors.color7,
      ),
      body: SafeArea(
        child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              HomePageFirebaseImageWidget(screenWidth: screenWidth, screenHeight: screenHeight),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              HomePageBoxWidget(screenWidth: screenWidth, screenHeight: screenHeight, text: 'BAJAJ', boxWidth: 0.40,),
              SizedBox(
                width: screenWidth * 0.05,
              ),
              HomePageBoxWidget(screenWidth: screenWidth, screenHeight: screenHeight, text: 'SUZUKI', boxWidth: 0.40,),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              HomePageBoxWidget(screenWidth: screenWidth, screenHeight: screenHeight, text: 'TOYOTA', boxWidth: 0.40,),
              SizedBox(
                width: screenWidth * 0.05,
              ),
              HomePageBoxWidget(screenWidth: screenWidth, screenHeight: screenHeight, text: 'HONDA', boxWidth: 0.40,),
            ],
          ),
        ],
      ),
      ),
    );
  }
}