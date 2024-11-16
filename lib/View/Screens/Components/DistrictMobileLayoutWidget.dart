import 'package:flutter/cupertino.dart';

import 'DistrictPageRowComponentWidget.dart';
import 'HomePageBoxWidget.dart';

class DistrictMobileLayoutWidget extends StatelessWidget {
  const DistrictMobileLayoutWidget({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Column(
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
            SizedBox(
              width: screenWidth * 0.04,
            ),
          ],
        ),
      ],
    );
  }
}