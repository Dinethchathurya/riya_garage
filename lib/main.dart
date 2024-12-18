import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:riya_garage/Controller/loadProviderData.dart';
import 'package:riya_garage/View/AppColors.dart';
import 'package:riya_garage/View/Screens/DistrictsScreen.dart';
import 'package:riya_garage/View/Screens/HomeScreen.dart';
import 'package:riya_garage/View/Screens/SecondScreen.dart';

import 'View/Screens/SearchTownScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return
      ChangeNotifierProvider(
          create: (_) => new Providers(),
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






