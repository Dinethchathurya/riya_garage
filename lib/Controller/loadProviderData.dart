import 'package:flutter/cupertino.dart';

import '../Data/Bajaj/Maintenance/Ampara.dart';

class Providers with ChangeNotifier {
  final List<Map<String, dynamic>> availableProviders = maintanceAmpara;
}