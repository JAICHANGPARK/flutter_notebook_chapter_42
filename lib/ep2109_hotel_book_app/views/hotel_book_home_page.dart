import 'package:flutter/material.dart';

class HotelBookHomePage extends StatefulWidget {
  const HotelBookHomePage({super.key});

  @override
  State<HotelBookHomePage> createState() => _HotelBookHomePageState();
}

class _HotelBookHomePageState extends State<HotelBookHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        spacing: 16,
        children: [
          Container(
            height: MediaQuery.sizeOf(context).height / 1.9,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  "https://cdn.pixabay.com/photo/2017/03/27/15/17/apartment-2179337_1280.jpg",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Placeholder(),
          )
        ],
      ),
    );
  }
}
