import 'package:flutter/material.dart';

class FoodDeliveryMainPage extends StatefulWidget {
  const FoodDeliveryMainPage({super.key});

  @override
  State<FoodDeliveryMainPage> createState() => _FoodDeliveryMainPageState();
}

class _FoodDeliveryMainPageState extends State<FoodDeliveryMainPage> {
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
                  Text(
                    "Hi Dream!",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    ),
                  ),
                  Spacer(),
                  Badge(
                    label: Text("\$20"),
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.greenAccent,
                        border: Border.all(color: Colors.teal),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.person),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: DefaultTabController(
                length: 5,
                child: Column(
                  children: [
                    TabBar(
                      indicatorColor: Colors.black,
                      indicatorSize: TabBarIndicatorSize.label,
                      isScrollable: true,
                      tabAlignment: TabAlignment.start,
                      tabs: [
                        Tab(
                          text: "Top Picks",
                        ),
                        Tab(
                          text: "Healthy",
                        ),
                        Tab(
                          text: "American",
                        ),
                        Tab(
                          text: "Fast Food",
                        ),
                        Tab(
                          text: "Fast Food",
                        ),
                      ],
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: TabBarView(
                          children: [
                            PageView(
                              scrollDirection: Axis.vertical,
                              children: [
                                Container(
                                  // color: Colors.blue,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    spacing: 12,
                                    children: [
                                      Container(
                                        height: 280,
                                        decoration: BoxDecoration(
                                          color: Colors.orange,
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(16),
                                            topRight: Radius.circular(16),
                                          ),
                                          image: DecorationImage(
                                            image: NetworkImage(
                                              "https://cdn.pixabay.com/photo/2021/10/30/12/50/woman-6754248_1280.jpg",
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              left: 16,
                                              top: 20,
                                              child: Container(
                                                height: 36,
                                                decoration: BoxDecoration(
                                                  color: Colors.white.withValues(alpha: .5),
                                                  borderRadius: BorderRadius.circular(24),
                                                ),
                                                padding: EdgeInsets.only(left: 52, right: 16),
                                                child: Center(
                                                  child: Text(
                                                    "20% OFF",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: 16,
                                              top: 16,
                                              child: CircleAvatar(
                                                radius: 22,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Expanded(
                                              child: Column(
                                            spacing: 4,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Sweet Greens",
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Text("Free Delivery"),
                                              Row(
                                                spacing: 4,
                                                children: [
                                                  ...List.generate(
                                                    5,
                                                    (i) => Icon(
                                                      Icons.star,
                                                      size: 14,
                                                      color: Colors.orange,
                                                    ),
                                                  ),
                                                  Text(
                                                    "4.8",
                                                  ),
                                                  Text("120k+ bought")
                                                ],
                                              )
                                            ],
                                          )),
                                          Column(
                                            spacing: 8,
                                            children: [
                                              IconButton(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.favorite_border,
                                                ),
                                                iconSize: 36,
                                              ),
                                              Text("40k+")
                                            ],
                                          )
                                        ],
                                      ),
                                      Divider(),
                                      SizedBox(
                                        height: 100,
                                        child: ListView.builder(
                                          itemBuilder: (context, index) {
                                            return Container(
                                              
                                            );
                                          },
                                        ),
                                      ),
                                      Divider(),
                                      Row(
                                        children: [

                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  color: Colors.blue,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    spacing: 12,
                                    children: [
                                      Container(
                                        height: 280,
                                        decoration: BoxDecoration(
                                            color: Colors.orange,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(16),
                                              topRight: Radius.circular(16),
                                            )),
                                        child: Stack(
                                          children: [],
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Expanded(
                                              child: Column(
                                            spacing: 4,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Sweet Greens",
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Text("Free Delivery"),
                                              Row(
                                                spacing: 4,
                                                children: [
                                                  ...List.generate(
                                                    5,
                                                    (i) => Icon(
                                                      Icons.star,
                                                      size: 14,
                                                      color: Colors.orange,
                                                    ),
                                                  ),
                                                  Text(
                                                    "4.8",
                                                  ),
                                                  Text("120k+ bought")
                                                ],
                                              )
                                            ],
                                          )),
                                          Column(
                                            spacing: 8,
                                            children: [
                                              IconButton(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.favorite_border,
                                                ),
                                                iconSize: 36,
                                              ),
                                              Text("40k+")
                                            ],
                                          )
                                        ],
                                      ),
                                      Divider(),
                                      SizedBox(
                                        height: 72,
                                        child: Placeholder(),
                                      ),
                                      Divider(),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Container(),
                            Container(),
                            Container(),
                            Container(),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 82,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(
                      alpha: .1,
                    ),
                    blurRadius: 3,
                    offset: Offset(0, -2),
                  )
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 4,
                    children: [
                      Icon(Icons.home_outlined),
                      Text(
                        "Home",
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 4,
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      Text(
                        "Search",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 4,
                    children: [
                      Badge(
                        child: Icon(
                          Icons.shopping_bag_outlined,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        "Favorite",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 4,
                    children: [
                      Icon(
                        Icons.person_2_outlined,
                        color: Colors.grey,
                      ),
                      Text(
                        "Profile",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
