

import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_42/ep2117_ecommerce_app/views/e_commerce_cart_page.dart';

class ECommerceHomeWidget extends StatelessWidget {
  const ECommerceHomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
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
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ECommerceCartPage(),
                      ),
                    );
                  },
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
                right: 8,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.indigoAccent,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 12,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.workspace_premium),
                          Text("Opulent Savings"),
                        ],
                      ),
                      Text(
                        "Exclusive 50%",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Luxury Sale",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        decoration: ShapeDecoration(
                          shape: StadiumBorder(),
                          color: Colors.black,
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
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
                  fit: BoxFit.fitHeight,
                ),
              )
            ],
          ),
        ),
        Container(
            height: 36,
            margin: EdgeInsets.only(left: 16),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 16),
                  decoration: ShapeDecoration(
                    shape: StadiumBorder(),
                    color: Colors.black,
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Center(
                    child: Text(
                      "All",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  margin: EdgeInsets.only(right: 16),
                  decoration: ShapeDecoration(
                    shape: StadiumBorder(
                      side: BorderSide(
                        color: Colors.grey[200]!,
                      ),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Menswear",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  margin: EdgeInsets.only(right: 16),
                  decoration: ShapeDecoration(
                    shape: StadiumBorder(
                      side: BorderSide(
                        color: Colors.grey[200]!,
                      ),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Womenswear",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  margin: EdgeInsets.only(right: 16),
                  decoration: ShapeDecoration(
                    shape: StadiumBorder(
                      side: BorderSide(
                        color: Colors.grey[200]!,
                      ),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Unisex",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              ],
            )),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Recent Viewed",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text("See All"),
              )
            ],
          ),
        ),
        Container(
          height: 280,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              spacing: 16,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200]!,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.all(12),
                    child: Column(
                      spacing: 16,
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16),
                              image: DecorationImage(
                                image: NetworkImage(
                                  "",
                                ),
                              ),
                            ),
                            child: Align(
                              alignment: Alignment.topRight,
                              child: CircleAvatar(
                                backgroundColor: Colors.grey[200]!,
                                foregroundColor: Colors.red,
                                child: Icon(Icons.favorite),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          spacing: 4,
                          children: [
                            Text(
                              "Dream Owens",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            Spacer(),
                            Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 16,
                            ),
                            Text("3.5"),
                          ],
                        ),
                        Row(
                          spacing: 6,
                          children: [
                            Text(
                              "\$2445",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text("\$3445"),
                            Spacer(),
                            CircleAvatar(
                              radius: 18,
                              backgroundColor: Colors.black,
                              foregroundColor: Colors.white,
                              child: Icon(Icons.arrow_forward),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200]!,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.all(12),
                    child: Column(
                      spacing: 16,
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16),
                              image: DecorationImage(
                                image: NetworkImage(
                                  "",
                                ),
                              ),
                            ),
                            padding: EdgeInsets.all(8),
                            child: Align(
                              alignment: Alignment.topRight,
                              child: CircleAvatar(
                                backgroundColor: Colors.grey[200]!,
                                foregroundColor: Colors.red,
                                child: Icon(Icons.favorite),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          spacing: 4,
                          children: [
                            Text(
                              "Dream Owens",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            Spacer(),
                            Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 16,
                            ),
                            Text("3.5"),
                          ],
                        ),
                        Row(
                          spacing: 6,
                          children: [
                            Text(
                              "\$2445",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text("\$3445"),
                            Spacer(),
                            CircleAvatar(
                              radius: 18,
                              backgroundColor: Colors.black,
                              foregroundColor: Colors.white,
                              child: Icon(Icons.arrow_forward),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
