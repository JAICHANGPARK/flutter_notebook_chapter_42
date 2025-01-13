import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class HrSelectMainScreen extends StatefulWidget {
  const HrSelectMainScreen({super.key});

  @override
  State<HrSelectMainScreen> createState() => _HrSelectMainScreenState();
}

class _HrSelectMainScreenState extends State<HrSelectMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xFF33BF7F),
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(HugeIcons.strokeRoundedHome01),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(HugeIcons.strokeRoundedBookmark01),
            label: "Save",
          ),
          BottomNavigationBarItem(
            icon: Icon(HugeIcons.strokeRoundedCheckList),
            label: "Summary",
          ),
          BottomNavigationBarItem(
            icon: Icon(HugeIcons.strokeRoundedProfile),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
