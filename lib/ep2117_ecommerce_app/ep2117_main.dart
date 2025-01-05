import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_42/ep2117_ecommerce_app/views/e_commerce_main_page.dart';

import 'views/e_commerce_start_page.dart';

void main() {
  runApp(ECommerceApp());
}

class ECommerceApp extends StatelessWidget {
  const ECommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ECommerceStartPage(),
    );
  }
}
