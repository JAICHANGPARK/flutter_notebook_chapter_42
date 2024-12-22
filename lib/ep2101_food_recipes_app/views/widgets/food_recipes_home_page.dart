import 'package:flutter/material.dart';

class FoodRecipesHomePage extends StatelessWidget {
  FoodRecipesHomePage({super.key});

  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            spacing: 20,
            children: [
              Row(
                spacing: 8,
                children: [
                  Icon(Icons.location_on_outlined),
                  Text(
                    "Now Los Angeles",
                  ),
                  Icon(Icons.keyboard_arrow_down),
                  Spacer(),
                  Icon(Icons.notifications_none),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(24),
                ),
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: TextField(
                  controller: textEditingController,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    icon: Icon(Icons.search),
                    suffixIcon: Icon(Icons.mic_none),
                    hintText: "What do you want today?",
                    contentPadding: EdgeInsets.only(top: 12),
                  ),
                ),
              )
            ],
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 20,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    "Categories",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                Container(
                  height: 82,
                  padding: EdgeInsets.only(left: 16),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 24),
                        child: Column(
                          spacing: 6,
                          children: [
                            Expanded(
                              child: CircleAvatar(
                                radius: 29,
                              ),
                            ),
                            Text("Deals"),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  height: 160,
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.deepOrangeAccent,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: EdgeInsets.all(16),
                    child: Column(
                      spacing: 12,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Summer Savings",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Get a free item with your\norder, but only through Dec..",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(24),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                          child: Text(
                            "Order Now",
                            style: TextStyle(
                              color: Colors.deepOrangeAccent,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    "Popular near you",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                Container(
                  height: 240,
                  margin: EdgeInsets.only(left: 16),
                  child: Container(
                    // decoration: BoxDecoration(
                    //   color: Colors.blue,
                    // ),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 260,
                          margin: EdgeInsets.only(
                            right: 16,
                          ),
                          // decoration: BoxDecoration(
                          //   color: Colors.orangeAccent,
                          // ),
                          child: Column(
                            spacing: 8,
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.grey,
                                  ),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        right: 12,
                                        top: 12,
                                        child: CircleAvatar(
                                          backgroundColor: Colors.white,
                                          foregroundColor: Colors.deepOrangeAccent,
                                          child: Icon(Icons.favorite_outline),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Text("Classic Cheese burger"),
                                  Spacer(),
                                  Icon(
                                    Icons.star,
                                  ),
                                  Text("4.9"),
                                ],
                              ),
                              Row(
                                spacing: 6,
                                children: [
                                  Icon(
                                    Icons.directions_bike,
                                  ),
                                  Text("550 Delivery"),
                                  Text("40-50 min"),
                                ],
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
