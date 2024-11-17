import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../Data/Bajaj/Maintenance/Ampara.dart';
import '../../Model/ListofProviders.dart';
import '../../Model/Providers.dart';
import '../AppColors.dart';
import 'Components/Icons/IconCallWidget.dart';
import 'Components/Icons/IconPersonWidget.dart';
import 'Components/ProvidersListTileWidget.dart';
//import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
//import 'package:url_launcher/url_launcher.dart';
import 'package:riya_garage/Model/Providers.dart';

class SearchTownScreen extends StatelessWidget {

  SearchTownScreen({super.key});

  List<Map<String, dynamic>> items = maintanceAmpara ;

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
        title: const Text("Providers",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: AppColors.color7,
      ),
      body: SafeArea(
          child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, idx) {
              var item = items[idx];
              return ProvidersListTileWidget(
                screenWidth: screenWidth,
                providerName: item['name'],
                providerAddress: item['des'],
                providerPhoneNumber: item['call'],
              );
            },
          )
        ,
      ),
    );
  }
}





