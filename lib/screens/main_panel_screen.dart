import 'package:flutter/material.dart';
import 'package:restaurant_app/components/main_panel_card.dart';
import 'package:restaurant_app/constants.dart';

class MainPanel extends StatefulWidget {
  static String id = 'main_panel_screen';

  @override
  _MainPanelState createState() => _MainPanelState();
}

class _MainPanelState extends State<MainPanel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text(
          'Main Panel',
          style: kAppBarTextStyle,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(child: Main_panel_card(label: 'food menu editor',)),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: Main_panel_card(label: 'comments manager',)),
                Expanded(child: Main_panel_card(label: 'orders',)),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: Main_panel_card(label: 'reports',)),
                Expanded(child: Main_panel_card(label: 'delivery district',)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
