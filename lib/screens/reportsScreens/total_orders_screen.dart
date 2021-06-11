import 'package:flutter/material.dart';
import 'package:restaurant_app/constants.dart';

class TotalOrdersScreen extends StatefulWidget {
  static String id = 'total_orders_screen';

  @override
  _TotalOrdersScreenState createState() => _TotalOrdersScreenState();
}

class _TotalOrdersScreenState extends State<TotalOrdersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: kMainColor,
        title: Text(
          'Total Orders',
          style: kAppBarTextStyle,
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Text(
                'this is a page'
            ),
          )
        ],
      ),
    );
  }
}
