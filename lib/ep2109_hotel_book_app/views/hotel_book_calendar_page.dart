import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HotelBookCalendarPage extends StatefulWidget {
  const HotelBookCalendarPage({super.key});

  @override
  State<HotelBookCalendarPage> createState() => _HotelBookCalendarPageState();
}

class _HotelBookCalendarPageState extends State<HotelBookCalendarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Date & Preferences"),
        leading: CircleAvatar(
          child: Icon(Icons.arrow_back),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),
        actions: [
          CircleAvatar(
            child: Icon(Icons.share),
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(color: Colors.white),
              child: Row(
                children: [
                  Text("\$325/night"),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.remove_circle_outline),
                  ),
                  Gap(8),
                  Text("1"),
                  Gap(8),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.add_circle_outline),
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
