import 'package:flutter/material.dart';
import 'package:restaurant_app/constants.dart';

class TotalReportsScreen extends StatefulWidget {
  static String id = 'total_reports_screen';

  @override
  _TotalReportsScreenState createState() => _TotalReportsScreenState();
}

class _TotalReportsScreenState extends State<TotalReportsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: kMainColor,
        title: Text(
          'Total Reports',
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
