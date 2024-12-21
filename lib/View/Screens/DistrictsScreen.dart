import 'package:flutter/material.dart';
import '../AppColors.dart';
import 'Components/DistrictMobileLayoutWidget.dart';
import 'Components/DistrictTabletLayoutWidget.dart';

class DistrictsScreen extends StatelessWidget {
  const DistrictsScreen({super.key});

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text("City",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: AppColors.color7,
      ),
      body: SafeArea(
          child:  SingleChildScrollView(
            child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                if (constraints.maxWidth <= 600) {
                  return DistrictMobileLayoutWidget(screenWidth: screenWidth, screenHeight: screenHeight * 0.5);
                } else {
                  // Tablet Layout (medium screens)
                  return DistrictTabletLayoutWidget(screenWidth: screenWidth, screenHeight: screenHeight);
                }
              },
            ),
          ),
      ),
    ) ;
  }
}








