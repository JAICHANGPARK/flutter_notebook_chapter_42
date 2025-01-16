import 'package:flutter/material.dart';

class HrOtpPage extends StatefulWidget {
  const HrOtpPage({super.key});

  @override
  State<HrOtpPage> createState() => _HrOtpPageState();
}

class _HrOtpPageState extends State<HrOtpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            spacing: 16,
           children: [
            Container(
              height: 52,
              color: Colors.red,
            )
           ],
          ),
        ),
      ),
    );
  }
}
