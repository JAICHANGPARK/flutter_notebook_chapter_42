import 'package:flutter/material.dart';

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
            children: [
              Row(
                children: [
                  Container(
                    child: IconButton(onPressed: (){}, icon: Icon(Icons.menu)),
                  ),
                  Expanded(child: Center(
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
                    child: Badge(child: Icon(Icons.notifications_active_outlined),),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
