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
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 20,
            children: [
              Gap(16),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[100]!,
                          blurRadius: 3,
                          spreadRadius: 3,
                        ),
                      ],
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.menu),
                    ),
                  ),
                  Expanded(
                      child: Center(
                    child: Container(
                      height: 42,
                      decoration: ShapeDecoration(
                        shape: StadiumBorder(),
                        color: Colors.grey[100]!,
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        spacing: 8,
                        children: [
                          Container(
                            height: double.infinity,
                            padding: EdgeInsets.symmetric(
                              horizontal: 16,
                            ),
                            decoration: ShapeDecoration(
                              shape: StadiumBorder(),
                              color: Colors.white,
                            ),
                            child: Center(
                              child: Text(
                                "Dine In",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 16,
                            ),
                            child: Text("Take Away"),
                          )
                        ],
                      ),
                    ),
                  )),
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[100]!,
                          blurRadius: 3,
                          spreadRadius: 3,
                        ),
                      ],
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
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
                        child: Column(
                          spacing: 6,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.white,
                            ),
                            Text(
                              "Promo",
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[200]!,
                        ),
                        child: Column(
                          spacing: 6,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.white,
                            ),
                            Text(
                              "Promo",
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[200]!,
                        ),
                        child: Column(
                          spacing: 6,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.white,
                            ),
                            Text(
                              "Promo",
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[200]!,
                        ),
                        child: Column(
                          spacing: 6,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.white,
                            ),
                            Text(
                              "Promo",
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 140,
                child: Stack(
                  children: [
                    Positioned(
                      child: Column(
                        children: [],
                      ),
                    )
                  ],
                ),
              ),
              Text(
                "Top Rated Food",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, crossAxisSpacing: 16, mainAxisSpacing: 16, childAspectRatio: .9),
                  itemBuilder: (context, index) {
                    return Placeholder();
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
