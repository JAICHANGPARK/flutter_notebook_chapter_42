import 'package:flutter/material.dart';

class DeliveryMainPage extends StatefulWidget {
  const DeliveryMainPage({super.key});

  @override
  State<DeliveryMainPage> createState() => _DeliveryMainPageState();
}

class _DeliveryMainPageState extends State<DeliveryMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          spacing: 12,
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Address"),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                          ),
                          Text("Seoul, Republic of Korea"),
                          Icon(
                            Icons.keyboard_arrow_down,
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
            )
          ],
        ),
      ),
    );
  }
}