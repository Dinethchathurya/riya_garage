import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../AppColors.dart';

class IconPersonWidget extends StatelessWidget {
  const IconPersonWidget({
    super.key,
    required this.screenWidth,
  });

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.person,
      size: screenWidth * 0.1,
      color: AppColors.themeBlue,
    );
  }
}