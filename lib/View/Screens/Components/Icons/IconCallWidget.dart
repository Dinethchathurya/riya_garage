
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconCallWidget extends StatelessWidget {
  const IconCallWidget({
    super.key,
    required this.screenWidth,
  });

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.call,
      size: screenWidth <= 600 ? screenWidth * 0.1 : screenWidth * 0.06,
      color: Colors.green,
    );
  }
}