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
                          Text("SPOKEN"),
                          Text('Progress Tracker'),
                        ],
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white,
                      )
                    ],
                  ),
                  // SizedBox(
                  //   height: 80,
                  //   width: double.infinity,
                  //   child: Stepper(
                  //     elevation: 0,
                  //     currentStep: 0,
                  //     physics: BouncingScrollPhysics(),
                  //     controller: ScrollController(),
                  //     steps: [
                  //       Step(
                  //           title: Text("milestone"),
                  //           content: Icon(
                  //             Icons.check,
                  //           )),
                  //       Step(
                  //           title: Text("milestone"),
                  //           content: Icon(
                  //             Icons.check,
                  //           )),
                  //       Step(
                  //           title: Text("milestone"),
                  //           content: Icon(
                  //             Icons.check,
                  //           ))
                  //     ],
                  //     type: StepperType.horizontal,
                  //   ),
                  // ),
                  Gap(12),
                  Container(
                    height: 64,
                    color: Colors.blueGrey,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          right: 0,
                          child: Center(
                            child: Container(
                              height: 4,
                              color: Colors.grey,
                            ),
                          ),
                        )
                      ],
                    ),
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
