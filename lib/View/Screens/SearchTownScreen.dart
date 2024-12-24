import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../Model/DetailsProvider.dart';
import '../AppColors.dart';
import 'Components/ProvidersListTileWidget.dart';

class SearchTownScreen extends StatefulWidget {
  const SearchTownScreen({super.key});

  @override
  _SearchTownScreenState createState() => _SearchTownScreenState();
}

class _SearchTownScreenState extends State<SearchTownScreen> {

  TextEditingController _searchController = TextEditingController();
  List<Map<String, dynamic>> _filteredProviders = [];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Providers",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle :true,
        backgroundColor: AppColors.color7,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SearchBar(
                controller: _searchController,
                onChanged: (query) {
                  _filterProviders(query);
                },
                leading: const Icon(Icons.search),
                hintText: 'Search Town',
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0), // Set your desired radius
                  ),
                ),
                shadowColor:WidgetStateProperty.all(
                    Colors.white,
                ),
                backgroundColor: WidgetStateProperty.all(
                  Colors.white,
                ),
              ),
            ),
            Expanded(
              child: Consumer<DetailsProvider>(
                builder: (context, providers, child) {
                  // If search query is empty, show all providers
                  var displayProviders = _filteredProviders.isEmpty
                      ? providers.availableProviders
                      : _filteredProviders;

                  return ListView.builder(
                    itemCount: displayProviders.length,
                    itemBuilder: (context, index) {
                      var provider = displayProviders[index];

                      return ProvidersListTileWidget(
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
          ],
        ),
      ),
    );
  }

  // Function to filter providers based on search query
  void _filterProviders(String query) {
    // If query is empty, show all providers
    if (query.isEmpty) {
      setState(() {
        _filteredProviders = [];
      });
    } else {
      setState(() {
        _filteredProviders = Provider.of<DetailsProvider>(context, listen: true)
            .availableProviders
            .where((provider) {
          // You can adjust the filter logic here as needed
          return provider['name']
              .toLowerCase()
              .contains(query.toLowerCase()) ||
              provider['des']
                  .toLowerCase()
                  .contains(query.toLowerCase());
        }).toList();
      });
    }
  }
}
