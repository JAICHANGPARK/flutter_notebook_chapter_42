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
                    Positioned(
                      top: 0,
                      left: 0,
                      bottom: 0,
                      child: CircleAvatar(
                        backgroundColor: Colors.grey[100],
                        child: Icon(Icons.arrow_back_ios_new_sharp),
                      ),
                    ),
                    Center(
                      child: Text(
                        "OTP Verification",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Text("Please check your phone. We have to sent the code verification to your email."),

              Container(
                height: 82,
                color: Colors.blue,
              )

            ],
          ),
        ),
      ),
    );
  }
}
