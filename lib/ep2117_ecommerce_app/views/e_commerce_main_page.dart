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
                  CircleAvatar(),
                  Expanded(
                    child: Column(
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
                    )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
