import 'package:flutter/material.dart';

import 'views/food_order_home_page.dart';

void main() {
  runApp(FoodOrderApp());
}

class FoodOrderApp extends StatelessWidget {
  const FoodOrderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FoodOrderHomePage(),
    );
  }
}
