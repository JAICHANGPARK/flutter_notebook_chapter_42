import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_42/ep2148_language_learning_app/views/widgets/favorite_topic_widget.dart';
import 'package:gap/gap.dart';

import 'widgets/lla_text_input_widget.dart';
import 'widgets/stepper_widget.dart';

class LanguageLearningHomePage extends StatefulWidget {
  const LanguageLearningHomePage({super.key});

  @override
  State<LanguageLearningHomePage> createState() => _LanguageLearningHomePageState();
}

class _LanguageLearningHomePageState extends State<LanguageLearningHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100]!,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 12,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              height: 80,
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Welcome Dream 👋",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32),
                      color: Colors.red,
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Colors.red,
                          Colors.deepOrangeAccent,
                        ],
                      ),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.local_fire_department_outlined,
                          color: Colors.white,
                        ),
                        Gap(4),
                        Text(
                          '0',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 8),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "SPOKEN",
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            'Progress Tracker',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white,
                      )
                    ],
                  ),
                  Gap(12),
                  LearningStepperWidget(),
                ],
              ),
            ),
            Gap(2),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              child: Text(
                "Select your favorite topics",
                style: TextStyle(
                  fontSize: 13,
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Column(
                    children: [
                      FavoriteTopicWidget(),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 160,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              padding: EdgeInsets.all(12),
              child: LlaTextInputWidget(),
            )
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedItemColor: Colors.deepOrangeAccent,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.track_changes,
              ),
              label: "Review",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.speaker_phone,
              ),
              label: "Speaking",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings_outlined,
              ),
              label: "Setting",
            )
          ],
        ),
      ),
    );
  }
}
