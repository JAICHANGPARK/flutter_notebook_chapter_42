import 'package:date_picker_timeline/date_picker_timeline.dart';
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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 16,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    child: Icon(Icons.arrow_back),
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                  ),
                  Expanded(child: Center(child: Text("Date & Preferences"))),
                  CircleAvatar(
                    child: Icon(Icons.share),
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                  ),
                ],
              ),
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
              ),
              Container(
                height: 400,
                color: Colors.red,
              ),
              Container(
                height: 62,
                child: Placeholder(),
              ),
              Text("Number of Guests"),
              Container(
                height: 72,
                child: Placeholder(),
              ),
              Container(
                height: 52,
                decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Center(
                  child: Text("Book Now \$325"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
