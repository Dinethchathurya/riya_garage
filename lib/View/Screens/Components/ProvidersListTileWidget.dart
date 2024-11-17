import 'dart:core';
import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Icons/IconCallWidget.dart';
import 'Icons/IconPersonWidget.dart';

class ProvidersListTileWidget extends StatelessWidget {
  const ProvidersListTileWidget({
    super.key,
    required this.screenWidth,
    required this.providerName,
    required this.providerAddress,
    required this.providerPhoneNumber,
  });

  final double screenWidth;
  final String providerName;
  final String providerAddress;
  final String providerPhoneNumber;


  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: IconPersonWidget(screenWidth: screenWidth),
      title: Text(providerName),
      titleTextStyle : const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(providerAddress),
          const SizedBox(height: 4), // Adds some spacing between the lines
          Text(providerPhoneNumber), // The additional detail you want to add
        ],
      ),
      trailing: GestureDetector(
        onTap: () async{
          // const String phoneNumber= '0717873060';
          //
          // await FlutterPhoneDirectCaller.callNumber(phoneNumber);

          // var phoneNumber = Uri.parse('tel:+1234567890');
          // // Replace with the actual number
          // try {
          //   if (await canLaunchUrl(phoneNumber)) {
          //     await launchUrl(phoneNumber);
          //   } else {
          //     throw 'Could not launch $phoneNumber';
          //   }
          // }catch(er){
          //   print(er);
          // }

        },
        child: IconCallWidget(screenWidth: screenWidth),
      ),
    );
  }
}
