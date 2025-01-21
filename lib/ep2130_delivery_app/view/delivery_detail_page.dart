import 'package:flutter/material.dart';

class DeliveryDetailPage extends StatefulWidget {
  const DeliveryDetailPage({super.key});

  @override
  State<DeliveryDetailPage> createState() => _DeliveryDetailPageState();
}

class _DeliveryDetailPageState extends State<DeliveryDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: SafeArea(
              child: Column(
                children: [],
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
                    radius: 24,
                  ),
                  CircleAvatar(
                    radius: 24,
                  ),
                  CircleAvatar(
                    radius: 24,
                  ),
                  Spacer(),
                  Text(
                    "Order in Uber Eats",
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.open_in_new,
                    ),
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
