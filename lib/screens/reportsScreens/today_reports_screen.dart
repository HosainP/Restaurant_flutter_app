import 'package:flutter/material.dart';
import 'package:restaurant_app/constants.dart';

class TodayReportsScreen extends StatefulWidget {
  static String id = 'today_reports_screen';

  @override
  _TodayReportsScreenState createState() => _TodayReportsScreenState();
}

class _TodayReportsScreenState extends State<TodayReportsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: kMainColor,
        title: Text(
          'Today Reports',
          style: kAppBarTextStyle,
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Text('this is a page'),
          )
        ],
      ),
    );
  }
}
