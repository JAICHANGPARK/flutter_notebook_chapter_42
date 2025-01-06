import 'package:flutter/material.dart';

class ECommerceStartPage extends StatelessWidget {
  const ECommerceStartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            left: -60,
              right: -60,
              child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: .7
            ),
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(8)
                ),
              );
            },
          )),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.all(32),
              height: MediaQuery.sizeOf(context).height * 0.4,
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                spacing: 24,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Discover Luxury Like\nNever Before",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "Discover luxury fashion and iconic\ndesigner brands",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Container(
                    height: 52,
                    decoration: ShapeDecoration(
                      shape: StadiumBorder(),
                      color: Colors.black,
                    ),
                    child: Stack(
                      children: [
                        Center(
                          child: Text(
                            "Get Started",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Positioned(
                          right: 8,
                          top: 4,
                          bottom: 4,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(Icons.arrow_forward_ios),
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
