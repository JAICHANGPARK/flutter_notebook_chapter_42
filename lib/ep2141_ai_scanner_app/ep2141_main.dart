import 'package:flutter/material.dart';

import 'views/ai_scanner_main_screen.dart';

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
