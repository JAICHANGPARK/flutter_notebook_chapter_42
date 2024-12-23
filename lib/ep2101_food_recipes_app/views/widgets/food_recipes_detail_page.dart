import 'package:flutter/material.dart';

class FoodRecipesDetailPage extends StatefulWidget {
  const FoodRecipesDetailPage({super.key});

  @override
  State<FoodRecipesDetailPage> createState() => _FoodRecipesDetailPageState();
}

class _FoodRecipesDetailPageState extends State<FoodRecipesDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          spacing: 12,
          children: [
            Container(
              height: 280,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(12)
              ),

            )
          ],
        ),
      ),
    );
  }
}
