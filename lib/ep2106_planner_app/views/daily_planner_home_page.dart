import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';

class DailyPlannerHomePage extends StatefulWidget {
  const DailyPlannerHomePage({super.key});

  @override
  State<DailyPlannerHomePage> createState() => _DailyPlannerHomePageState();
}

class _DailyPlannerHomePageState extends State<DailyPlannerHomePage> {
  DateTime _selectedValue = DateTime.now();
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                        ),
                        shape: BoxShape.circle,
                      ),
                      padding: EdgeInsets.all(4),
                      child: Icon(
                        Icons.more_horiz,
                        size: 18,
                      ),
                    ),
                  ],
                ),
                DatePicker(
                  DateTime.now(),
                  height: 100,
                  initialSelectedDate: DateTime.now(),
                  selectionColor: Colors.blueAccent,
                  selectedTextColor: Colors.white,
                  onDateChange: (date) {
                    // New date selected
                    setState(() {
                      _selectedValue = date;
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
