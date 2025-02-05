import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: Colors.white,

              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Text("SPOKEN"),
                          Text('Progress Tracker'),
                        ],
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white,
                      )
                    ],
                  )

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
