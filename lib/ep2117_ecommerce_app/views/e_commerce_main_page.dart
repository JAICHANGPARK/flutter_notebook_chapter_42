import 'package:flutter/material.dart';

class ECommerceMainPage extends StatefulWidget {
  const ECommerceMainPage({super.key});

  @override
  State<ECommerceMainPage> createState() => _ECommerceMainPageState();
}

class _ECommerceMainPageState extends State<ECommerceMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          spacing: 16,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                spacing: 16,
                children: [
                  CircleAvatar(
                    radius: 22,
                  ),
                  Expanded(
                    child: Column(
                      spacing: 4,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Hello Dream"),
                        Text("Welcome to Store"),
                      ],
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
                      icon: Icon(Icons.notifications_none),
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
            ),
            Container(
              height: 52,
              margin: EdgeInsets.symmetric(horizontal: 16),
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
            Container(
              height: 200,
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: Stack(
                children: [
                  Positioned.fill(
                    top: 24,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.indigoAccent,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.workspace_premium),
                              Text("Opulent Savings"),
                            ],
                          ),
                          Text("Exclusive 50%"),
                          Text("Luxury Sale"),
                          Container(
                            decoration: ShapeDecoration(
                              shape: StadiumBorder(),
                              color: Colors.black,
                            ),
                            child: Text(
                              "Shop Now",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    top: 0,
                    bottom: 0,
                    child: Image.network(
                      width: 160,
                      "https://cdn.pixabay.com/photo/2015/12/02/20/45/shopping-1073449_1280.png",
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 52,
              margin: EdgeInsets.only(left: 16),
              child: Placeholder(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recent Viewed",
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text("See All"),
                  )
                ],
              ),
            ),
            Expanded(
                child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                    child: Placeholder(),
                  )),
                  Expanded(
                      child: Container(
                    child: Placeholder(),
                  ))
                ],
              ),
            )),
            Container(
              height: 100,
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: Placeholder(),
            )
          ],
        ),
      ),
    );
  }
}
