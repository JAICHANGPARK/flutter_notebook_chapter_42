import 'package:flutter/material.dart';

class HrSelectScreen extends StatefulWidget {
  const HrSelectScreen({super.key});

  @override
  State<HrSelectScreen> createState() => _HrSelectScreenState();
}

class _HrSelectScreenState extends State<HrSelectScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 16,
              children: [
                Text(
                  "Select Your Role",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Text(
                  "Select the role which suits your need",
                ),
                Container(
                  height: 240,

                  decoration: BoxDecoration(
                    color: Color(0xff33bf7f),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
