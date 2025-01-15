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
      resizeToAvoidBottomInset: false,
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
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
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
            Gap(1),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey[200]!,
                ),
                color: Colors.grey[50],
                borderRadius: BorderRadius.circular(6),
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Gap(8),
                                  Text("Job Type"),
                                  Text(
                                    "Full Time",
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Gap(8),
                                  Text("Location"),
                                  Text(
                                    "Remote",
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
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
                  Gap(32),
                  Container(
                    decoration: ShapeDecoration(
                      shape: StadiumBorder(),
                      color: Color(0xFF33BF7F),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 12),
                    child: Center(
                      child: Text(
                        "Find Job",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Best Matches",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text("See All"),
                ],
              ),
            ),
            Container(
                height: 300,
                padding: EdgeInsets.only(left: 16),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 320,
                      margin: EdgeInsets.only(right: 16),
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: Colors.grey[200]!,
                        ),
                      ),
                      child: Column(
                        spacing: 8,
                        children: [
                          Row(
                            spacing: 8,
                            children: [
                              Container(
                                height: 52,
                                width: 52,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.grey[200]!,
                                  ),
                                ),
                              ),
                              Expanded(
                                  child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                spacing: 8,
                                children: [Text("Product Designer"), Text("ABCDEF . New York")],
                              )),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.bookmark_border,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    );
                  },
                )),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Most Recent",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text("See All"),
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
