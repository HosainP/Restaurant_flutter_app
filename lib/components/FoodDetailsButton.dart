import 'package:flutter/material.dart';
import 'package:restaurant_app/constants.dart';

class FoodDetailsButton extends StatefulWidget {
  @override
  _FoodDetailsButtonState createState() => _FoodDetailsButtonState();
}

class _FoodDetailsButtonState extends State<FoodDetailsButton> {
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
        Navigator.pushNamed(context, 'destination'); //TODO
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

