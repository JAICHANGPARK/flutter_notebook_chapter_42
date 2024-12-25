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
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      spacing: 16,
                      children: [
                        Container(
                          height: 160,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: EdgeInsets.all(12),
                          child: Column(
                            spacing: 16,
                            children: [
                              Row(
                                spacing: 16,
                                children: [
                                  Icon(Icons.checklist),
                                  Text(
                                    "Habits",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.grey,
                                      ),
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    child: Text(
                                      "0/02",
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  CircleAvatar(
                                    radius: 12,
                                    backgroundColor: Colors.blue[50],
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.blue,
                                    ),
                                  )
                                ],
                              ),
                              Expanded(
                                child: Row(
                                  spacing: 24,
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          height: 72,
                                          width: 82,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(color: Colors.cyan),
                                          ),
                                          padding: EdgeInsets.all(4),
                                          child: CircleAvatar(
                                            backgroundColor: Colors.cyan[100],
                                          ),
                                        ),
                                        Text("Drink Water"),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 120,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [Center()],
                          ),
                        ),
                        Container(
                          height: 72,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [Center()],
                          ),
                        ),
                        Container(
                          height: 140,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [Center()],
                          ),
                        ),
                        Container(
                          height: 72,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [Center()],
                          ),
                        ),
                        Container(
                          height: 140,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [Center()],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
