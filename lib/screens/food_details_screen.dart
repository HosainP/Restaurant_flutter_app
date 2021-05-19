import 'package:flutter/material.dart';
import 'package:restaurant_app/objects/Food.dart';

class FoodDetailsScreen extends StatefulWidget {

  FoodDetailsScreen({this.food});

  static String id = 'food_details_screen';
  Food food;

  @override
  _FoodDetailsScreenState createState() => _FoodDetailsScreenState();
}

class _FoodDetailsScreenState extends State<FoodDetailsScreen> {

  _FoodDetailsScreenState({this.food});

  Food food;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

/*

User should be able to change these:

1. price
2. details
3. name
4. picture

 */
