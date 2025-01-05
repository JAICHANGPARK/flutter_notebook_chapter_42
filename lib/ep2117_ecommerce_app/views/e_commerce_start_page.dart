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
              height: MediaQuery.sizeOf(context).height * 0.4,
              decoration: BoxDecoration(color: Colors.orange),
              child: Column(
                spacing: 16,
                children: [
                  Text("Discover Luxury Like Never Before"),
                  Text("Discover luxury fashion and iconic designer brands"),
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
