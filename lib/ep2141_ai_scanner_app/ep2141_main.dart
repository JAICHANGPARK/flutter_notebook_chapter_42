import 'package:flutter/material.dart';

void main() {
  runApp(AiScannerApp());
}

class AiScannerApp extends StatelessWidget {
  const AiScannerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AiScannerMainScreen(),
    );
  }
}
