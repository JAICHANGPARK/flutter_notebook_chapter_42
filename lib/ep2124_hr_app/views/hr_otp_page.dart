import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
             Gap(12),
            Container(
              height: 52,
              color: Colors.red,
              child: Stack(
                children: [
                  Center(
                    child: Text("data"),
                  )
                ],
              ),
            )
           ],
          ),
        ),
      ),
    );
  }
}
