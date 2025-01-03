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
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Text(
                    "Hi Dream!",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    ),
                  ),
                  Spacer(),
                  Badge(
                    label: Text("\$20"),
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.greenAccent,
                        border: Border.all(color: Colors.teal),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.person),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: DefaultTabController(
                length: 5,
                child: Column(
                  children: [
                    TabBar(
                      indicatorColor: Colors.black,
                      indicatorSize: TabBarIndicatorSize.label,
                      tabs: [
                        Tab(
                          text: "Top Picks",
                        ),
                        Tab(
                          text: "Healthy",
                        ),
                        Tab(
                          text: "American",
                        ),
                        Tab(
                          text: "Fast Food",
                        ),
                        Tab(
                          text: "Fast Food",
                        ),
                      ],
                    )
                  ],
                ),
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 4,
                    children: [
                      Icon(Icons.home_outlined),
                      Text(
                        "Home",
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 4,
                    children: [
                      Icon(Icons.search),
                      Text(
                        "Search",
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 4,
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 4,
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
