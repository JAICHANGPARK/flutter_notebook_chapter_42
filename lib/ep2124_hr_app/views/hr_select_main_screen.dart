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
      body: SafeArea(
        child: Column(
          spacing: 20,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                spacing: 12,
                children: [
                  CircleAvatar(),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Hello") ,
                        Text(
                          "Dream Walker",
                        )
                      ],
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.grey[100],
                    child: Badge(
                      child: Icon(
                        HugeIcons.strokeRoundedNotification01,
                      ),
                    ),
                  )
                ],
              ),
            ),

          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BottomNavigationBar(
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
              icon: Icon(HugeIcons.strokeRoundedUser),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}
