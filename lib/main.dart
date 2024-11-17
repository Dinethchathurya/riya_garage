import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:riya_garage/Controller/loadProviderData.dart';
import 'package:riya_garage/View/AppColors.dart';
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
            title: 'Flutter Demo',
            theme: ThemeData(
              dialogBackgroundColor: AppColors.color2,
            ),
            home: const SearchTownScreen(),
          )
      );
  }
}






