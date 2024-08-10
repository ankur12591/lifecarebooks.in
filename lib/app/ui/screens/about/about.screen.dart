import 'package:book_nest_life_care/app/ui/custom_widget/app_bar_mixin.dart';
import 'package:book_nest_life_care/utils/ui_components.dart';
import 'package:flutter/material.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> with AppBarMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: UIComponent.customInkWellWidget(
            onTap: () {
              logout(context);
            },
            child: Text("Logout")),
      ),
    );
  }
}
