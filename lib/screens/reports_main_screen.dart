import 'package:flutter/material.dart';
import 'package:restaurant_app/components/main_panel_card.dart';
import 'package:restaurant_app/constants.dart';
import 'package:koukicons/archive.dart';
import 'package:koukicons/archive2.dart';
import 'package:koukicons/archive3.dart';
import 'package:koukicons/barChart.dart';
import 'package:restaurant_app/screens/reportsScreens/today_reports_screen.dart';
import 'package:restaurant_app/screens/reportsScreens/total_orders_screen.dart';
import 'package:restaurant_app/screens/reportsScreens/total_reports_screen.dart';

class ReportsMainScreen extends StatelessWidget {
  static String id = 'reports_main_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: kMainColor,
        title: Text(
          'Reports Main Panel',
          style: kAppBarTextStyle,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Main_panel_card(
              label: 'Total Orders',
              icon: KoukiconsBarChart(),
              destination: TotalOrdersScreen.id,
            ),
          ),
          Expanded(
            child: Main_panel_card(
              label: 'Today Reports',
              icon: KoukiconsArchive2(),
              destination: TodayReportsScreen.id,
            ),
          ),
          Expanded(
            child: Main_panel_card(
              label: 'Total Reports',
              icon: KoukiconsArchive(),
              destination: TotalReportsScreen.id,
            ),
          )
        ],
      ),
    );
  }
}
