import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class DeliveryDetailPage extends StatefulWidget {
  const DeliveryDetailPage({super.key});

  @override
  State<DeliveryDetailPage> createState() => _DeliveryDetailPageState();
}

class _DeliveryDetailPageState extends State<DeliveryDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned.fill(
            top: 32,
            child: SafeArea(
              child: Column(
                spacing: 16,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.keyboard_arrow_left,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Center(
                            child: Text(
                              "The Breakfast Loft",
                              style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.favorite_border),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 130,
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      color: Colors.grey[200]!,
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2017/03/31/10/56/waffles-2190961_1280.jpg",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          left: 12,
                          top: 12,
                          child: Row(
                            spacing: 6,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(3),
                                ),
                                padding: EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                                child: Row(
                                  spacing: 6,
                                  children: [
                                    Icon(Icons.checkroom),
                                    Text("Breakfast"),
                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(3),
                                ),
                                padding: EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                                child: Row(
                                  spacing: 6,
                                  children: [
                                    Icon(Icons.location_on_outlined),
                                    Text("600 m"),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey[200]!,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    padding: EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 12,
                      children: [
                        Container(
                          height: 62,
                          child: Placeholder(),
                        ),
                        Gap(4),
                        Row(
                          spacing: 8,
                          children: [
                            CircleAvatar(),
                            Text("ABC Eats"),
                            Spacer(),
                            Icon(Icons.star),
                            Text("5.0"),
                            Text("(368)"),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.lime,
                              ),
                              child: Text(
                                "Best Deal",
                              ),
                            )
                          ],
                        ),
                        Row(
                          spacing: 6,
                          children: [
                            Text("Est time"),
                            Icon(Icons.access_time),
                            Text("40 - 45 min"),
                            VerticalDivider(),
                            Text("Fees"),
                            Icon(Icons.toll),
                            Text("No fees"),
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.blue[50],
                            borderRadius: BorderRadius.circular(4),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                          child: Row(
                            spacing: 4,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.sell_outlined),
                              Text("Order Over \$50, Save 30%"),
                            ],
                          ),
                        ),
                        Divider(),
                        Row(
                          spacing: 8,
                          children: [
                            CircleAvatar(),
                            Text("ABC Eats"),
                            Spacer(),
                            Icon(Icons.star),
                            Text("5.0"),
                            Text("(368)"),
                          ],
                        ),
                        Row(
                          spacing: 6,
                          children: [
                            Text("Est time"),
                            Icon(Icons.access_time),
                            Text("40 - 45 min"),
                            VerticalDivider(),
                            Text("Fees"),
                            Icon(Icons.toll),
                            Text("No fees"),
                          ],
                        ),
                        Divider(),
                        Row(
                          spacing: 8,
                          children: [
                            CircleAvatar(),
                            Text("ABC Eats"),
                            Spacer(),
                            Icon(Icons.star),
                            Text("5.0"),
                            Text("(368)"),
                          ],
                        ),
                        Row(
                          spacing: 6,
                          children: [
                            Text("Est time"),
                            Icon(Icons.access_time),
                            Text("40 - 45 min"),
                            VerticalDivider(),
                            Text("Fees"),
                            Icon(Icons.toll),
                            Text("No fees"),
                          ],
                        ),
                        Divider(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 24,
            left: 24,
            right: 24,
            child: Container(
              decoration: ShapeDecoration(
                shape: StadiumBorder(),
                color: Colors.black,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 8,
              ),
              child: Row(
                spacing: 8,
                children: [
                  CircleAvatar(
                    radius: 20,
                  ),
                  CircleAvatar(
                    radius: 20,
                  ),
                  CircleAvatar(
                    radius: 20,
                  ),
                  Spacer(),
                  Text(
                    "Order in Uber Eats",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.open_in_new,
                    ),
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
