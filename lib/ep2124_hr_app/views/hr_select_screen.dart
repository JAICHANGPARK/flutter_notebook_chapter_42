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
          padding: const EdgeInsets.all(24.0),
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
                    fontSize: 24,
                  ),
                ),
                Text(
                  "Select the role which suits your need",
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) {
                        return HrSelectMainScreen();
                      },
                    ));
                  },
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                      color: Color(0x2233bf7f),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Text(
                        "Find a Job",
                        style: TextStyle(
                          color: Color(0xff33bf7f),
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    color: Color(0x221d8ff8),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Text(
                      "Job provider",
                      style: TextStyle(
                        color: Color(0xff1d8ff8),
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
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
