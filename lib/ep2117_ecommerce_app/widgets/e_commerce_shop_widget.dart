import 'package:flutter/material.dart';


class ECommerceShopWidget extends StatefulWidget {
  const ECommerceShopWidget({super.key});

  @override
  State<ECommerceShopWidget> createState() => _ECommerceShopWidgetState();
}

class _ECommerceShopWidgetState extends State<ECommerceShopWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            spacing: 16,
            children: [
              Expanded(
                child: Container(
                  height: 52,
                  // margin: EdgeInsets.symmetric(horizontal: 16),
                  padding: EdgeInsets.only(left: 8, right: 4, top: 2, bottom: 2),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey[200]!,
                    ),
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Search",
                              icon: Icon(Icons.search),
                            ),
                          )),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey[200]!,
                          ),
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.tune),
                        ),
                      )
                    ],
                  ),
                ),
              ),
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
              )
            ],
          ),
        ],
      ),
    );
  }
}

