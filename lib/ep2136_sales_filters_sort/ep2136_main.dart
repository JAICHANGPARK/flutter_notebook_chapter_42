import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_42/ep2136_sales_filters_sort/views/sales_main_page.dart';

void main() {
  runApp(SalesApp());
}

class SalesApp extends StatelessWidget {
  const SalesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SalesMainPage(),
    );
  }
}
