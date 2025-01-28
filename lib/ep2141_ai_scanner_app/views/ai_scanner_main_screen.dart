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
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(
                16,
                32,
                24,
                0,
              ),
              child: Row(
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
                    label: Text("5"),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
