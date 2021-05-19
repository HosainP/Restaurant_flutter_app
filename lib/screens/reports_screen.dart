import 'package:flutter/material.dart';
import 'package:restaurant_app/constants.dart';

class ReportsScreen extends StatefulWidget {
  static String id = 'reports_screen';

  @override
  _ReportsScreenState createState() => _ReportsScreenState();
}

class _ReportsScreenState extends State<ReportsScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kMainColor,
        title: Text(
          'this is reports screen',
          style: kAppBarTextStyle,
        ),
      ),
      body: Center(
        child: Text(
          'this is reports section',
          style: TextStyle(
            fontSize: 25.0,
          ),
        ),
      ),
    );
  }
}
