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
              decoration: BoxDecoration(
                color: Colors.orange
              ),
            ),
          )
        ],
      ),
    );
  }
}
