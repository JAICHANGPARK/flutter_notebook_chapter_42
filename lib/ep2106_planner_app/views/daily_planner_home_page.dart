import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
                                  Icon(
                                    Icons.checklist,
                                    color: Colors.red,
                                  ),
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
                              Row(
                                spacing: 24,
                                children: [
                                  Column(
                                    spacing: 12,
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
                                  ),
                                  Column(
                                    spacing: 12,
                                    children: [
                                      Container(
                                        height: 72,
                                        width: 82,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(color: Colors.grey),
                                        ),
                                        padding: EdgeInsets.all(4),
                                        child: CircleAvatar(
                                          backgroundColor: Colors.orangeAccent[100],
                                        ),
                                      ),
                                      Text("Wake up ea.."),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            children: [
                              Row(
                                spacing: 16,
                                children: [
                                  Icon(
                                    Icons.home_filled,
                                    color: Colors.blue,
                                  ),
                                  Text(
                                    "Private tasks",
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
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Checkbox(value: false, onChanged: (b) {}),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 12),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        spacing: 12,
                                        children: [
                                          Text("Coding sprint"),
                                          Wrap(
                                            spacing: 8,
                                            runSpacing: 8,
                                            children: List.generate(
                                              4,
                                              (index) => Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.orangeAccent[100],
                                                  borderRadius: BorderRadius.circular(4),
                                                ),
                                                padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                                                child: Text(
                                                  "Hard",
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Row(
                                            spacing: 12,
                                            children: [
                                              Checkbox(
                                                visualDensity: VisualDensity(
                                                  vertical: VisualDensity.minimumDensity,
                                                  horizontal: VisualDensity.minimumDensity,
                                                ),
                                                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                value: false,
                                                onChanged: (v) {},
                                              ),
                                              Text(
                                                "Subtasks example",
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            children: [
                              Row(
                                spacing: 16,
                                children: [
                                  Icon(
                                    Icons.event_note_outlined,
                                    color: Colors.orangeAccent,
                                  ),
                                  Text(
                                    "Notes",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
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
                            ],
                          ),
                        ),
                        Container(
                          height: 180,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              image: DecorationImage(
                                image: NetworkImage(
                                    "https://cdn.pixabay.com/photo/2024/12/14/15/37/aurora-borealis-9267515_1280.jpg"),
                                fit: BoxFit.cover,
                              )),
                          padding: EdgeInsets.all(12),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 16,
                                top: 16,
                                child: Text(
                                  "Quotes",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            children: [
                              Row(
                                spacing: 16,
                                children: [
                                  Icon(
                                    Icons.bookmark_border,
                                    color: Colors.pinkAccent,
                                  ),
                                  Text(
                                    "Diary",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
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
                            ],
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
          Positioned(
            bottom: 16,
            left: 16,
            right: 16,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.calendar_month,
                        ),
                      ),
                      CircleAvatar(
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.calendar_month,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.explore_outlined,
                        ),
                      )
                    ],
                  ),
                ),
                Gap(32),
                CircleAvatar(
                  radius: 26,
                  backgroundColor: Colors.blueAccent,
                  foregroundColor: Colors.white,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.add),
                  ),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
