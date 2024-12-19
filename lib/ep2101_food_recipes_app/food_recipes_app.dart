import 'package:flutter/material.dart';

import 'views/food_recipes_main_screen.dart';


class FoodRecipesApp extends StatelessWidget {
  const FoodRecipesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FoodRecipesMainScreen(),
    );
  }
}
