import 'package:flutter/material.dart';
import 'package:restaurant_app/constants.dart';

class RestaurantMenuScreen extends StatefulWidget {
  static String id = 'restaurant_menu_screen';
  @override
  _RestaurantMenuScreenState createState() => _RestaurantMenuScreenState();
}

class _RestaurantMenuScreenState extends State<RestaurantMenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'this is the menu',
          style: kAppBarTextStyle,
        ),
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: Text(
          'this is gonna be restaurant menu',
          style: TextStyle(
            fontSize: 25.0,
          ),
        ),
      ),
    );
  }
}
