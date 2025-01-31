import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class FoodOrderHomePage extends StatefulWidget {
  const FoodOrderHomePage({super.key});

  @override
  State<FoodOrderHomePage> createState() => _FoodOrderHomePageState();
}

class _FoodOrderHomePageState extends State<FoodOrderHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            spacing: 16,
            children: [
              Gap(24),
              Row(
                children: [
                  Container(
                    child: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
                  ),
                  Expanded(
                      child: Center(
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        spacing: 8,
                        children: [
                          Container(
                            child: Text("Dine In"),
                          ),
                          Container(
                            child: Text("Take Away"),
                          )
                        ],
                      ),
                    ),
                  )),
                  Container(
                    child: Badge(
                      child: Icon(Icons.notifications_active_outlined),
                    ),
                  ),
                ],
              ),
              Container(
                height: 92,
                child: Row(
                  spacing: 8,
                  children: [
                    Expanded(
                        child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200]!,
                      ),
                    )),
                    Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[200]!,
                          ),
                        )),
                    Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[200]!,
                          ),
                        )),
                    Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[200]!,
                          ),
                        ))
                  ],
                ),
              ),
              Container(
                height: 140,
                child: Placeholder(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
