import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Model/DetailsProvider.dart';
import 'View/AppColors.dart';
import 'View/Screens/DistrictsScreen.dart';
import 'View/Screens/HomeScreen.dart';
import 'View/Screens/SearchTownScreen.dart';
import 'View/Screens/SecondScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return
      ChangeNotifierProvider(
          create: (context) => DetailsProvider(),
          child: MaterialApp(
            title: 'Riya',
            theme: ThemeData(
              dialogBackgroundColor: AppColors.color2,
            ),
            routes:{
              '/': (context) => MyHomePage(),          // Home route
              '/second': (context) => SecondScreen(),
              '/districts' : (context) => DistrictsScreen(),
              '/searchTown' : (context) => SearchTownScreen()// Named route for SecondScreen
            },
              initialRoute: '/',
          )
      );
  }
}






