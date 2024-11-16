import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../AppColors.dart';

class SearchTownScreen extends StatelessWidget {
  SearchTownScreen({super.key});

  List<String> items = [
    'hello',
    'galle',
    'matara'
  ];

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        leading: Image.asset(
          'assets/Riya-icon.png',
          width: screenWidth * 0.8, // Increase the image size (adjust as needed)
          height: screenHeight * 0.3, // Adjust height as needed
          fit: BoxFit.cover, // Maintain the aspect ratio of the image
        ),
        title: const Text("Home",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: AppColors.color7,
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, idx) {
          var item = items[idx];
          return ListTile(
            leading: Icon(
              Icons.person,
              size: screenWidth * 0.1,
              color: AppColors.themeBlue,
            ),
            title: Text('Anura Motor Cycle Works (Motorcycles)'),
            titleTextStyle : TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Address: No.B/482/5, Thissapura, Ampara'),
                SizedBox(height: 4), // Adds some spacing between the lines
                Text('0717873060'), // The additional detail you want to add
              ],
            ),
            trailing: GestureDetector(
              child: Icon(
                Icons.add_ic_call,
                size: screenWidth * 0.1,
                color: Colors.green,
              ),
            ),
          );
        },
      ),
    );
  }
}
