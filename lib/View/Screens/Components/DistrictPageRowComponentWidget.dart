import 'package:flutter/cupertino.dart';

import 'HomePageBoxWidget.dart';

class DistrictPageRowComponentWidget extends StatelessWidget {
  const DistrictPageRowComponentWidget({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
    required this.City1,
    required this.City2,
  });

  final double screenWidth;
  final double screenHeight;
  final String City1;
  final String City2;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        HomePageBoxWidget(screenWidth: screenWidth, screenHeight: screenHeight, text: City1, boxWidth: 0.45,),
        SizedBox(
          width: screenWidth * 0.04,
        ),
        HomePageBoxWidget(screenWidth: screenWidth, screenHeight: screenHeight, text: City2, boxWidth: 0.45,),
      ],
    );
  }
}