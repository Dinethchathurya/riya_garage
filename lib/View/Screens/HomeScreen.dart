import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../Model/DetailsProvider.dart';
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
        title: Center(
          child: const Text("Home",
            style: TextStyle(
              color: Colors.white,
            ),
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
              GestureDetector(
                onTap: (){
                  Provider.of<DetailsProvider>(context, listen: false).setCompany('Bajaj');
                  Navigator.pushNamed(context, '/second');
                },
                child: HomePageBoxWidget(screenWidth: screenWidth, screenHeight: screenHeight, text: 'BAJAJ', boxWidth: 0.40,),
              ),
              SizedBox(
                width: screenWidth * 0.05,
              ),
              GestureDetector(
                onTap: (){
                  Provider.of<DetailsProvider>(context, listen: false).setCompany('Suzuki');
                  Navigator.pushNamed(context, '/second');
                },
                  child: HomePageBoxWidget(screenWidth: screenWidth, screenHeight: screenHeight, text: 'SUZUKI', boxWidth: 0.40,),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                  onTap: (){
                    Provider.of<DetailsProvider>(context, listen: false).setCompany('Toyota');
                    Navigator.pushNamed(context, '/second');
                  },
                  child: HomePageBoxWidget(screenWidth: screenWidth, screenHeight: screenHeight, text: 'TOYOTA', boxWidth: 0.40,),
              ),
              SizedBox(
                width: screenWidth * 0.05,
              ),
              GestureDetector(
                  onTap: (){
                    Provider.of<DetailsProvider>(context, listen: false).setCompany('Honda');
                    Navigator.pushNamed(context, '/second');
                  },
                  child: HomePageBoxWidget(screenWidth: screenWidth, screenHeight: screenHeight, text: 'HONDA', boxWidth: 0.40,),
              ),
            ],
          ),
        ],
      ),
      ),
    );
  }
}