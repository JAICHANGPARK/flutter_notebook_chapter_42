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
          children: [],
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
          ),
          BottomNavigationBarItem(
            icon: Icon(HugeIcons.strokeRoundedHome02),
          ),
        ],
      ),
    );
  }
}
