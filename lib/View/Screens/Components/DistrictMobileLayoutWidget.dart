import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import '../../../Model/DetailsProvider.dart';
import 'CityPageProvinceButtonWidget.dart';
import 'DistrictPageRowComponentWidget.dart';
import 'HomePageBoxWidget.dart';

class DistrictMobileLayoutWidget extends StatelessWidget {
  const DistrictMobileLayoutWidget({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Provider.of<DetailsProvider>(context, listen: false).setProvince('WesternProvince');
          },
          child: CityPageProvinceButtonWidget(
            screenWidth: screenWidth,
            screenHeight: screenHeight,
            text: 'Western Province',
            boxWidth: 0.95,
          ),
        ),
        Visibility(
          visible: Provider.of<DetailsProvider>(context).province == 'WesternProvince' ? true : false,
          child: DistrictPageRowComponentWidget(
            screenWidth: screenWidth,
            screenHeight: screenHeight,
            City1: 'Colombo',
            City2: 'Gampaha',
          ),
        ),
        Visibility(
          visible: Provider.of<DetailsProvider>(context).province == 'WesternProvince' ? true : false,
          child: DistrictPageRowComponentWidget(
            screenWidth: screenWidth,
            screenHeight: screenHeight,
            City1: 'Kalutara',
            City2: '',
          ),
        ),
        GestureDetector(
          onTap: () {
            Provider.of<DetailsProvider>(context, listen: false).setProvince('CentralProvince');
          },
          child: CityPageProvinceButtonWidget(
            screenWidth: screenWidth,
            screenHeight: screenHeight,
            text: 'Central Province',
            boxWidth: 0.95,
          ),
        ),
        Visibility(
          visible: Provider.of<DetailsProvider>(context).province == 'CentralProvince' ? true : false,
          child: DistrictPageRowComponentWidget(
            screenWidth: screenWidth,
            screenHeight: screenHeight,
            City1: 'Matale',
            City2: 'Nuwara Eliya',
          ),
        ),
        Visibility(
          visible: Provider.of<DetailsProvider>(context).province == 'CentralProvince' ? true : false,
          child: DistrictPageRowComponentWidget(
            screenWidth: screenWidth,
            screenHeight: screenHeight,
            City1: 'Kandy',
            City2: '',
          ),
        ),
        GestureDetector(
          onTap: () {
            Provider.of<DetailsProvider>(context, listen: false).setProvince('SouthernProvince');
          },
          child: CityPageProvinceButtonWidget(
            screenWidth: screenWidth,
            screenHeight: screenHeight,
            text: 'Southern Province',
            boxWidth: 0.95,
          ),
        ),
        Visibility(
          visible: Provider.of<DetailsProvider>(context).province == 'SouthernProvince' ? true : false,
          child: DistrictPageRowComponentWidget(
            screenWidth: screenWidth,
            screenHeight: screenHeight,
            City1: 'Galle',
            City2: 'Matara',
          ),
        ),
        Visibility(
          visible: Provider.of<DetailsProvider>(context).province == 'SouthernProvince' ? true : false,
          child: DistrictPageRowComponentWidget(
            screenWidth: screenWidth,
            screenHeight: screenHeight,
            City1: 'Hambantota',
            City2: '',
          ),
        ),
        GestureDetector(
          onTap: () {
            Provider.of<DetailsProvider>(context, listen: false).setProvince('NorthernProvince');
          },
          child: CityPageProvinceButtonWidget(
            screenWidth: screenWidth,
            screenHeight: screenHeight,
            text: 'Northern Province',
            boxWidth: 0.95,
          ),
        ),
        Visibility(
          visible: Provider.of<DetailsProvider>(context).province == 'NorthernProvince' ? true : false,
          child: DistrictPageRowComponentWidget(
            screenWidth: screenWidth,
            screenHeight: screenHeight,
            City1: 'Jaffna',
            City2: 'Kilinochchi',
          ),
        ),
        Visibility(
          visible: Provider.of<DetailsProvider>(context).province == 'NorthernProvince' ? true : false,
          child: DistrictPageRowComponentWidget(
            screenWidth: screenWidth,
            screenHeight: screenHeight,
            City1: 'Mannar',
            City2: 'Vavuniya',
          ),
        ),
        Visibility(
          visible: Provider.of<DetailsProvider>(context).province == 'NorthernProvince' ? true : false,
          child: DistrictPageRowComponentWidget(
            screenWidth: screenWidth,
            screenHeight: screenHeight,
            City1: 'Mullaitivu',
            City2: '',
          ),
        ),
        GestureDetector(
          onTap: () {
            Provider.of<DetailsProvider>(context, listen: false).setProvince('EasternProvince');
          },
          child: CityPageProvinceButtonWidget(
            screenWidth: screenWidth,
            screenHeight: screenHeight,
            text: 'Eastern Province',
            boxWidth: 0.95,
          ),
        ),
        Visibility(
          visible: Provider.of<DetailsProvider>(context).province == 'EasternProvince' ? true : false,
          child: DistrictPageRowComponentWidget(
            screenWidth: screenWidth,
            screenHeight: screenHeight,
            City1: 'Ampara',
            City2: 'Trincomalee',
          ),
        ),
        Visibility(
          visible: Provider.of<DetailsProvider>(context).province == 'EasternProvince' ? true : false,
          child: DistrictPageRowComponentWidget(
            screenWidth: screenWidth,
            screenHeight: screenHeight,
            City1: 'Batticaloa',
            City2: '',
          ),
        ),
        GestureDetector(
          onTap: () {
            Provider.of<DetailsProvider>(context, listen: false).setProvince('NorthWesternProvince');
          },
          child: CityPageProvinceButtonWidget(
            screenWidth: screenWidth,
            screenHeight: screenHeight,
            text: 'North Western Province ',
            boxWidth: 0.95,
          ),
        ),
        Visibility(
          visible: Provider.of<DetailsProvider>(context).province == 'NorthWesternProvince' ? true : false,
          child: DistrictPageRowComponentWidget(
            screenWidth: screenWidth,
            screenHeight: screenHeight,
            City1: 'Puttalam',
            City2: 'Kurunegala',
          ),
        ),
        GestureDetector(
          onTap: () {
            Provider.of<DetailsProvider>(context, listen: false).setProvince('NorthCentralProvince');
          },
          child: CityPageProvinceButtonWidget(
            screenWidth: screenWidth,
            screenHeight: screenHeight,
            text: 'North Central Province ',
            boxWidth: 0.95,
          ),
        ),
        Visibility(
          visible: Provider.of<DetailsProvider>(context).province == 'NorthCentralProvince' ? true : false,
          child: DistrictPageRowComponentWidget(
            screenWidth: screenWidth,
            screenHeight: screenHeight,
            City1: 'Polonnaruwa',
            City2: 'Anuradhapura',
          ),
        ),
        GestureDetector(
          onTap: () {
            Provider.of<DetailsProvider>(context, listen: false).setProvince('UvaProvince');
          },
          child: CityPageProvinceButtonWidget(
            screenWidth: screenWidth,
            screenHeight: screenHeight,
            text: 'Uva Province ',
            boxWidth: 0.95,
          ),
        ),
        Visibility(
          visible: Provider.of<DetailsProvider>(context).province == 'UvaProvince' ? true : false,
          child: DistrictPageRowComponentWidget(
            screenWidth: screenWidth,
            screenHeight: screenHeight,
            City1: 'Moneragala',
            City2: 'Badulla',
          ),
        ),
        GestureDetector(
          onTap: () {
            Provider.of<DetailsProvider>(context, listen: false).setProvince('SabaragamuwaProvince');
          },
          child: CityPageProvinceButtonWidget(
            screenWidth: screenWidth,
            screenHeight: screenHeight,
            text: 'Sabaragamuwa Province ',
            boxWidth: 0.95,
          ),
        ),
        Visibility(
          visible: Provider.of<DetailsProvider>(context).province == 'SabaragamuwaProvince' ? true : false,
          child: DistrictPageRowComponentWidget(
            screenWidth: screenWidth,
            screenHeight: screenHeight,
            City1: 'Kegalle',
            City2: 'Ratnapura',
          ),
        ),
      ],
    );
  }
}
