import 'package:flutter/material.dart';

class Main_panel_card extends StatefulWidget {
  Main_panel_card({@required this.label, this.destination, this.icon});

  final String label;
  var icon;
  final String destination;

  @override
  _Main_panel_cardState createState() =>
      _Main_panel_cardState(label, destination, icon);
}

class _Main_panel_cardState extends State<Main_panel_card> {
  _Main_panel_cardState(this.label, this.destination, this.icon);

  final String label;
  var icon;
  var destination;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            icon,
            Center(
              child: Text(
                this.label,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                ),
              ),
            ),
          ],
        ),
      ),
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
