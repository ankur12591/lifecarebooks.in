import 'package:flutter/material.dart';
import 'package:book_nest_life_care/config/app_strings.dart';

class OfflineDeviceScreen extends StatelessWidget {
  OfflineDeviceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildOfflineBodyWidget(),
    );
  }

  /// Build offline widget body
  Widget _buildOfflineBodyWidget() {
    return Text(AppStrings.noInternetFoundTitle);
  }
}
