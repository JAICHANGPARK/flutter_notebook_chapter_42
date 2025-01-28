import 'package:flutter/material.dart';

class AiScannerMainScreen extends StatefulWidget {
  const AiScannerMainScreen({super.key});

  @override
  State<AiScannerMainScreen> createState() => _AiScannerMainScreenState();
}

class _AiScannerMainScreenState extends State<AiScannerMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(242, 242, 242, 1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.info_outline),
                  ),
                  Badge(
                    child: Icon(
                      Icons.notifications_none,
                    ),
                    alignment: Alignment.topLeft,
                    label: Text("5"),
                  ),
                ],
              ),
              Text("Hi Dream,"),
              Text("How can I help\nyou today?"),
            ],
          ),
        ),
      ),
    );
  }
}
