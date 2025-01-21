import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_42/ep2130_delivery_app/model/delivery_menu.dart';
import 'package:gap/gap.dart';

class DeliveryMainPage extends StatefulWidget {
  const DeliveryMainPage({super.key});

  @override
  State<DeliveryMainPage> createState() => _DeliveryMainPageState();
}

class _DeliveryMainPageState extends State<DeliveryMainPage> {
  List<String> tabs = [
    "Best Match",
    "Fastest Delivery",
    "Free Delivery",
  ];

  List<DeliveryMenu> menus = [
    DeliveryMenu(
      emoji: "🍕",
      title: "Pizza",
    ),
    DeliveryMenu(
      emoji: "🍔",
      title: "Burgers",
    ),
    DeliveryMenu(
      emoji: "🥐",
      title: "Breakfast",
    ),
    DeliveryMenu(
      emoji: "🍝",
      title: "Italian",
    ),
    DeliveryMenu(
      emoji: "🍙",
      title: "Asian",
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          spacing: 12,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 24),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Address"),
                        Row(
                          spacing: 4,
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              size: 18,
                            ),
                            Text(
                              "Seoul, Republic of Korea",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            Icon(
                              Icons.keyboard_arrow_down,
                              size: 18,
                            )
                          ],
                        )
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
                      icon: Icon(Icons.notifications_active_outlined),
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: ShapeDecoration(
                shape: StadiumBorder(),
                color: Colors.grey[100],
              ),
              margin: EdgeInsets.symmetric(horizontal: 16),
              padding: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
              child: Row(
                children: [
                  Gap(12),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        icon: Icon(Icons.search),
                        hintText: "Search restaurants",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    child: Icon(Icons.tune),
                  ),
                ],
              ),
            ),
            Container(
              height: 42,
              padding: EdgeInsets.only(left: 16),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: tabs.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(right: 14),
                    decoration: ShapeDecoration(
                      color: index == 0 ? Colors.lightGreenAccent : Colors.white,
                      shape: StadiumBorder(
                        side: BorderSide(
                          color: Colors.grey[100]!,
                        ),
                      ),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Center(
                      child: Text(
                        tabs[index],
                        style: TextStyle(
                          fontWeight: index == 0 ? FontWeight.bold : FontWeight.normal,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 16),
                      height: 100,
                      // color: Colors.blue,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: menus.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 14),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              spacing: 4,
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Colors.blue[100],
                                  child: Text(
                                    menus[index].emoji ?? "",
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                Text(
                                  menus[index].title ?? "",
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: (){
                              
                            },
                            child: Container(
                              margin: EdgeInsets.only(bottom: 12),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: Colors.grey[100]!,
                                ),
                              ),
                              padding: EdgeInsets.all(12),
                              child: Column(
                                spacing: 8,
                                children: [
                                  Row(
                                    spacing: 4,
                                    children: [
                                      Column(
                                        spacing: 8,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Liberty Grill",
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.egg_alt_outlined,
                                                size: 16,
                                              ),
                                              Text(
                                                "Breakfast",
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                padding: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                    color: Colors.grey[100]!,
                                                  ),
                                                ),
                                                child: Row(
                                                  spacing: 6,
                                                  children: [
                                                    Icon(
                                                      Icons.star,
                                                      size: 18,
                                                    ),
                                                    Text("5.0")
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                padding: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                    color: Colors.grey[100]!,
                                                  ),
                                                ),
                                                child: Row(
                                                  spacing: 6,
                                                  children: [
                                                    Icon(
                                                      Icons.location_on_outlined,
                                                      size: 18,
                                                    ),
                                                    Text("600 m")
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      Container(
                                        height: 100,
                                        width: 140,
                                        decoration: BoxDecoration(
                                          color: Colors.grey,
                                          borderRadius: BorderRadius.circular(12),
                                          image: DecorationImage(
                                            image: NetworkImage(
                                              "https://cdn.pixabay.com/photo/2021/11/01/15/52/spring-roll-6760871_1280.jpg",
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        padding: EdgeInsets.all(4),
                                        child: Stack(
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                color: Colors.lightGreenAccent,
                                                borderRadius: BorderRadius.circular(4),
                                              ),
                                              padding: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                                              child: Text(
                                                "Best match",
                                              ),
                                            ),

                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  Container(
                                    height: 36,
                                    decoration: ShapeDecoration(
                                      shape: StadiumBorder(),
                                      color: Colors.blue[50],
                                    ),
                                    padding: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                                    child: Row(
                                      spacing: 8,
                                      children: [
                                        Container(
                                          decoration: ShapeDecoration(
                                            shape: StadiumBorder(),
                                            color: Colors.blue,
                                          ),
                                          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                          child: Text(
                                            "Walt",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        Spacer(),
                                        Icon(
                                          Icons.access_time,
                                          size: 18,
                                        ),
                                        Text("40 - 45 min"),
                                        VerticalDivider(
                                          indent: 4,
                                          endIndent: 4,
                                        ),
                                        Icon(
                                          Icons.toll,
                                          size: 18,
                                        ),
                                        Text("No fee"),
                                        Gap(4),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 36,
                                    decoration: ShapeDecoration(
                                      shape: StadiumBorder(),
                                      color: Colors.blue[50],
                                    ),
                                    padding: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                                    child: Row(
                                      spacing: 8,
                                      children: [
                                        Container(
                                          decoration: ShapeDecoration(
                                            shape: StadiumBorder(),
                                            color: Colors.blue,
                                          ),
                                          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                          child: Text(
                                            "Walt",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        Spacer(),
                                        Icon(
                                          Icons.access_time,
                                          size: 18,
                                        ),
                                        Text("40 - 45 min"),
                                        VerticalDivider(
                                          indent: 4,
                                          endIndent: 4,
                                        ),
                                        Icon(
                                          Icons.toll,
                                          size: 18,
                                        ),
                                        Text("No fee"),
                                        Gap(4),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 36,
                                    decoration: ShapeDecoration(
                                      shape: StadiumBorder(),
                                      color: Colors.blue[50],
                                    ),
                                    padding: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                                    child: Row(
                                      spacing: 8,
                                      children: [
                                        Container(
                                          decoration: ShapeDecoration(
                                            shape: StadiumBorder(),
                                            color: Colors.blue,
                                          ),
                                          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                          child: Text(
                                            "Walt",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        Spacer(),
                                        Icon(
                                          Icons.access_time,
                                          size: 18,
                                        ),
                                        Text("40 - 45 min"),
                                        VerticalDivider(
                                          indent: 4,
                                          endIndent: 4,
                                        ),
                                        Icon(
                                          Icons.toll,
                                          size: 18,
                                        ),
                                        Text("No fee"),
                                        Gap(4),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
