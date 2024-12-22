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
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("Get a free item with your\norder, but only through Dec.."),
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
                  child: Placeholder(),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
