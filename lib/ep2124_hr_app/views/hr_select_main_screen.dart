import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
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
            Gap(12),
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
                        Text("Hello"),
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
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                color: Colors.grey[100],
              ),
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.search),
                      border: InputBorder.none,
                      hintText: "Search Job/Company",
                    ),
                  ),
                  Divider(),
                  IntrinsicHeight(
                    child: Row(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Column(
                                children: [Text("Job Type"), Text("Full Time")],
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.keyboard_arrow_down,
                                ),
                              ),
                            ],
                          ),
                        ),
                        VerticalDivider(),
                        Expanded(
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Text("Job Type"),
                                  Text("Full Time"),
                                ],
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.keyboard_arrow_down,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: ShapeDecoration(shape: StadiumBorder()),
                  )
                ],
              ),
            )
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
