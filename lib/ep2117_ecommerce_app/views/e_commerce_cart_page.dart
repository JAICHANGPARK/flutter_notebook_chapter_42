import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
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
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  Positioned.fill(
                    left: 16,
                    right: 16,
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return Placeholder();
                      },
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                      ),
                      padding: EdgeInsets.all(20),
                      child: Column(
                        spacing: 14,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: TextField(),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 3),
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(32),
                                  ),
                                  child: Text(
                                    "Apply",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Order Amount"),
                              Text("\$2445.00"),
                            ],
                          ),
                          Divider(),
                          Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Order Amount"),
                              Text("\$2445.00"),
                            ],
                          ),
                          Divider(),
                          Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Order Amount"),
                              Text("\$2445.00"),
                            ],
                          ),
                          Gap(12),
                          Container(
                            decoration: ShapeDecoration(
                              shape: StadiumBorder(),
                              color: Colors.black,
                            ),
                            padding: EdgeInsets.symmetric(vertical: 12, ),
                            child: Center(
                              child: Text(
                                "Checkout",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
