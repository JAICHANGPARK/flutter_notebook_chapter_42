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
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            spacing: 20,
            children: [
              Gap(8),
              Container(
                height: 52,
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
              Gap(8),
              Text("Please check your phone. We have to sent the code verification to your email."),
              Gap(24),
              Container(
                height: 64,
                color: Colors.blue,
                child: Row(
                  children: [
                    Container(
                      width: 42,
                      decoration: BoxDecoration(
                        color: Colors.greenAccent,
                      ),
                    )
                  ],
                ),
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "Resend code in ",
                    ),
                    TextSpan(
                      text: "01:29",
                    ),
                  ],
                ),
              ),
              Gap(42),
              Container(
                decoration: ShapeDecoration(
                  shape: StadiumBorder(),
                  color: Color(0xFF33BF7F),
                ),
                padding: EdgeInsets.symmetric(vertical: 12),
                child: Center(
                  child: Text(
                    "Verify",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Expanded(
                  child: GridView.builder(
                shrinkWrap: true,
                itemCount: 12,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, childAspectRatio: 1.5),
                itemBuilder: (context, index) {
                  return Placeholder();
                },
              )),
            ],
          ),
        ),
      ),
    );
  }
}
