import 'package:flutter/material.dart';
import 'package:riya_garage/View/AppColors.dart';
import 'package:riya_garage/View/Screens/SecondScreen.dart';

import 'View/Screens/Components/DistrictsScreen.dart';
import 'View/Screens/HomeScreen.dart';

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
      home: const DistrictsScreen(),
    );
  }
}






