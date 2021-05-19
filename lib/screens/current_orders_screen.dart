import 'package:flutter/material.dart';
import 'package:restaurant_app/constants.dart';

class CurrentOrdersScreen extends StatefulWidget {
  static String id = 'current_orders_screen';

  @override
  _CurrentOrdersScreenState createState() => _CurrentOrdersScreenState();
}

class _CurrentOrdersScreenState extends State<CurrentOrdersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kMainColor,
        title: Text(
          'this is current orders screen',
          style: kAppBarTextStyle,
        ),
      ),
      body: Center(
        child: Text(
          'this is current orders section',
          style: TextStyle(
            fontSize: 25.0,
          ),
        ),
      ),
    );
  }
}
