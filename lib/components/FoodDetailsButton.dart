import 'package:flutter/material.dart';
import 'package:restaurant_app/constants.dart';
import 'package:restaurant_app/screens/food_details_screen.dart';
import 'package:restaurant_app/objects/Food.dart';

class FoodDetailsButton extends StatefulWidget {
  FoodDetailsButton({this.food});

  Food food;

  @override
  _FoodDetailsButtonState createState() => _FoodDetailsButtonState(food: food);
}

class _FoodDetailsButtonState extends State<FoodDetailsButton> {
  _FoodDetailsButtonState({this.food});

  Food food;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      constraints: BoxConstraints.tightFor(
        width: 100.0,
        height: 25.0,
      ),
      // shape: CircleBorder(),
      fillColor: kMainColor,
      onPressed: () {
        Navigator.push( context,
          MaterialPageRoute(builder: (context) => FoodDetailsScreen(food: food,)),);
      },
      child: Text(
        'Details',
        style: TextStyle(
          color: Colors.white,
          fontSize: 15.0,
        ),
      ),
    );
  }
}
