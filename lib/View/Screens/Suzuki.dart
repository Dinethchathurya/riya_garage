import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../Model/DetailsProvider.dart';
import '../AppColors.dart';
import 'Components/SecondPageBoxWidget.dart';

class Suzuki extends StatelessWidget {
  const Suzuki({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        title: const Text(
          'Suzuki',
          style : TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle : true,
        backgroundColor: AppColors.color7,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: GestureDetector(
                  onTap: () {
                    Provider.of<DetailsProvider>(context, listen: false).setCategory('Maintenance');
                    Navigator.pushNamed(context, '/districts');
                  },
                  child: SecondPageBoxWidget(
                    screenWidth: screenWidth,
                    screenHeight: screenHeight,
                    margin: 0.08,
                    image: 'assets/Maintenance-Repairs-icon.png',
                  )),
            ),
            Center(
                child: GestureDetector(
                  onTap: () {
                    Provider.of<DetailsProvider>(context, listen: false).setCategory('SpareParts');
                    Navigator.pushNamed(context, '/districts');
                  },
                  child: SecondPageBoxWidget(
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                      margin: 0.1,
                      image: 'assets/SpareParts-BodyParts-icon.png'),
                ))
          ],
        ),
      ),
    );
  }
}
