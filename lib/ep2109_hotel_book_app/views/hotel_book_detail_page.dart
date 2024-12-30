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
      backgroundColor: Color(0xFFF4F6F5),
      body: Stack(
        children: [
          Positioned.fill(
            child: SafeArea(
              child: Column(
                spacing: 16,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      spacing: 16,
                      children: [
                        CircleAvatar(
                          radius: 24,
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          child: Icon(Icons.arrow_back),
                        ),
                        Spacer(),
                        CircleAvatar(
                          radius: 24,
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          child: Icon(Icons.favorite_border),
                        ),
                        CircleAvatar(
                          radius: 24,
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          child: Icon(Icons.share),
                        ),
                      ],
                    ),
                  ),
                  Text("Starlight Haven "),
                  Row(
                    spacing: 12,
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        size: 16,
                      ),
                      Text("Greenwood, New York"),
                      Icon(
                        Icons.star,
                        size: 16,
                      ),
                      Text("4.9"),
                      Text(
                        "(2.8k)",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 48,
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
                    fontSize: 18,
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
