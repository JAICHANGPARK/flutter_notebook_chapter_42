import 'package:flutter/material.dart';

import 'views/daily_planner_home_page.dart';

class DailyPlannerApp extends StatelessWidget {
  const DailyPlannerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DailyPlannerHomePage(),
    );
  }
}
