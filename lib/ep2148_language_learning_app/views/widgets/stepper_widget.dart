import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class LearningStepperWidget extends StatefulWidget {
  const LearningStepperWidget({super.key});

  @override
  State<LearningStepperWidget> createState() => _LearningStepperWidgetState();
}

class _LearningStepperWidgetState extends State<LearningStepperWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      child: Stack(
        children: [
          Positioned(
            left: 24,
            right: 24,
            top: 0,
            bottom: 16,
            child: Center(
              child: Container(
                height: 6,
                color: Colors.grey[200],
              ),
            ),
          ),
          Positioned(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.deepOrangeAccent,
                      foregroundColor: Colors.white,
                      radius: 15,
                      child: Icon(
                        Icons.check,
                        size: 18,
                      ),
                    ),
                    Gap(4),
                    Text(
                      "milestone 1",
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey[200],
                      radius: 15,
                      foregroundColor: Colors.grey,
                      child: Icon(
                        Icons.lock_outline,
                        size: 12,
                      ),
                    ),
                    Gap(4),
                    Text(
                      "milestone 2",
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey[200],
                      radius: 15,
                      foregroundColor: Colors.grey,
                      child: Icon(
                        Icons.lock_outline,
                        size: 12,
                      ),
                    ),
                    Gap(4),
                    Text(
                      "milestone 2",
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey[200],
                      radius: 15,
                      foregroundColor: Colors.grey,
                      child: Icon(
                        Icons.lock_outline,
                        size: 12,
                      ),
                    ),
                    Gap(4),
                    Text(
                      "milestone 2",
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
