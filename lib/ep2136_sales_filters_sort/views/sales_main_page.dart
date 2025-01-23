import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class SalesMainPage extends StatefulWidget {
  const SalesMainPage({super.key});

  @override
  State<SalesMainPage> createState() => _SalesMainPageState();
}

class _SalesMainPageState extends State<SalesMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(

              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Text("Orders"),
                ],
              ),
            ),

          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
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
    );
  }
}
