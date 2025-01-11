import 'package:flutter/material.dart';

import 'views/hotel_book_home_page.dart';

class HotelBookingApp extends StatelessWidget {
  const HotelBookingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HotelBookHomePage(),
    );
  }
}
