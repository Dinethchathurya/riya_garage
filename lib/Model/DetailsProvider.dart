import 'package:flutter/cupertino.dart';

import '../Data/Bajaj/Maintenance/Ampara.dart';

class DetailsProvider with ChangeNotifier {

  late String company ;
  late String category;
  late String city;

  final List<Map<String, dynamic>> availableProviders = maintanceAmpara;

  setCompany (newCompanyName){
    company = newCompanyName;
    notifyListeners();
  }

  setCategory (newCategory){
    category = newCategory;
    notifyListeners();
  }
  setCity (newCity){
    city = newCity;
    notifyListeners();
  }

  setAvailableProviders(){

  }

}

