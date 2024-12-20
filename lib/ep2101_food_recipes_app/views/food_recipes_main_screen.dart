import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_42/ep2101_food_recipes_app/views/widgets/food_recipes_home_page.dart';
import 'package:hugeicons/hugeicons.dart';

class FoodRecipesMainScreen extends StatefulWidget {
  const FoodRecipesMainScreen({super.key});

  @override
  State<FoodRecipesMainScreen> createState() => _FoodRecipesMainScreenState();
}

class _FoodRecipesMainScreenState extends State<FoodRecipesMainScreen> {
  num pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: IndexedStack(
          index: pageIndex.toInt(),
          children: [
            FoodRecipesHomePage()
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(height: 90,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedItemColor: Colors.deepOrangeAccent,
          type: BottomNavigationBarType.fixed,
          onTap: (idx){
            setState(() {
              pageIndex = idx;
            });
          },
          currentIndex: pageIndex.toInt(),
          items: [
            BottomNavigationBarItem(
              icon: Icon(HugeIcons.strokeRoundedHome01),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list_alt),
              label: "Order",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined),
              label: "Basket",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline),
              label: "Wishlist",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}
