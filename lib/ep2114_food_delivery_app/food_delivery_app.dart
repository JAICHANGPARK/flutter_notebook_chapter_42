import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_42/ep2114_food_delivery_app/views/food_delivery_main_page.dart';

class FoodDeliveryApp extends StatelessWidget {
  const FoodDeliveryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FoodDeliveryMainPage(),
    );
  }
}
