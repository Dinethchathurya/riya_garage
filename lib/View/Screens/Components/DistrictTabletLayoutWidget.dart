import 'package:flutter/cupertino.dart';

import 'DistrictScreenRowComponentForTabletWidget.dart';
import 'HomePageBoxWidget.dart';

class DistrictTabletLayoutWidget extends StatelessWidget {
  const DistrictTabletLayoutWidget({
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
}