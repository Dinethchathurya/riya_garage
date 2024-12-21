import 'package:flutter/cupertino.dart';
import 'package:riya_garage/Model/dataClass.dart';

import '../Data/Bajaj/Maintenance/Ampara.dart';
import '../Data/Bajaj/Maintenance/Anuradapura.dart';

class DetailsProvider with ChangeNotifier {

  late String company ;
  late String category;
  late String province ='' ;
  late String city;

  late List<Map<String, dynamic>> availableProviders = maintanceAnuradapura;

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
    print(company+category+city);
    setAvailableProviders();
    notifyListeners();
  }

  setProvince(newProvince){

    if(province == ''){
      province = newProvince;
    }else if(province == newProvince) {
      province = '';
    }else if (province != newProvince){
      province = newProvince;
    }

    notifyListeners();
  }

  setAvailableProviders(){
    DataClass ss = new DataClass();
    availableProviders = ss.getListOfProviders(company+category+city);
  }

}

