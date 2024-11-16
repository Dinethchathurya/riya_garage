import 'package:flutter/material.dart';
import 'package:riya_garage/View/Screens/Components/HomePageBoxWidget.dart';

import '../../AppColors.dart';
import 'DistrictMobileLayoutWidget.dart';
import 'DistrictPageRowComponentWidget.dart';
import 'DistrictScreenRowComponentForTabletWidget.dart';

class DistrictsScreen extends StatelessWidget {
  const DistrictsScreen({super.key});

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
          child:  SingleChildScrollView(
            child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                if (constraints.maxWidth <= 600) {
                  return DistrictMobileLayoutWidget(screenWidth: screenWidth, screenHeight: screenHeight);
                } else {
                  // Tablet Layout (medium screens)
                  return Column(
                    children: [
                      DistrictScreenRowComponentForTabletWidget(screenWidth: screenWidth, screenHeight: screenHeight, citys: ['Colombo', 'Gampaha', 'Kalutara'],),
                      DistrictScreenRowComponentForTabletWidget(screenWidth: screenWidth, screenHeight: screenHeight, citys: ['Kandy', 'Matale', 'Nuwara Eliya'],),
                      DistrictScreenRowComponentForTabletWidget(screenWidth: screenWidth, screenHeight: screenHeight, citys: ['Galle', 'Matara', 'Hambantota'],),
                      DistrictScreenRowComponentForTabletWidget(screenWidth: screenWidth, screenHeight: screenHeight, citys: ['Trincomalee', 'Kilinochchi', 'Mannar'],),
                      DistrictScreenRowComponentForTabletWidget(screenWidth: screenWidth, screenHeight: screenHeight, citys: ['Vavuniya', 'Mullaitivu', 'Kurunegala'],),
                      DistrictScreenRowComponentForTabletWidget(screenWidth: screenWidth, screenHeight: screenHeight, citys: ['Puttalam', 'Anuradhapura', 'Polonnaruwa'],),
                      DistrictScreenRowComponentForTabletWidget(screenWidth: screenWidth, screenHeight: screenHeight, citys: ['Badulla', 'Moneragala', 'Ratnapura'],),                      DistrictScreenRowComponentForTabletWidget(screenWidth: screenWidth, screenHeight: screenHeight, citys: ['Galle', 'Matara', 'Colombo'],),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          HomePageBoxWidget(screenWidth: screenWidth, screenHeight: screenHeight, text: 'Kegalle', boxWidth: 0.3,),
                          SizedBox(
                            width: screenWidth * 0.025,
                          ),
                          ]
                      ),
                    ],
                  );
                }
              },
            ),
          ),
      ),
    ) ;
  }
}






