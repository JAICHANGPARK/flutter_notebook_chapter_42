import 'package:flutter/material.dart';

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
      body: Column(
        children: [
          Container(
            child: Row(
              children: [
                Text("\$325/night"),

              ],
            ),
          )
        ],
      ),
    );
  }
}
