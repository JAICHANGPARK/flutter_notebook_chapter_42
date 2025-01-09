import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_42/ep2117_ecommerce_app/widgets/e_commerce_home_widget.dart';
import 'package:flutter_notebook_chapter_42/ep2117_ecommerce_app/widgets/e_commerce_shop_widget.dart';

import 'e_commerce_cart_page.dart';

class ECommerceMainPage extends StatefulWidget {
  const ECommerceMainPage({super.key});

  @override
  State<ECommerceMainPage> createState() => _ECommerceMainPageState();
}

class _ECommerceMainPageState extends State<ECommerceMainPage> {
  int pageNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned.fill(
            child: SafeArea(
              child: IndexedStack(
                index: pageNumber,
                children: [
                  ECommerceHomeWidget(),
                  ECommerceShopWidget(),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 24,
            left: 0,
            right: 0,
            child: Container(
                height: 100,
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: Center(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(32),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: .1),
                          blurRadius: 16,
                          spreadRadius: 8,
                        )
                      ],
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 12,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              pageNumber = 0;
                            });
                          },
                          child: CircleAvatar(
                            backgroundColor: pageNumber == 0 ? Colors.black : Colors.white,
                            foregroundColor: pageNumber == 0 ? Colors.white : Colors.black,
                            child: Icon(Icons.home_filled),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              pageNumber = 1;
                            });
                          },
                          child: CircleAvatar(
                            backgroundColor: pageNumber == 1 ? Colors.black : Colors.white,
                            foregroundColor: pageNumber == 1 ? Colors.white : Colors.black,
                            child: Icon(Icons.store),
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          child: Icon(Icons.favorite_border),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          child: Icon(Icons.person_2_outlined),
                        )
                      ],
                    ),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
