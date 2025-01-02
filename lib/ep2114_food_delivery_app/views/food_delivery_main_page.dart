import 'package:flutter/material.dart';

class FoodDeliveryMainPage extends StatefulWidget {
  const FoodDeliveryMainPage({super.key});

  @override
  State<FoodDeliveryMainPage> createState() => _FoodDeliveryMainPageState();
}

class _FoodDeliveryMainPageState extends State<FoodDeliveryMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Hi Dream!",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Badge(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      border: Border.all(color: Colors.teal)
                    ),

                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
