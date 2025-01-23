import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hugeicons/hugeicons.dart';

class SalesMainPage extends StatefulWidget {
  const SalesMainPage({super.key});

  @override
  State<SalesMainPage> createState() => _SalesMainPageState();
}

class _SalesMainPageState extends State<SalesMainPage> {
  int pageNum = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: IndexedStack(
          index: pageNum,
          children: [
            Container(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(
                    left: 16,
                    right: 16,
                    bottom: 16,
                    top: 24,
                  ),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Orders",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Gap(16),
                      Row(
                        spacing: 12,
                        children: [
                          Container(
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey[100]!,
                              ),
                              borderRadius: BorderRadius.circular(2),
                            ),
                            child: Icon(Icons.swap_vert),
                          ),
                          Expanded(
                            child: Container(
                              height: 32,
                              decoration: BoxDecoration(
                                color: Colors.grey[50]!,
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.symmetric(horizontal: 2),
                                    hintText: "Search orders..."),
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey[100]!,
                              ),
                              borderRadius: BorderRadius.circular(2),
                            ),
                            child: Icon(Icons.filter_alt_outlined),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.grey[50]!,
                            ),
                            borderRadius: BorderRadius.circular(3),
                          ),
                          margin: EdgeInsets.all(12),
                          padding: EdgeInsets.all(12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            spacing: 6,
                            children: [
                              Text(
                                "Today",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 42,
                                    width: 42,
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Gap(6),
                                  Expanded(
                                    child: Column(
                                      spacing: 4,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("Time Sync Smart Watch"),
                                            Text(
                                              "Confirmed",
                                              style: TextStyle(
                                                color: Color.fromRGBO(51, 101, 128, 1),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "2 item 10:45 AM",
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.grey,
                                              ),
                                            ),
                                            Text(
                                              "#TXN_10018",
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Divider(),
                              Row(
                                children: [
                                  Container(
                                    height: 42,
                                    width: 42,
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Gap(6),
                                  Expanded(
                                    child: Column(
                                      spacing: 4,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("Time Sync Smart Watch"),
                                            Text("Confirmed"),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("2 item 10:45 AM"),
                                            Text("#TXN_10018"),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Divider(),
                              Row(
                                children: [
                                  Container(
                                    height: 42,
                                    width: 42,
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Gap(6),
                                  Expanded(
                                    child: Column(
                                      spacing: 4,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("Time Sync Smart Watch"),
                                            Text("Confirmed"),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("2 item 10:45 AM"),
                                            Text("#TXN_10018"),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.grey[50]!,
                            ),
                            borderRadius: BorderRadius.circular(3),
                          ),
                          margin: EdgeInsets.all(12),
                          padding: EdgeInsets.all(12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            spacing: 6,
                            children: [
                              Text("Today"),
                              Row(
                                children: [
                                  Container(
                                    height: 42,
                                    width: 42,
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Gap(6),
                                  Expanded(
                                    child: Column(
                                      spacing: 4,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("Time Sync Smart Watch"),
                                            Text("Confirmed"),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("2 item 10:45 AM"),
                                            Text("#TXN_10018"),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Divider(),
                              Row(
                                children: [
                                  Container(
                                    height: 42,
                                    width: 42,
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Gap(6),
                                  Expanded(
                                    child: Column(
                                      spacing: 4,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("Time Sync Smart Watch"),
                                            Text("Confirmed"),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("2 item 10:45 AM"),
                                            Text("#TXN_10018"),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Divider(),
                              Row(
                                children: [
                                  Container(
                                    height: 42,
                                    width: 42,
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Gap(6),
                                  Expanded(
                                    child: Column(
                                      spacing: 4,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("Time Sync Smart Watch"),
                                            Text("Confirmed"),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("2 item 10:45 AM"),
                                            Text("#TXN_10018"),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.grey[50]!,
                            ),
                            borderRadius: BorderRadius.circular(3),
                          ),
                          margin: EdgeInsets.all(12),
                          padding: EdgeInsets.all(12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            spacing: 6,
                            children: [
                              Text("Today"),
                              Row(
                                children: [
                                  Container(
                                    height: 42,
                                    width: 42,
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Gap(6),
                                  Expanded(
                                    child: Column(
                                      spacing: 4,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("Time Sync Smart Watch"),
                                            Text("Confirmed"),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("2 item 10:45 AM"),
                                            Text("#TXN_10018"),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Divider(),
                              Row(
                                children: [
                                  Container(
                                    height: 42,
                                    width: 42,
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Gap(6),
                                  Expanded(
                                    child: Column(
                                      spacing: 4,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("Time Sync Smart Watch"),
                                            Text("Confirmed"),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("2 item 10:45 AM"),
                                            Text("#TXN_10018"),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Divider(),
                              Row(
                                children: [
                                  Container(
                                    height: 42,
                                    width: 42,
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Gap(6),
                                  Expanded(
                                    child: Column(
                                      spacing: 4,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("Time Sync Smart Watch"),
                                            Text("Confirmed"),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("2 item 10:45 AM"),
                                            Text("#TXN_10018"),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Container(),
            Container(),
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.blueGrey,
          type: BottomNavigationBarType.fixed,
          currentIndex: pageNum,
          onTap: (idx) {
            setState(() {
              pageNum = idx;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(HugeIcons.strokeRoundedHome02),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list_alt),
              label: "Orders",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.stacked_bar_chart),
              label: "Analytics",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings",
            ),
          ],
        ),
      ),
    );
  }
}
