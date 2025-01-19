import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_42/ep2130_delivery_app/model/delivery_menu.dart';
import 'package:gap/gap.dart';

class DeliveryMainPage extends StatefulWidget {
  const DeliveryMainPage({super.key});

  @override
  State<DeliveryMainPage> createState() => _DeliveryMainPageState();
}

class _DeliveryMainPageState extends State<DeliveryMainPage> {
  List<String> tabs = [
    "Best Match",
    "Fastest Delivery",
    "Free Delivery",
  ];

  List<DeliveryMenu> menus = [
    DeliveryMenu(
      emoji: "🍕",
      title: "Pizza",
    ),
    DeliveryMenu(
      emoji: "",
      title: "Pizza",
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          spacing: 12,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 24),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Address"),
                        Row(
                          spacing: 4,
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              size: 18,
                            ),
                            Text(
                              "Seoul, Republic of Korea",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            Icon(
                              Icons.keyboard_arrow_down,
                              size: 18,
                            )
                          ],
                        )
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
                      icon: Icon(Icons.notifications_active_outlined),
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: ShapeDecoration(
                shape: StadiumBorder(),
                color: Colors.grey[100],
              ),
              margin: EdgeInsets.symmetric(horizontal: 16),
              padding: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
              child: Row(
                children: [
                  Gap(12),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        icon: Icon(Icons.search),
                        hintText: "Search restaurants",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    child: Icon(Icons.tune),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 42,
              child: Placeholder(),
            ),
            Expanded(
              child: Placeholder(),
            ),
          ],
        ),
      ),
    );
  }
}
