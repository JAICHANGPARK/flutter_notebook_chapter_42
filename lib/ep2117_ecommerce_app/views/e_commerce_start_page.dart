import 'package:flutter/material.dart';

class ECommerceStartPage extends StatelessWidget {
  const ECommerceStartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Placeholder(),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.all(32),
              height: MediaQuery.sizeOf(context).height * 0.4,
              decoration: BoxDecoration(color: Colors.orange),
              child: Column(
                spacing: 16,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Discover Luxury Like\nNever Before"),
                  Text("Discover luxury fashion and iconic\ndesigner brands"),
                  Container(
                    height: 42,
                    decoration: ShapeDecoration(
                      shape: StadiumBorder(),
                      color: Colors.black,
                    ),
                    child: Stack(
                      children: [
                        Center(
                          child: Text(
                            "Get Started",
                          ),
                        ),
                        Positioned(
                          right: 8,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
