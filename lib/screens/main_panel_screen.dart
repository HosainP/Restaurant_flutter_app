import 'package:flutter/material.dart';
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
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text('Main Panel', style: kAppBarTextStyle,),
      ),
      body: ListView(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 250.0, left: 20.0, right: 20.0),
              child: Text(
                'restaurant main panel is going to be here.',
                style: TextStyle(
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
