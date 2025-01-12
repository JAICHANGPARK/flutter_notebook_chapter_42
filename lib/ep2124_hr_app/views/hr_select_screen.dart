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
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 16,
          children: [
            Text(
              "Select Your Role",
            ),
            Text(
              "Select the role which suits your need",
            ),
          ],
        ),
      ),
    );
  }
}
