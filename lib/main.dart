import 'package:flutter/material.dart';
import 'package:riya_garage/constents.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        dialogBackgroundColor: AppColors.color2,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home",
        style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: AppColors.color7,
      ),
      body: SafeArea(child:
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: screenWidth * 0.85,
                  height: screenHeight * 0.2,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20),  // Make it a circle
                  ),
                  margin: EdgeInsets.only(top: screenHeight * 0.05),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Center(
                    child: Text("BAJAJ", style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                  ),
                  width: screenWidth * 0.4,
                  height: screenHeight * 0.2,
                  decoration: BoxDecoration(
                    color: AppColors.themeBlue,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5), // Shadow color with opacity
                        spreadRadius: 4, // How much the shadow spreads
                        blurRadius: 8,   // Softening the shadow (higher value means more blur)
                        offset: Offset(5, 5), // Offset in the x and y directions
                      ),
                    ],// Make it a circle
                  ),
                  margin: EdgeInsets.only(top: screenHeight * 0.05),
                ),
                SizedBox(
                  width: screenWidth * 0.05,
                ),
                Container(
                  child: Center(
                    child: Text("SUZUKI", style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                  ),
                  width: screenWidth * 0.4,
                  height: screenHeight * 0.2,
                  decoration: BoxDecoration(
                    color: AppColors.themeBlue,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5), // Shadow color with opacity
                        spreadRadius: 4, // How much the shadow spreads
                        blurRadius: 8,   // Softening the shadow (higher value means more blur)
                        offset: Offset(5, 5), // Offset in the x and y directions
                      ),
                    ],// Make it a circle
                  ),
                  margin: EdgeInsets.only(top: screenHeight * 0.05),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Center(
                    child: Text("TOYOTA", style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                  ),
                  width: screenWidth * 0.4,
                  height: screenHeight * 0.2,
                  decoration: BoxDecoration(
                    color: AppColors.themeBlue,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5), // Shadow color with opacity
                        spreadRadius: 4, // How much the shadow spreads
                        blurRadius: 8,   // Softening the shadow (higher value means more blur)
                        offset: Offset(5, 5), // Offset in the x and y directions
                      ),
                    ],// Make it a circle
                  ),
                  margin: EdgeInsets.only(top: screenHeight * 0.05),
                ),
                SizedBox(
                  width: screenWidth * 0.05,
                ),
                Container(
                  child: Center(
                    child: Text("HONDA", style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                  ),
                  width: screenWidth * 0.4,
                  height: screenHeight * 0.2,
                  decoration: BoxDecoration(
                    color: AppColors.themeBlue,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5), // Shadow color with opacity
                        spreadRadius: 4, // How much the shadow spreads
                        blurRadius: 8,   // Softening the shadow (higher value means more blur)
                        offset: Offset(5, 5), // Offset in the x and y directions
                      ),
                    ],// Make it a circle
                  ),
                  margin: EdgeInsets.only(top: screenHeight * 0.05),

                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

