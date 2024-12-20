import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:riya_garage/Model/DetailsProvider.dart';
import '../AppColors.dart';
import 'Components/ProvidersListTileWidget.dart';

class SearchTownScreen extends StatelessWidget {
  const SearchTownScreen({super.key});

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
          child: Consumer<DetailsProvider>(
              builder: (context, providers, child) {
                return ListView.builder(
                  itemCount: providers.availableProviders.length,
                  itemBuilder: (context, index) {
                    var provider = providers.availableProviders[index];
                    return
                      ProvidersListTileWidget(
                        screenWidth: screenWidth,
                        providerName: provider['name'],
                        providerAddress: provider['des'],
                        providerPhoneNumber: provider['call'],
                      );
                  },
                );
              },
          ),
      ),
    );
  }
}





