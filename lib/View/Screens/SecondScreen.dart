import 'package:flutter/material.dart';

import '../AppColors.dart';
import 'Components/SecondPageBoxWidget.dart';

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
            child: SecondPageBoxWidget(screenWidth: screenWidth, screenHeight: screenHeight, margin: 0.08, image: 'assets/Maintenance-Repairs-icon.png',),
          ),
          Center(
            child: SecondPageBoxWidget(screenWidth: screenWidth, screenHeight: screenHeight, margin: 0.1, image: 'assets/SpareParts-BodyParts-icon.png')
          )
        ],
      ),
      ),
    );
  }
}
