import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../../../Model/DetailsProvider.dart';
import 'HomePageBoxWidget.dart';

class DistrictScreenRowComponentForTabletWidget extends StatelessWidget {
  DistrictScreenRowComponentForTabletWidget({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
    required this.citys,
  });

  final double screenWidth;
  final double screenHeight;
  final List<String>citys;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
            onTap: (){
              Provider.of<DetailsProvider>(context, listen: false).setCity(citys[0]);
              Navigator.pushNamed(context, '/searchTown');
            },
            child: HomePageBoxWidget(screenWidth: screenWidth, screenHeight: screenHeight, text: citys[0], boxWidth: 0.3,)),
        SizedBox(
          width: screenWidth * 0.025,
        ),
        GestureDetector(
            onTap: (){
              Provider.of<DetailsProvider>(context, listen: false).setCity(citys[1]);
              Navigator.pushNamed(context, '/searchTown');
            },
            child: HomePageBoxWidget(screenWidth: screenWidth, screenHeight: screenHeight, text: citys[1], boxWidth: 0.3,)),
        SizedBox(
          width: screenWidth * 0.025,
        ),
        GestureDetector(
            onTap: (){
              Provider.of<DetailsProvider>(context, listen: false).setCity(citys[2]);
              Navigator.pushNamed(context, '/searchTown');
            },
            child: HomePageBoxWidget(screenWidth: screenWidth, screenHeight: screenHeight, text: citys[2], boxWidth: 0.3,)),
      ],
    );
  }
}