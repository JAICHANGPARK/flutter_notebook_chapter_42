import 'package:flutter/material.dart';

class ECommerceCartPage extends StatefulWidget {
  const ECommerceCartPage({super.key});

  @override
  State<ECommerceCartPage> createState() => _ECommerceCartPageState();
}

class _ECommerceCartPageState extends State<ECommerceCartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey[200]!,
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(Icons.arrow_back),
                  ),
                ),
                Expanded(
                    child: Center(
                        child: Text(
                  "Cart",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ))),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey[200]!,
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.shopping_bag_outlined),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
