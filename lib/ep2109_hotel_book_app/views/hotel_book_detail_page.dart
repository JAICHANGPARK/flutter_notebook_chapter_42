import 'package:flutter/material.dart';

class HotelBookDetailPage extends StatefulWidget {
  const HotelBookDetailPage({super.key});

  @override
  State<HotelBookDetailPage> createState() => _HotelBookDetailPageState();
}

class _HotelBookDetailPageState extends State<HotelBookDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Column(
              children: [],
            ),
          ),
          Positioned(
            bottom: 24,
            left: 24,
            right: 24,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32),
                color: Color.fromRGBO(15, 86, 70, 1),
              ),
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Center(
                child: Text(
                  "Next  \$325",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize:18,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
