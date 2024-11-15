import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:riya_garage/View/Screens/Components/HomePageBoxWidget.dart';

import '../../AppColors.dart';
import 'DistrictPageRowComponentWidget.dart';

class DistrictsScreen extends StatelessWidget {
  const DistrictsScreen({super.key});

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double boxwidth = screenWidth;


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
            child: Column(
              children: [
                DistrictPageRowComponentWidget(screenWidth: screenWidth, screenHeight: screenHeight, City1: 'Colombo', City2: 'Gampaha',),
                DistrictPageRowComponentWidget(screenWidth: screenWidth, screenHeight: screenHeight, City1: 'Kalutara', City2: 'Kandy',),
                DistrictPageRowComponentWidget(screenWidth: screenWidth, screenHeight: screenHeight, City1: 'Matale', City2: 'Nuwara Eliya',),
                DistrictPageRowComponentWidget(screenWidth: screenWidth, screenHeight: screenHeight, City1: 'Galle', City2: 'Matara',),
                DistrictPageRowComponentWidget(screenWidth: screenWidth, screenHeight: screenHeight, City1: 'Hambantota', City2: 'Trincomalee',),
                DistrictPageRowComponentWidget(screenWidth: screenWidth, screenHeight: screenHeight, City1: 'Batticaloa', City2: 'Ampara',),
                DistrictPageRowComponentWidget(screenWidth: screenWidth, screenHeight: screenHeight, City1: 'Jaffna', City2: 'Kilinochchi',),
                DistrictPageRowComponentWidget(screenWidth: screenWidth, screenHeight: screenHeight, City1: 'Mannar', City2: 'Vavuniya',),
                DistrictPageRowComponentWidget(screenWidth: screenWidth, screenHeight: screenHeight, City1: 'Mullaitivu', City2: 'Kurunegala',),
                DistrictPageRowComponentWidget(screenWidth: screenWidth, screenHeight: screenHeight, City1: 'Puttalam', City2: 'Anuradhapura',),
                DistrictPageRowComponentWidget(screenWidth: screenWidth, screenHeight: screenHeight, City1: 'Polonnaruwa', City2: 'Badulla',),
                DistrictPageRowComponentWidget(screenWidth: screenWidth, screenHeight: screenHeight, City1: 'Moneragala', City2: 'Ratnapura',),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      HomePageBoxWidget(
                        screenWidth: screenWidth, screenHeight: screenHeight, text: 'Kegalle', boxWidth: 0.45,),
                      SizedBox(width: screenWidth * 0.04,
                ),
              ],
            ),
              ],
            ),
          )

      ),
    ) ;
  }
}


