import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HotelBookHomePage extends StatefulWidget {
  const HotelBookHomePage({super.key});

  @override
  State<HotelBookHomePage> createState() => _HotelBookHomePageState();
}

class _HotelBookHomePageState extends State<HotelBookHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        spacing: 24,
        children: [
          Container(
            height: MediaQuery.sizeOf(context).height / 1.9,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  "https://cdn.pixabay.com/photo/2017/03/27/15/17/apartment-2179337_1280.jpg",
                ),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(24),
                bottomLeft: Radius.circular(24),
              ),
            ),
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 52, left: 8, right: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        child: Icon(Icons.arrow_back),
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        child: Icon(Icons.tune),
                      )
                    ],
                  ),
                ),
                Gap(42),
                Column(
                  spacing: 8,
                  children: [
                    Text(
                      "Luxury Hotels",
                      style: TextStyle(
                        fontSize: 32,
                        color: Color.fromRGBO(15, 86, 70, 1),
                      ),
                    ),
                    Text(
                      "Book your desired luxury room\nseamlessly",
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
                Spacer(),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(32),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 9),
                  child: TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.search),
                      hintText: "Search hotels, houses, meeting rooms",
                      border: InputBorder.none,
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    height: 300,
                    margin: EdgeInsets.only(bottom: 16),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2020/10/18/09/16/bedroom-5664221_1280.jpg",
                        ),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.all(8),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topRight,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black,
                            child: Icon(
                              Icons.favorite_outline,
                            ),
                          ),
                        ),
                        Spacer(),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: EdgeInsets.all(12),
                          child: Column(
                            spacing: 8,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Starlight Lodge"),
                                  Text(
                                    "\$325/night",
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on_outlined,
                                    size: 16,
                                  ),
                                  Text("Greenwood, New York"),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    size: 16,
                                  ),
                                  Text("4.9"),
                                  Text("(2.8k)")
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
