import 'package:flutter/cupertino.dart';
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
              HomePageBoxWidget(screenWidth: screenWidth, screenHeight: screenHeight, text: 'BAJAJ',),
              SizedBox(
                width: screenWidth * 0.05,
              ),
              HomePageBoxWidget(screenWidth: screenWidth, screenHeight: screenHeight, text: 'SUZUKI',),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              HomePageBoxWidget(screenWidth: screenWidth, screenHeight: screenHeight, text: 'TOYOTA',),
              SizedBox(
                width: screenWidth * 0.05,
              ),
              HomePageBoxWidget(screenWidth: screenWidth, screenHeight: screenHeight, text: 'HONDA',),
            ],
          ),
        ],
      ),
      ),
    );
  }
}