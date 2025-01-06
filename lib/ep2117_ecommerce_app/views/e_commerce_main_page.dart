import 'package:flutter/material.dart';

class ECommerceMainPage extends StatefulWidget {
  const ECommerceMainPage({super.key});

  @override
  State<ECommerceMainPage> createState() => _ECommerceMainPageState();
}

class _ECommerceMainPageState extends State<ECommerceMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          spacing: 16,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                spacing: 16,
                children: [
                  CircleAvatar(
                    radius: 22,
                  ),
                  Expanded(
                    child: Column(
                      spacing: 4,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Hello Dream"),
                        Text("Welcome to Store"),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey[200]!,
                      ),
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.notifications_none),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey[200]!,
                      ),
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.shopping_bag_outlined),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 62,
              child: Placeholder(),
            ),
            Container(
              height: 200,
              child: Placeholder(),
            ),
            Container(
              height: 52,
              child: Placeholder(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Recent Viewed",
                ),
                TextButton(
                  onPressed: () {},
                  child: Text("See All"),
                )
              ],
            ),
            Expanded(child: Row(children: [
            Expanded(child: Container(child: Placeholder(),)),
              Expanded(child: Container(child: Placeholder(),))
            ],)),
            Container(
              height: 100,
              child: Placeholder(),
            )
          ],
        ),
      ),
    );
  }
}
