import 'package:flutter/material.dart';

import 'views/hr_select_screen.dart';

void main() {
  runApp(HrApp());
}

class HrApp extends StatelessWidget {
  const HrApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HrSelectScreen(),
    );
  }
}
