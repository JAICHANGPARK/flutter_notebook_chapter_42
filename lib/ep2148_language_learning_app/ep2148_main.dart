import 'package:flutter/material.dart';

import 'views/lla_home_page.dart';

void main() {
  runApp(LanguageLearningApp());

}

class LanguageLearningApp extends StatelessWidget {
  const LanguageLearningApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LanguageLearningHomePage(),
    );
  }
}
