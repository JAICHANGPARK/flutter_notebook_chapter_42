import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class FoodRecipesMainScreen extends StatefulWidget {
  const FoodRecipesMainScreen({super.key});

  @override
  State<FoodRecipesMainScreen> createState() => _FoodRecipesMainScreenState();
}

class _FoodRecipesMainScreenState extends State<FoodRecipesMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IndexedStack(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(HugeIcons.strokeRoundedHome01),
            label: "Home",
          ),
        ],
      ),
    );
  }
}
