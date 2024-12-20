import 'package:flutter/material.dart';

class FoodRecipesHomePage extends StatelessWidget {
  FoodRecipesHomePage({super.key});

  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16,
      crossAxisAlignment: CrossAxisAlignment.start,
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
            ),
          ),
        )
      ],
    );
  }
}
