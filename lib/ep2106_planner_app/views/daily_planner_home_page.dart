import 'package:flutter/material.dart';

class DailyPlannerHomePage extends StatefulWidget {
  const DailyPlannerHomePage({super.key});

  @override
  State<DailyPlannerHomePage> createState() => _DailyPlannerHomePageState();
}

class _DailyPlannerHomePageState extends State<DailyPlannerHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[50],
      body: SafeArea(
          child: Stack(
        children: [
          Positioned.fill(
            left: 24,
            right: 24,
            child: Column(
              spacing: 16,
              children: [
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                        ),
                        shape: BoxShape.circle,
                      ),
                      padding: EdgeInsets.all(4),
                      child: Icon(
                        Icons.menu,
                        size: 18,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      )),
    );
  }
}
