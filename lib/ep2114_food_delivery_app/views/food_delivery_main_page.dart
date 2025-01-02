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
                  label: Text("\$20"),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      border: Border.all(color: Colors.teal),
                      shape: BoxShape.circle,
                    ),
                  ),
                )
              ],
            ),
            Expanded(
              child: Column(
                children: [],
              ),
            ),
            Container(
              height: 82,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(
                      alpha: .1,
                    ),
                  )
                ],
              ),
              child: Row(
                children: [
                  Column(
                    children: [
                      Icon(Icons.home_outlined),
                      Text(
                        "Home",
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.search),
                      Text(
                        "Search",
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Badge(
                        child: Icon(Icons.shopping_bag_outlined),
                      ),
                      Text(
                        "Favorite",
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Badge(
                        child: Icon(Icons.person_2_outlined),
                      ),
                      Text(
                        "Profile",
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
