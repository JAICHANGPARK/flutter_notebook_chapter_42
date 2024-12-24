import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class FoodRecipesDetailPage extends StatefulWidget {
  const FoodRecipesDetailPage({super.key});

  @override
  State<FoodRecipesDetailPage> createState() => _FoodRecipesDetailPageState();
}

class _FoodRecipesDetailPageState extends State<FoodRecipesDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 12,
            children: [
              Container(
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://cdn.pixabay.com/photo/2020/10/05/19/55/hamburger-5630646_1280.jpg",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                padding: EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      child: Icon(Icons.keyboard_arrow_left),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      child: Icon(Icons.shopping_cart_outlined),
                    ),
                  ],
                ),
              ),
              Text(
                "Classic Cheese burger",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    spacing: 4,
                    children: [
                      Icon(
                        Icons.star_border,
                      ),
                      Text("4.9 (862)"),
                    ],
                  ),
                  Row(
                    spacing: 4,
                    children: [
                      Icon(
                        Icons.timelapse,
                      ),
                      Text("15-40 mins"),
                    ],
                  ),
                  Row(
                    spacing: 4,
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                      ),
                      Text("1.6 km"),
                    ],
                  )
                ],
              ),
              Gap(16),
              Text(
                "Food Details",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Text(
                "A cheeseburger is a hamburger with a slice of melted cheese on top of the meat patty, added near the end of the cooking time. Cheeseburgers can include variations in structure, ingredients and composition. As with other hamburgers, a cheeseburger may include various condiments and other toppings such as lettuce, tomato, onion, pickles, bacon, avocado, mushrooms, mayonnaise, ketchup, and mustard.",
                maxLines: 3,
              ),
              Gap(12),
              Row(
                children: [
                  Text(
                    "\$50.00",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.purple[50],
                    ),
                    child: Icon(Icons.remove),
                  ),
                  Gap(8),
                  Text(
                    "1",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Gap(8),
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.deepOrange,
                    ),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Gap(12),
              Text("Burger size"),
              Row(
                spacing: 16,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.purple[50],
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                    child: Text("Small"),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.purple[50],
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                    child: Text("Medium"),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.purple[50],
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                    child: Text("Large"),
                  )
                ],
              ),
              Text("Chose addition"),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          spacing: 12,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.deepOrange,
                ),
                shape: BoxShape.circle,
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite_outline),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(color: Colors.deepOrange, borderRadius: BorderRadius.circular(8)),
                child: Center(
                  child: Text("Add to cart"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
