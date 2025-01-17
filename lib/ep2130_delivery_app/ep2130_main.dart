import 'package:flutter/material.dart';

import 'view/delivery_main_page.dart';

void main() {
  runApp(DeliveryApp());
}

class DeliveryApp extends StatelessWidget {
  const DeliveryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DeliveryMainPage(),
    );
  }
}
