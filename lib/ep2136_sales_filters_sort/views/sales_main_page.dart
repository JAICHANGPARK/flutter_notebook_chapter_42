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
  String groupValue = "1";

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
                          GestureDetector(
                            onTap: () {
                              showModalBottomSheet(
                                backgroundColor: Colors.transparent,
                                context: context,
                                builder: (context) {
                                  return Container(
                                    // height: 240,
                                    margin: EdgeInsets.all(16),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 16,
                                      vertical: 16,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(24),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text("Sort"),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("Newest"),
                                            Radio(
                                              value: "1",
                                              activeColor: Color.fromRGBO(
                                                46,
                                                55,
                                                66,
                                                1,
                                              ),
                                              groupValue: groupValue,
                                              onChanged: (v) {},
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("Oldest"),
                                            Radio(
                                              value: "2",
                                              activeColor: Color.fromRGBO(
                                                46,
                                                55,
                                                66,
                                                1,
                                              ),
                                              groupValue: groupValue,
                                              onChanged: (v) {},
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("Price: High to low"),
                                            Radio(
                                              value: "3",
                                              activeColor: Color.fromRGBO(46, 55, 66, 1),
                                              groupValue: groupValue,
                                              onChanged: (v) {},
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("Price: Low to high"),
                                            Radio(
                                              value: "4",
                                              activeColor: Color.fromRGBO(46, 55, 66, 1),
                                              groupValue: groupValue,
                                              onChanged: (v) {},
                                            ),
                                          ],
                                        ),
                                        Gap(16),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Color.fromRGBO(
                                              46,
                                              55,
                                              66,
                                              1,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              6,
                                            ),
                                          ),
                                          padding: EdgeInsets.symmetric(vertical: 16),
                                          child: Center(
                                            child: Text(
                                              "Apply",
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Gap(16),
                                      ],
                                    ),
                                  );
                                },
                              );
                            },
                            child: Container(
                              padding: EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey[100]!,
                                ),
                                borderRadius: BorderRadius.circular(2),
                              ),
                              child: Icon(Icons.swap_vert),
                            ),
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
                                    contentPadding: EdgeInsets.only(
                                      bottom: 16,
                                      left: 16,
                                    ),
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
                            child: GestureDetector(
                              onTap: () {
                                showModalBottomSheet(
                                  context: context,
                                  backgroundColor: Colors.transparent,
                                  builder: (context) {
                                    return Container(
                                      margin: EdgeInsets.all(12),
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 16,
                                        vertical: 16,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(24),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 42,
                                            child: Stack(
                                              children: [
                                                Positioned(
                                                  left: 0,
                                                  child: TextButton(
                                                    onPressed: () {},
                                                    child: Text(
                                                      "Reset",
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                  child: Center(
                                                    child: Text(
                                                      "Filters",
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Gap(12),
                                          Text("Date range"),
                                          Gap(12),
                                          Row(
                                            spacing: 8,
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                      color: Colors.grey[200]!,
                                                    ),
                                                    borderRadius: BorderRadius.circular(3),
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        decoration: BoxDecoration(
                                                          color: Colors.blueGrey[50]!,
                                                        ),
                                                        padding: EdgeInsets.all(8),
                                                        child: Icon(
                                                          Icons.calendar_today,
                                                          size: 14,
                                                        ),
                                                      ),
                                                      Gap(12),
                                                      Text("28 - 01 - 2025"),
                                                      Spacer(),
                                                      Icon(
                                                        Icons.keyboard_arrow_down,
                                                        size: 14,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                      color: Colors.grey[200]!,
                                                    ),
                                                    borderRadius: BorderRadius.circular(3),
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        decoration: BoxDecoration(
                                                          color: Colors.blueGrey[50]!,
                                                        ),
                                                        padding: EdgeInsets.all(8),
                                                        child: Icon(
                                                          Icons.calendar_today,
                                                          size: 14,
                                                        ),
                                                      ),
                                                      Gap(12),
                                                      Text("28 - 01 - 2025"),
                                                      Spacer(),
                                                      Icon(
                                                        Icons.keyboard_arrow_down,
                                                        size: 14,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Gap(32),
                                          Text("Price range"),
                                          Gap(12),
                                          Row(
                                            spacing: 8,
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                      color: Colors.grey[200]!,
                                                    ),
                                                    borderRadius: BorderRadius.circular(3),
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        decoration: BoxDecoration(
                                                          color: Colors.blueGrey[50]!,
                                                        ),
                                                        padding: EdgeInsets.all(8),
                                                        child: Icon(
                                                          Icons.attach_money,
                                                          size: 14,
                                                        ),
                                                      ),
                                                      Gap(12),
                                                      Text("10"),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                      color: Colors.grey[200]!,
                                                    ),
                                                    borderRadius: BorderRadius.circular(3),
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        decoration: BoxDecoration(
                                                          color: Colors.blueGrey[50]!,
                                                        ),
                                                        padding: EdgeInsets.all(8),
                                                        child: Icon(
                                                          Icons.attach_money,
                                                          size: 14,
                                                        ),
                                                      ),
                                                      Gap(12),
                                                      Text("10"),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Gap(32),
                                          Text("Order status"),
                                          Gap(12),
                                          Container(
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.grey[200]!,
                                              ),
                                            ),
                                            padding: EdgeInsets.symmetric(vertical: 8),
                                            child: Center(
                                              child: Text(
                                                "Clear all",
                                                style: TextStyle(
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Gap(12),
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Color.fromRGBO(
                                                46,
                                                55,
                                                66,
                                                1,
                                              ),
                                              borderRadius: BorderRadius.circular(
                                                6,
                                              ),
                                            ),
                                            padding: EdgeInsets.symmetric(vertical: 16),
                                            child: Center(
                                              child: Text(
                                                "Apply (1)",
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    );
                                  },
                                );
                              },
                              child: Icon(Icons.filter_alt_outlined),
                            ),
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
                                      color: Colors.grey[300]!,
                                      borderRadius: BorderRadius.circular(4),
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
                                      color: Colors.grey[300]!,
                                      borderRadius: BorderRadius.circular(4),
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
                                      color: Colors.grey[300]!,
                                      borderRadius: BorderRadius.circular(4),
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
                                              "Shipped",
                                              style: TextStyle(
                                                color: Colors.orange,
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
                              Text(
                                "Yesterday",
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
                                      color: Colors.grey[300]!,
                                      borderRadius: BorderRadius.circular(4),
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
                                      color: Colors.grey[300]!,
                                      borderRadius: BorderRadius.circular(4),
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
                                      color: Colors.grey[300]!,
                                      borderRadius: BorderRadius.circular(4),
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
                                              "Shipped",
                                              style: TextStyle(
                                                color: Colors.orange,
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
