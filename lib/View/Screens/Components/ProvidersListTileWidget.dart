import 'dart:core';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Icons/IconCallWidget.dart';
import 'Icons/IconPersonWidget.dart';
import 'package:url_launcher/url_launcher.dart';

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
        spacing: 0.0,
        children: [
          Text(providerAddress),
          //const SizedBox(height: 4), // Adds some spacing between the lines
          Text(providerPhoneNumber), // The additional detail you want to add
        ],
      ),
      trailing: GestureDetector(
        onTap: () async{
          final Uri launchUri = Uri(
            scheme: 'tel',
            path: providerPhoneNumber,
          );
          await launchUrl(launchUri);
        },
        child: IconCallWidget(screenWidth: screenWidth),
      ),
    );
  }
}
